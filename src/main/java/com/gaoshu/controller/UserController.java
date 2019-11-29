package com.gaoshu.controller;

import com.gaoshu.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("toLogin")
public class UserController {
    //登录
    @RequestMapping
    public String login(){
        return "login";
    }
    //登录验证
    @RequestMapping("/login.do")
    public String Login(User user){
        System.out.println(user);
        return "";
    }
}
