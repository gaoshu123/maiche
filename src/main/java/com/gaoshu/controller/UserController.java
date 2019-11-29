package com.gaoshu.controller;

import com.gaoshu.pojo.BaoXianDingDan;
import com.gaoshu.service.UserSelectBaoXian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


/**
 *
 */

@Controller
public class UserController {
    @Autowired
    private UserSelectBaoXian us;

    @GetMapping
    public String login(){
        return "login";
    }



    //保险订单页查询所有订单
    @RequestMapping("/selectAllBaoXian.do")
    public String selectAllBaoXian(Model model){
        List<BaoXianDingDan> u =us.selectAllBaoXian();
        model.addAttribute("u",u);
        return "保险订单";
    }


}
