package com.gaoshu.controller;

import com.gaoshu.Service.UserService;
import com.gaoshu.pojo.User;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("toLogin")
public class UserController {
    @Autowired
    private UserService userService;
    //登录
    @RequestMapping
    public String login(){
        return "login";
    }
    //登录验证
    @RequestMapping("/login.do")
    public String Login(Model model, User user, String remFlag, HttpSession session){
        User us=userService.Login(user);
        if(us==null){
            model.addAttribute("msg","用户名或密码错误");
            return "login";
        }else{
            if("1".equals(remFlag)){
                String remember=us.getUsername()+","+us.getPassword();
                Cookie userCookie=new Cookie("remember",remember);
                userCookie.setMaxAge(7*24*60*60);
                model.addAttribute("cookie",userCookie);
            }
        }
        session.setAttribute("user",us);
        return "index";
    }
}
