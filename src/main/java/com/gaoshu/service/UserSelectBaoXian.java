package com.gaoshu.service;

import com.gaoshu.pojo.BaoXianDingDan;

import java.util.List;

/**
 * Created by Administrator on 2019/11/29.
 */
public interface UserSelectBaoXian {

    //查询所有保险订单
    public List<BaoXianDingDan> selectAllBaoXian();

}
