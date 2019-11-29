package com.gaoshu.service;

import com.gaoshu.mapper.PinPaiXingHaoMapper;
import com.gaoshu.pojo.PinPaiXingHao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class PinPaiXingHaoServiceImpl implements PinPaiXingHaoService {

    @Autowired
    private PinPaiXingHaoMapper ppxhMapper;

    @Cacheable("selectPinPaiXingHaoByPpxhid")
    public PinPaiXingHao selectPinPaiXingHaoByPpxhid(int ppxh) {
        return ppxhMapper.selectPinPaiXingHaoByPpxhid(ppxh);
    }
}
