package com.gaoshu.service;

import com.gaoshu.pojo.BaoXianDingDan;
import com.gaoshu.pojo.CheLiangXinXi;
import com.gaoshu.pojo.User;

import java.util.List;

/**
 * Created by 刘炳杰 on 2019/12/2.
 */
public interface CheLiang {
    //根据订单号查询车辆信息(考虑到用户名下车辆可能有好几个，所以用订单来查询车辆信息更准确)
    public List<CheLiangXinXi> selectChePaiHao(BaoXianDingDan bxddid);

}
