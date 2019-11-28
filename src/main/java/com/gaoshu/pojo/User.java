package com.gaoshu.pojo;

/**
 * Created by Administrator on 2019/11/28.
 */
public class User {
    private int uid;
    private String password;
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
    private String spcs;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getSpcs() {
        return spcs;
    }

    public void setSpcs(String spcs) {
        this.spcs = spcs;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", password='" + password + '\'' +
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
                ", spcs='" + spcs + '\'' +
                '}';
    }
}
