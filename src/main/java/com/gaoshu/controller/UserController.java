package com.gaoshu.controller;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("login")
@EnableCaching
public class UserController {
    @GetMapping
    public String login(){
        return "login";
    }

}
