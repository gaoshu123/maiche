package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by 刘炳杰 on 2019/12/1.
 */
//询价明细表
@Data
@Table(name="xunjiamingxi")
public class XunJiaMingXi implements Serializable {
    private Integer xjmxid;
    private Integer bxddid;
    private Integer cpid;
    private String tbsj;
    private String dqsj;
    private String bdje;
    private Integer gsid;
    private Integer ppxhid;
    private Integer uid;
    private String xjmxzt;

    public XunJiaMingXi(Integer xjmxid, Integer bxddid, Integer cpid, String tbsj, String dqsj, String bdje, Integer gsid, Integer ppxhid, Integer uid, String xjmxzt) {
        this.xjmxid = xjmxid;
        this.bxddid = bxddid;
        this.cpid = cpid;
        this.tbsj = tbsj;
        this.dqsj = dqsj;
        this.bdje = bdje;
        this.gsid = gsid;
        this.ppxhid = ppxhid;
        this.uid = uid;
        this.xjmxzt = xjmxzt;
    }

    public XunJiaMingXi() {
    }
}
