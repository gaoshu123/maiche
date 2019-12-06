package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by 刘炳杰 on 2019/12/1.
 */
@Data
@Table(name="xianzhong")
public class XianZhong implements Serializable {
    private Integer xzid;       //险种ID
    private String xzmc;        //险种名称
    private String bxje;        //保险金额
    private String istrue;      //1投保 2不投保
    private String qbsj;        //起保时间
    private Integer xjmxid;     //询价明细ID
    private String bjmp;        //不计免赔
    private String zbf;         //除了三险之外的总费用
    private String zj;          //所有险种的总费用

    public XianZhong(Integer xzid, String xzmc, String bxje, String istrue, String qbsj, Integer xjmxid, String bjmp) {
        this.xzid = xzid;
        this.xzmc = xzmc;
        this.bxje = bxje;
        this.istrue = istrue;
        this.qbsj = qbsj;
        this.xjmxid = xjmxid;
        this.bjmp = bjmp;
    }

    public XianZhong() {
    }
}
