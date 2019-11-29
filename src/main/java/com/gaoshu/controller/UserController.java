package com.gaoshu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 *2222
 */
@RequestMapping("user")
@Controller
public class UserController {
    @GetMapping
    public String login(){
        return "login";
    }

}
