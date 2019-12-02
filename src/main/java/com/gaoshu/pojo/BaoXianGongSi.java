package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by 刘炳杰 on 2019/12/1.
 */
@Data
@Table(name="baoxiangongsi")
public class BaoXianGongSi implements Serializable {
    private Integer gsid;
    private String gsmc;
    private String gslogo;
    private String gsjj;

    public BaoXianGongSi(Integer gsid, String gsmc, String gslogo, String gsjj) {
        this.gsid = gsid;
        this.gsmc = gsmc;
        this.gslogo = gslogo;
        this.gsjj = gsjj;
    }

    public BaoXianGongSi() {
    }
}
