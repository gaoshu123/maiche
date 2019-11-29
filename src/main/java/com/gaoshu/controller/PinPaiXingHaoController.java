package com.gaoshu.controller;

import com.gaoshu.pojo.PinPaiXingHao;
import com.gaoshu.service.PinPaiXingHaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/pinpaixinghao",method = {RequestMethod.DELETE,RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT})
public class PinPaiXingHaoController {

    @Autowired
    private PinPaiXingHaoService ppxhService;
    @GetMapping("/detail")
    public ModelAndView getPinPaiXingHao(int ppxhid){
        PinPaiXingHao ppxh=ppxhService.selectPinPaiXingHaoByPpxhid(ppxhid);
        System.out.println(ppxh);
        ModelAndView mav=new ModelAndView();
        mav.setViewName("/产品详细");
        return mav;
    }

}
