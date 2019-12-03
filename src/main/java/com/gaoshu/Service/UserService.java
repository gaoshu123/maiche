package com.gaoshu.Service;


import com.gaoshu.pojo.User;

public interface UserService {
    /**
     * 用户登录
     * @param user
     * @return
     */
    public User Login(User user);

    /**
     * 根据验证码登录
     * @param user
     * @return
     */
    public User PhoneLogin(User user);

    /**
     * 注册
     * @param user
     * @return
     */
    public int registeredUser(User user);

    /**
     * 找回密码
     * @param uid
     * @return
     */
    public int findPassword(String password,String mobile);

}
