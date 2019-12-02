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
    private Integer xzid;
    private String xzmc;
    private String bxje;
    private String istrue;
    private String qbsj;
    private Integer xjmxid;

    public XianZhong(Integer xzid, String xzmc, String bxje, String istrue, String qbsj, Integer xjmxid) {
        this.xzid = xzid;
        this.xzmc = xzmc;
        this.bxje = bxje;
        this.istrue = istrue;
        this.qbsj = qbsj;
        this.xjmxid = xjmxid;
    }

    public XianZhong() {
    }
}
