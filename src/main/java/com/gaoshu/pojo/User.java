package com.gaoshu.pojo;

import lombok.Data;

import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Administrator on 2019/11/28.
 */
@Data
@Table(name="user")
public class User implements Serializable {
    private Integer uid;
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

    public User(Integer uid, String password, String realname, String birth, String sex, String email, String qq, String mobile, String fixed, String sfzh, String sfzzmurl, String sfzfmurl, String jszzmurl, String jszfmurl) {
        this.uid = uid;
        this.password = password;
        this.realname = realname;
        this.birth = birth;
        this.sex = sex;
        this.email = email;
        this.qq = qq;
        this.mobile = mobile;
        this.fixed = fixed;
        this.sfzh = sfzh;
        this.sfzzmurl = sfzzmurl;
        this.sfzfmurl = sfzfmurl;
        this.jszzmurl = jszzmurl;
        this.jszfmurl = jszfmurl;
    }

    public User() {
    }
}
