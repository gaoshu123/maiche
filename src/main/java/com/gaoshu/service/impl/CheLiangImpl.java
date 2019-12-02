package com.gaoshu.service.impl;

import com.gaoshu.mapper.BaoXianMapper;
import com.gaoshu.pojo.BaoXianDingDan;
import com.gaoshu.pojo.CheLiangXinXi;
import com.gaoshu.pojo.User;
import com.gaoshu.service.CheLiang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 刘炳杰 on 2019/12/2.
 */
@Service    //创建对象
@Transactional //事务管理
public class CheLiangImpl implements CheLiang {
    @Autowired
    private BaoXianMapper bxm;

    //查询车辆信息(用户可能不止一辆车)
    public List<CheLiangXinXi> selectChePaiHao(BaoXianDingDan bxddid){

        return bxm.selectChePaiHao(bxddid);
    }

}
