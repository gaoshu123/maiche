package com.gaoshu.mapper;

import com.gaoshu.pojo.*;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
public interface BaoXianMapper extends Mapper<BaoXianDingDan> {

    //根据用户id查询订单
    @Select("select * from baoxiandingdan where uid=#{uid}")
    public List<BaoXianDingDan> selectBXDD(User uid);

    //根据用户ID查询用户的详细信息
    @Select("select * from User where uid=#{uid}")
    public User selectUser(User uid);

    //根据用户ID查询保险公司信息
    @Select("SELECT b.* FROM baoxiangongsi b WHERE gsid=(SELECT gsid FROM xunjiamingxi WHERE bxddid=#{bxddid})")
    public BaoXianGongSi selectBaoXianGS(BaoXianDingDan uid);

    //根据订单查询车辆信息
    @Select("SELECT b.* FROM cheliangxinxi b WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid}) ")
    public List<CheLiangXinXi> selectChePaiHao(BaoXianDingDan bxddid);


    //根据订单查询险种信息
    @Select("SELECT * FROM xianzhong WHERE bxddid=#{bxddid}")
    public List<XianZhong> selectXianZhong(BaoXianDingDan bxddid);


    //订单详情表(除了险种全查)
    @Select("SELECT  x.tbcs,b.bxddid,b.bxddzj,a.gsmc,c.cph,c.fdjh,c.zcrq,c.clss,c.clsbm,c.cllx,c.rylx,c.sfgh,c.szcs,pp.pp,pp.mc,pp.xh,pp.cx,us.realname,us.mobile,us.sfzh,us.email,COUNT(DISTINCT b.uid)FROM xunjiamingxi X,(SELECT * FROM baoxiandingdan  WHERE uid=#{uid})b,(SELECT * FROM baoxiangongsi WHERE gsid=(SELECT gsid FROM xunjiamingxi WHERE bxddid=#{bxddid}))a,(SELECT * FROM cheliangxinxi WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid}))c,(SELECT * FROM USER WHERE uid=#{uid})us,(SELECT * FROM pinpaixinghao  WHERE ppxhid=(SELECT ppxhid FROM cheliangxinxi WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid})))pp WHERE x.bxddid=b.bxddid")
    public  BaoDanXinXi selectBaoDan(BaoDanXinXi bdxx);

}
