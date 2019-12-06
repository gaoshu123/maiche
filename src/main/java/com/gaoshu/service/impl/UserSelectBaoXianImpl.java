package com.gaoshu.service.impl;

import com.gaoshu.pojo.*;
import com.gaoshu.mapper.BaoXianMapper;
import com.gaoshu.service.UserSelectBaoXian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
@Service    //创建对象
@Transactional  //事务管理
public class UserSelectBaoXianImpl implements UserSelectBaoXian {
    @Autowired
    private BaoXianMapper bxm;
    //查询所有保险订单
   /* public List<BaoXianDingDan> selectAllBaoXian(){
        System.out.println("1");
        return bxm.selectAll();
    }*/

    //根据ID查询保险订单
    public List<BaoXianDingDan>  selectBXDD(User uid){
      return  bxm.selectBXDD(uid);
    }


    //根据用户ID查询用户信息
    public User selectUser(User uid){
        return bxm.selectUser(uid);
    }

    //根据用户ID查询保险公司信息
    public BaoXianGongSi selectBaoXianGS(BaoXianDingDan bxddid){
        System.out.println("到Impl层了");
        return bxm.selectBaoXianGS(bxddid);
    }

    //根据订单查询险种信息
    public List<XianZhong> selectXianZhong(BaoXianDingDan bxddid){
        return bxm.selectXianZhong(bxddid);
    }

    //保单详情
    public  BaoDanXinXi selectBaoDan(BaoDanXinXi bdxx){
        return bxm.selectBaoDan(bdxx);
    }


    //根据订单号查询交强险，车船税，商业险
    public List<XianZhong> selectXianZhongByDdid(Integer bxddid){
        return bxm.selectXianZhongByDdid(bxddid);
    }

    //除了交强险，车船险，商业险其他全查。
    public List<XianZhong> notLikeSelectXZ(Integer bxddid){

        return bxm.notLikeSelectXZ(bxddid);
    }


    //除了3险之外的总费用
    public XianZhong selectSumZfy(Integer bxddid){
        return bxm.selectSumZfy(bxddid);
    }

    //除了3险之外，查询不计免赔的有哪些
    public List<XianZhong>  selectMianPei(Integer bxddid){
        return bxm.selectMianPei(bxddid);
    }


    //所有缴纳险种的总费用
    public XianZhong selectZj(Integer bxddid){
        return bxm.selectZj(bxddid);
    }

}
