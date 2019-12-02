package com.gaoshu.controller;

import com.gaoshu.pojo.NeiBuPeiZhi;
import com.gaoshu.pojo.PinPaiXingHao;
import com.gaoshu.service.NeiBuPeiZhiService;
import com.gaoshu.service.PinPaiXingHaoService;
import com.gaoshu.service.QiCheTuPianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="/pinpaixinghao",method = {RequestMethod.DELETE,RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT})
public class PinPaiXingHaoController {

    @Autowired
    private PinPaiXingHaoService ppxhService;
    @Autowired
    private QiCheTuPianService qqtpService;
    @Autowired
    private NeiBuPeiZhiService nbpzService;
    @GetMapping("/detail")
    public ModelAndView getPinPaiXingHao(int ppxhid){
       //获取品牌型号
        PinPaiXingHao ppxh=ppxhService.selectPinPaiXingHaoByPpxhid(ppxhid);

        Map map=new HashMap();
        map.put("ppxhid",ppxhid);
        map.put("tplx",3);
        //获取轮播图
        List<String> slides=qqtpService.selectUrlsByPpxhidAndTplx(map);
        map.replace("tplx",4);
        //获取详情图
        List<String> infos=qqtpService.selectUrlsByPpxhidAndTplx(map);
        //获取内部配置
        NeiBuPeiZhi nbpz=nbpzService.getNbpzById(ppxh.getNid());
       /* map.replace("tplx",1);
        List<String> cover=qqtpService.selectUrlsByPpxhidAndTplx(map);
        System.out.println(cover.get(0));
        System.out.println(slides);
        System.out.println(infos);*/
        ModelAndView mav=new ModelAndView();
        mav.addObject("ppxh",ppxh);
        mav.addObject("slides",slides);
        mav.addObject("infos",infos);
        mav.addObject("nbpz",nbpz);

        mav.setViewName("/产品详细");
        return mav;
    }

}
