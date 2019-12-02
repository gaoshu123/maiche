package com.gaoshu.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by 刘炳杰 on 2019/12/2.
 */
@Data
public class BaoDanXinXi implements Serializable {
    //保险订单
    private Integer bxddid; //保险订单ID  订单号 ······
    private Double bxddzj;  //保险订单总价······//最后计算价格用
    //询价明细
    private String tbcs;    //投保城市······
    //保险公司
    private String gsmc;    //保险公司名称······
    //车辆信息
    private String cph;     //车牌号  ······
    private String fdjh;    //发动机号······
    private String zcrq;    //注册日期 ······
    private String clss;    //车辆所属 ······
    private String clsbm;   //车辆识别码······
    private String cllx;    //车辆类型······
    private String rylx;    //燃油类型······
    private String sfgh;    //是否过户······
    private String szcs;    //上证城市······
    //品牌型号
    private String pp;      //品牌名   ······
    private String mc;      //品牌车型······
    private String xh;      //型号······
    private String cx;      //车型······
    //用户信息
    private Integer uid;    //用户ID
    private String realname;//车主姓名······
    private String mobile;//手机号······
    private String sfzh;//身份证······
    private String email; //邮箱······




}
