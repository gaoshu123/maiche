package com.gaoshu.mapper;

import com.gaoshu.pojo.*;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
public interface BaoXianMapper{



    //根据用户id查询订单
    @Select("select * from baoxiandingdan where uid=#{uid}")
    public List<BaoXianDingDan> selectBXDD(User uid);

    //根据用户ID查询用户的详细信息
    @Select("select * from User where uid=#{uid}")
    public User selectUser(User uid);

    //根据用户ID查询保险公司信息
    /*@Select("SELECT b.* FROM baoxiangongsi b WHERE gsid=(SELECT gsid FROM xunjiamingxi WHERE bxddid=#{bxddid})")*/
    public BaoXianGongSi selectBaoXianGS(BaoXianDingDan bxddid);

    //根据订单查询车辆信息
    @Select("SELECT b.* FROM cheliangxinxi b WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid}) ")
    public List<CheLiangXinXi> selectChePaiHao(BaoXianDingDan bxddid);


    //根据订单查询险种信息
    @Select("SELECT * FROM xianzhong WHERE bxddid=#{bxddid} and istrue=1")
    public List<XianZhong> selectXianZhong(BaoXianDingDan bxddid);


    //订单详情表(除了险种全查)
    @Select("SELECT  x.tbcs,b.bxddid,b.bxddzj,a.gsmc,c.cph,c.fdjh,c.zcrq,c.clss,c.clsbm,c.cllx,c.rylx,c.sfgh,c.szcs,pp.pp,pp.mc,pp.xh,pp.cx,us.realname,us.mobile,us.sfzh,us.email,COUNT(DISTINCT b.uid)FROM xunjiamingxi X,(SELECT * FROM baoxiandingdan  WHERE uid=#{uid})b,(SELECT * FROM baoxiangongsi WHERE gsid=(SELECT gsid FROM xunjiamingxi WHERE bxddid=#{bxddid}))a,(SELECT * FROM cheliangxinxi WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid}))c,(SELECT * FROM USER WHERE uid=#{uid})us,(SELECT * FROM pinpaixinghao  WHERE ppxhid=(SELECT ppxhid FROM cheliangxinxi WHERE cpid=(SELECT cpid FROM xunjiamingxi WHERE bxddid=#{bxddid})))pp WHERE x.bxddid=b.bxddid")
    public  BaoDanXinXi selectBaoDan(BaoDanXinXi bdxx);

    //根据订单号查询交强险，车船险，商业险
    @Select("SELECT * FROM xianzhong WHERE xzmc IN('车船税','商业险','交强险') AND bxddid=#{bxddid}")
    public List<XianZhong>selectXianZhongByDdid(Integer bxddid);


    //除了交强险，车船险，商业险其他全查。
    @Select("SELECT * FROM xianzhong WHERE bxddid=#{bxddid} AND xzmc NOT LIKE ('%交强险%') AND xzmc NOT LIKE ('%商业险%') AND xzmc NOT LIKE ('%车船税%')AND istrue=1")
    public List<XianZhong> notLikeSelectXZ(Integer bxddid);


    //除了3险之外,并且要投保的总费用
    @Select("SELECT SUM(n.bxje)zbf FROM (SELECT * FROM xianzhong WHERE bxddid=#{bxddid} AND xzmc NOT LIKE ('%交强险%') AND xzmc NOT LIKE ('%商业险%') AND xzmc NOT LIKE ('%车船税%')AND istrue=1)n")
    public XianZhong selectSumZfy(Integer bxddid);

    //除了3险之外，查询不计免赔的有哪些
    @Select("SELECT n.xzmc FROM (SELECT * FROM xianzhong WHERE bxddid=#{bxddid} AND xzmc NOT LIKE ('%交强险%') AND xzmc NOT LIKE ('%商业险%') AND xzmc NOT LIKE ('%车船税%'))n WHERE n.bjmp=1 AND n.istrue=1")
    public List<XianZhong>  selectMianPei(Integer bxddid);

    //所有缴纳险种的总费用
    @Select("SELECT SUM(bxje)zj FROM xianzhong WHERE bxddid=#{bxddid} AND istrue=1")
    public XianZhong selectZj(Integer bxddid);

}
