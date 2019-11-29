package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;

/**
 * Created by Administrator on 2019/11/29.
 */
@Data
@Table(name="baoxiandingdan")
public class BaoXianDingDan {
    private Integer bxddid;
    private String bxddzt;
    private Double bxddzj;
    private String bxddsj;
    private Integer uid;

    public BaoXianDingDan() {
    }

    public BaoXianDingDan(Integer bxddid, String bxddzt, Double bxddzj, String bxddsj, Integer uid) {
        this.bxddid = bxddid;
        this.bxddzt = bxddzt;
        this.bxddzj = bxddzj;
        this.bxddsj = bxddsj;
        this.uid = uid;
    }
}
