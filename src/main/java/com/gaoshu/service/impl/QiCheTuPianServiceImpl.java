package com.gaoshu.service.impl;

import com.gaoshu.mapper.QiCheTuPianMapper;
import com.gaoshu.service.QiCheTuPianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class QiCheTuPianServiceImpl implements QiCheTuPianService {
    @Autowired
    private QiCheTuPianMapper qqtpMapper;
    @Cacheable("selectUrlsByPpxhidAndTplx")
    public List<String> selectUrlsByPpxhidAndTplx(Map map) {
        return qqtpMapper.selectUrlsByPpxhidAndTplx(map);
    }
}
