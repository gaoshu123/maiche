package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Data
@Table(name = "qichetupian")
public class QiCheTuPian {
    @Id
    @GeneratedValue(generator = "JDBC")

    private Integer qctpid;
    @Column(name="tplx")
    private Integer tplx;
    private Integer ppxhid;
    private String url;

    public QiCheTuPian() {
    }

    public QiCheTuPian(Integer qctpid, Integer tplx, Integer ppxhid, String url) {
        this.qctpid = qctpid;
        this.tplx = tplx;
        this.ppxhid = ppxhid;
        this.url = url;
    }

    @Override
    public String toString() {
        return "QiCheTuPian{" +
                "qctpid=" + qctpid +
                ", tplx=" + tplx +
                ", ppxhid=" + ppxhid +
                ", url='" + url + '\'' +
                '}';
    }
}
