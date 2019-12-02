package com.gaoshu.service;

import com.gaoshu.pojo.*;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
public interface UserSelectBaoXian {

    //查询所有保险订单
    public List<BaoXianDingDan> selectAllBaoXian();

    //根据用户ID查询保险订单
    public List<BaoXianDingDan>  selectBXDD(User uid);

    //根据用户ID查询用户信息
    public User selectUser(User uid);

    //根据用户ID查询保险公司信息
    public BaoXianGongSi selectBaoXianGS(BaoXianDingDan bxddid);


    //根据订单查询险种信息
    public List<XianZhong> selectXianZhong(BaoXianDingDan bxddid);

    //保单详情
    public  BaoDanXinXi selectBaoDan(BaoDanXinXi bdxx);

}
