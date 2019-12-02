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
        List<BaoXianDingDan> u = us.selectBXDD(uid);
        //查询登录用户信息
        User user =us.selectUser(uid);
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


    BaoDanXinXi bdxx=new BaoDanXinXi();
    bdxx.setBxddid(bxddid);
    bdxx.setUid(1001);
    BaoDanXinXi nb =us.selectBaoDan(bdxx);
    model.addAttribute("nb",nb);


    System.out.println("测试111111111111");
        return "确认保单详细";
    }




}
