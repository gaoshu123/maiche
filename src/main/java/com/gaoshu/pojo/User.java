package com.gaoshu.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * 1.实体类实现序列化
 * 2.使用@Table指定实体类对应的表
 * 3.属性类型改为包装类
 * 4.使用@Id注解指定表中的主键使用@GeneratedValue(generator = "JDBC")实现主键自增仅限于mysql和sqlserver数据库
 * 如果除主键之外的属性与数据库表的字段不一致使用@Column(name = "数据库的字段名")
 */
@Table(name = "user")
public class User implements Serializable {
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer uid;
    private String password;
    private String username;
    private String realname;
    private String birth;
    private String sex;
    private String email;
    private String qq;
    private String mobile;
    private String fixed;
    private String sfzh;
    private String sfzzmurl;
    private String sfzfmurl;
    private String jszzmurl;
    private String jszfmurl;

    public int getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getFixed() {
        return fixed;
    }

    public void setFixed(String fixed) {
        this.fixed = fixed;
    }

    public String getSfzh() {
        return sfzh;
    }

    public void setSfzh(String sfzh) {
        this.sfzh = sfzh;
    }

    public String getSfzzmurl() {
        return sfzzmurl;
    }

    public void setSfzzmurl(String sfzzmurl) {
        this.sfzzmurl = sfzzmurl;
    }

    public String getSfzfmurl() {
        return sfzfmurl;
    }

    public void setSfzfmurl(String sfzfmurl) {
        this.sfzfmurl = sfzfmurl;
    }

    public String getJszzmurl() {
        return jszzmurl;
    }

    public void setJszzmurl(String jszzmurl) {
        this.jszzmurl = jszzmurl;
    }

    public String getJszfmurl() {
        return jszfmurl;
    }

    public void setJszfmurl(String jszfmurl) {
        this.jszfmurl = jszfmurl;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", realname='" + realname + '\'' +
                ", birth='" + birth + '\'' +
                ", sex='" + sex + '\'' +
                ", email='" + email + '\'' +
                ", qq='" + qq + '\'' +
                ", mobile='" + mobile + '\'' +
                ", fixed='" + fixed + '\'' +
                ", sfzh='" + sfzh + '\'' +
                ", sfzzmurl='" + sfzzmurl + '\'' +
                ", sfzfmurl='" + sfzfmurl + '\'' +
                ", jszzmurl='" + jszzmurl + '\'' +
                ", jszfmurl='" + jszfmurl + '\'' +
                '}';
    }
}
