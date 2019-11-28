package com.gaoshu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("login")
public class UserController {
    //登录
    @GetMapping
    public String login(){
        return "login";
    }
}
