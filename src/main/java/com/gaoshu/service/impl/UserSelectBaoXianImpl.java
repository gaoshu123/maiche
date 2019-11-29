package com.gaoshu.service.impl;

import com.gaoshu.pojo.BaoXianDingDan;
import com.gaoshu.mapper.BaoXianMapper;
import com.gaoshu.service.UserSelectBaoXian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
@Service    //创建对象
@Transactional  //事务管理
public class UserSelectBaoXianImpl implements UserSelectBaoXian {
    @Autowired
    private BaoXianMapper bxm;
    //查询所有保险订单
    public List<BaoXianDingDan> selectAllBaoXian(){
    System.out.println("1");
        return bxm.selectAll();
    }

}
