package com.gaoshu.service.impl;

import com.gaoshu.mapper.NeiBuPeiZhiMapper;
import com.gaoshu.pojo.NeiBuPeiZhi;
import com.gaoshu.service.NeiBuPeiZhiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class NeiBuPeiZhiServiceImpl implements NeiBuPeiZhiService {
    @Autowired
    private NeiBuPeiZhiMapper nbpzMapper;
    @Cacheable("getNbpzById")
    public NeiBuPeiZhi getNbpzById(int id) {
        return nbpzMapper.getNbpzById(id);
    }
}
