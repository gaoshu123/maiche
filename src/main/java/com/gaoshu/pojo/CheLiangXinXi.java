package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by 刘炳杰 on 2019/12/2.
 */
@Data
@Table(name="cheliangxinxi")
public class CheLiangXinXi implements Serializable {
    private Integer cpid;
    private String cph;
    private String cjh;
    private String fdjh;
    private Integer ppxhid;
    private String zcrq;
    private Integer uid;
    private String clss;
    private String clsbm;
    private String cllx;
    private String rylx;
    private String sfgh;
    private String szcs;


    public CheLiangXinXi(Integer cpid, String cph, String cjh, String fdjh, Integer ppxhid, String zcrq, Integer uid, String clss, String clsbm, String cllx, String rylx, String sfgh, String szcs) {
        this.cpid = cpid;
        this.cph = cph;
        this.cjh = cjh;
        this.fdjh = fdjh;
        this.ppxhid = ppxhid;
        this.zcrq = zcrq;
        this.uid = uid;
        this.clss = clss;
        this.clsbm = clsbm;
        this.cllx = cllx;
        this.rylx = rylx;
        this.sfgh = sfgh;
        this.szcs = szcs;
    }

    public CheLiangXinXi() {
    }
}
