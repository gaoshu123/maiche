package com.gaoshu.Service.ServiceImpl;

import com.gaoshu.Mapper.UserMapper;
import com.gaoshu.Service.UserService;
import com.gaoshu.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserviceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    /**
     * 用户登录
     * @param user
     * @return
     */
    public User Login(User user){
        return userMapper.selectOne(user);
    }

    /**
     * 根据验证码登录
     * @param user
     * @return
     */
    public User PhoneLogin(User user){
        return userMapper.selectOne(user);
    }

    /**
     * 注册
     * @param user
     * @return
     */
    public int registeredUser(User user){
        return userMapper.insert(user);
    }

    /**
     * 找回密码
     * @param
     * @return
     */
    public int findPassword(String password,String mobile){
        return  userMapper.findPassword(password,mobile);

    }

}
