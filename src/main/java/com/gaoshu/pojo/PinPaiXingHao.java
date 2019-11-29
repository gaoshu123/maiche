package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
@Data
@Table(name = "pinpaixinghao")
public class PinPaiXingHao implements Serializable {
    /*
    ppxhid	int	品牌型号ID
    pp	varchar	品牌
    mc varchar 名称
    ms	varchar	描述
    xh	varchar	型号
    dw	varchar	档位(手/自动)
    cx	varchar	车型
    cd	varchar	产地
    clysid	int	车辆颜色ID
    nsysid	int	内饰颜色ID
    dj	decimal	定金
    lcj	decimal	裸车价

    kc	int	库存
    xl	int	销量
    zgs	decimal	置购税
    spf	decimal	上牌费
    xfs	decimal	消费税
    ckf	decimal	出库费
    csid	int	基础参数id
    fdjid	int	发动机id
    wid	int	外部配置id
    nid	int	内部配置id
    dmtpzid	int	多媒体配置ID
    */

    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer ppxhid;//品牌型号ID
    @Column(name="pp")
    private String pp;//品牌
    private String mc;//名称
    private String ms;//描述
    private String xh;//型号
    private String dw;//档位
    private String cx;//车型
    private String cd;//产地
    private Integer clysid;//车辆颜色
    private Integer nsysid;//内饰颜色id
    private Double dj;//定金
    private Double lcj;//定金
    private Integer kcm;//库存
    private Integer xl;		//销量
    private Double zgs;		//置购税
    private Double spf;	//上牌费
    private Double xfs;//消费税
    private Double ckf;	//出库费
    private Integer csid;		//基础参数id
    private Integer fdjid;		//发动机id
    private Integer wid;		//外部配置id
    private Integer nid;	//内部配置id
    private Integer dmtpzid;		//多媒体配置ID

    /*public static void main(String[] args) {

        BigDecimal b= BigDecimal.valueOf(11.11111);
        BigDecimal c= BigDecimal.valueOf(12.2212);
        System.out.println(b.multiply(c));
    }*/

    public PinPaiXingHao(String pp, String mc, String ms, String xh, String dw, String cx, String cd, Integer clysid, Integer nsysid, Double dj, Double lcj, Integer kcm, Integer xl, Double zgs, Double spf, Double xfs, Double ckf, Integer csid, Integer fdjid, Integer wid, Integer nid, Integer dmtpzid) {
        this.pp = pp;
        this.mc = mc;
        this.ms = ms;
        this.xh = xh;
        this.dw = dw;
        this.cx = cx;
        this.cd = cd;
        this.clysid = clysid;
        this.nsysid = nsysid;
        this.dj = dj;
        this.lcj = lcj;
        this.kcm = kcm;
        this.xl = xl;
        this.zgs = zgs;
        this.spf = spf;
        this.xfs = xfs;
        this.ckf = ckf;
        this.csid = csid;
        this.fdjid = fdjid;
        this.wid = wid;
        this.nid = nid;
        this.dmtpzid = dmtpzid;
    }

    public PinPaiXingHao() {
    }

    @Override
    public String toString() {
        return "PinPaiXingHao{" +
                "ppxhid=" + ppxhid +
                ", pp='" + pp + '\'' +
                ", mc='" + mc + '\'' +
                ", ms='" + ms + '\'' +
                ", xh='" + xh + '\'' +
                ", dw='" + dw + '\'' +
                ", cx='" + cx + '\'' +
                ", cd='" + cd + '\'' +
                ", clysid=" + clysid +
                ", nsysid=" + nsysid +
                ", dj=" + dj +
                ", lcj=" + lcj +
                ", kcm=" + kcm +
                ", xl=" + xl +
                ", zgs=" + zgs +
                ", spf=" + spf +
                ", xfs=" + xfs +
                ", ckf=" + ckf +
                ", csid=" + csid +
                ", fdjid=" + fdjid +
                ", wid=" + wid +
                ", nid=" + nid +
                ", dmtpzid=" + dmtpzid +
                '}';
    }
}
