package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@Table(name="neibupeizhi")
public class NeiBuPeiZhi implements Serializable {
    @Id
    @GeneratedValue(generator="JDBC")
    private Integer nid;            //内部配置id
    private Integer zpfxp;          //真皮方向盘
    private String fxptj;           //方向盘调节
    private Integer dgnfxp;         //多功能方向盘
    private Integer dsxh;           //定速巡航
    private Integer ld;             //前后驻车雷达
    private Integer spyx;           //倒车视频影像
    private Integer zy;             //真皮/仿皮座椅
    private Integer gps;            //gps导航
    private Integer zdkt;           //自动空调

    public NeiBuPeiZhi(Integer zpfxp, String fxptj, Integer dgnfxp, Integer dsxh, Integer ld, Integer spyx, Integer zy, Integer gps, Integer zdkt) {
        this.zpfxp = zpfxp;
        this.fxptj = fxptj;
        this.dgnfxp = dgnfxp;
        this.dsxh = dsxh;
        this.ld = ld;
        this.spyx = spyx;
        this.zy = zy;
        this.gps = gps;
        this.zdkt = zdkt;
    }

    public NeiBuPeiZhi() {
    }

    @Override
    public String toString() {
        return "NeiBuPeiZhi{" +
                "nid=" + nid +
                ", zpfxp=" + zpfxp +
                ", fxptj='" + fxptj + '\'' +
                ", dgnfxp=" + dgnfxp +
                ", dsxh=" + dsxh +
                ", ld=" + ld +
                ", spyx=" + spyx +
                ", zy=" + zy +
                ", gps=" + gps +
                ", zdkt=" + zdkt +
                '}';
    }
}
