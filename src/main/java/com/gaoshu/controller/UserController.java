package com.gaoshu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 *1
 */
@RequestMapping("user")
@Controller
@RequestMapping("login")
public class UserController {
    @GetMapping
    public String login(){
        return "login";
    }

}
