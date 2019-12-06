package com.gaoshu.service;

import com.gaoshu.pojo.*;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
public interface UserSelectBaoXian {

    //查询所有保险订单
    //public List<BaoXianDingDan> selectAllBaoXian();

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

    //根据订单号查询交强险，车船税，商业险
    public List<XianZhong> selectXianZhongByDdid(Integer bxddid);


    //除了交强险，车船险，商业险其他全查。
    public List<XianZhong> notLikeSelectXZ(Integer bxddid);

    //除了3险之外的总费用
    public XianZhong selectSumZfy(Integer bxddid);

    //除了3险之外，查询不计免赔的有哪些
    public List<XianZhong>  selectMianPei(Integer bxddid);


    //所有缴纳险种的总费用
    public XianZhong selectZj(Integer bxddid);
}
