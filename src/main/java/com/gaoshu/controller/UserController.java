package com.gaoshu.controller;

import com.gaoshu.pojo.*;
import com.gaoshu.service.CheLiang;
import com.gaoshu.service.UserSelectBaoXian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


/**
 *
 */

@Controller
public class UserController {
    @Autowired
    private UserSelectBaoXian us;
    @Autowired
    private CheLiang cl;

    @GetMapping
    public String login(){
        return "login";
    }



    //保险订单页查询所有订单
    /*@RequestMapping("/selectAllBaoXian.do")
    public String selectAllBaoXian(Model model){
        List<BaoXianDingDan> u =us.selectAllBaoXian();
        model.addAttribute("u",u);
        return "保险订单";
    }*/



     //session留着等有了登录用户的时候在使用

    @RequestMapping("/selectBaoXianDingDan.do")
    public String selectBaoXianDingDan(Model model, HttpSession session){
        //暂时先模拟用户的ID是1001
        User uid=new User();
        uid.setUid(1001);

        BaoXianDingDan bxddid=new BaoXianDingDan();
        bxddid.setBxddid(2147483647);
        //查询保险订单表
        List<BaoXianDingDan> u = us.selectBXDD(uid);    //查出2条信息
        //查询登录用户信息
        User user =us.selectUser(uid);





        //1.根据用户ID查询有几个订单号
        //2.以下每个方法都传入订单号的集合
        //3.全部返回值都是一个集合，保险公司也是

                        //以下3个订单号都是同一个，所以数据不对，应该存入个集合
        //查询保险公司    也应该用订单号来查询
        BaoXianGongSi bgs =us.selectBaoXianGS(bxddid);
        //查询车辆信息
        List<CheLiangXinXi> cars=cl.selectChePaiHao(bxddid);
        //根据订单号查询险种
        List<XianZhong> xz =us.selectXianZhong(bxddid);




        //存储险种信息
        model.addAttribute("xz",xz);
        //存储车辆信息
        model.addAttribute("cars",cars);
        //保险公司信息
        model.addAttribute("bxgs",bgs);
        //保险订单集合
        model.addAttribute("u",u);
        //登录用户信息
        model.addAttribute("users",user);







      return "保险订单";
    }

    //查看保单详细
    @RequestMapping("/selectBaoDan.do")
    public String selectBaoDan(Model model,Integer bxddid){
        //创建一个对象来接收bxddid
        BaoDanXinXi bdxx=new BaoDanXinXi();
        //把baddid存入对象
        bdxx.setBxddid(bxddid);
        //把用户ID存入对象 查询需要用，用户id应该是从session中取
        bdxx.setUid(1001);
        //调用方法，获得除了险种以外的表单信息
        BaoDanXinXi nb =us.selectBaoDan(bdxx);
        model.addAttribute("nb",nb);
        //传入订单号获得3个险种信息
        List<XianZhong> xz =us.selectXianZhongByDdid(bxddid);
        model.addAttribute("xz",xz);
        //传入订单号，除了3个险种其他全查
        List<XianZhong> nx= us.notLikeSelectXZ(bxddid);
        model.addAttribute("nx",nx);
        //查询除了3险之外的总费用
        XianZhong zfy =us.selectSumZfy(bxddid);
        model.addAttribute("zongjia",zfy);
        //除了3险之外，查询不计免赔的有哪些
        List<XianZhong> bjmp = us.selectMianPei(bxddid);
        model.addAttribute("bjmp",bjmp);
        //计算所有(包含3险)险种的总费用
        XianZhong zj = us.selectZj(bxddid);
        model.addAttribute("zje",zj);


        System.out.println("测试111111111111");
        return "确认保单详细";
    }


    //确认购买，根据订单号修改订单状态
    @RequestMapping("/updateDingDanZhuangTai.do")
    public String updateDingDanZhuangTai(Integer bxddid){


        return "保单认证";
    }





}
