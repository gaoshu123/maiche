package com.gaoshu.Mapper;

import com.gaoshu.pojo.User;
import org.apache.ibatis.annotations.Update;
import tk.mybatis.mapper.common.Mapper;

public interface UserMapper extends Mapper<User> {

    @Update("update user set password=#{password} where mobile=#{mobile}")
    public int findPassword(String password,String mobile);
}
