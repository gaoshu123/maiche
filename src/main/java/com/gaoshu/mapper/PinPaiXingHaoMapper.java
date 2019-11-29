package com.gaoshu.mapper;

import com.gaoshu.pojo.PinPaiXingHao;
import tk.mybatis.mapper.common.Mapper;

public interface PinPaiXingHaoMapper extends Mapper<PinPaiXingHao> {


    public PinPaiXingHao selectPinPaiXingHaoByPpxhid(int ppxh);
}
