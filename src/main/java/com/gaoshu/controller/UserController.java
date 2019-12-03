package com.gaoshu.controller;

import com.gaoshu.Service.UserService;
import com.gaoshu.Util.Code;
import com.gaoshu.Util.CodeUtil;
import com.gaoshu.pojo.User;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;


@Controller
@RequestMapping("toLogin")
public class UserController {
    @Autowired
    private UserService userService;
    //验证码
    @Autowired
    DefaultKaptcha defaultkaptcha;
    //验证码
    @RequestMapping("/defaultKaptcha")
    public void defaultKaptcha(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse) throws Exception{
        byte[] captchaChallengeAsJpeg = null;
        ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
        try {
            //生产验证码字符串并保存到session中
            String createText = defaultkaptcha.createText();
            httpServletRequest.getSession().setAttribute("vrifyCode", createText);
            //使用生产的验证码字符串返回一个BufferedImage对象并转为byte写入到byte数组中
            BufferedImage challenge = defaultkaptcha.createImage(createText);
            ImageIO.write(challenge, "jpg", jpegOutputStream);
        } catch (IllegalArgumentException e) {
            httpServletResponse.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        //定义response输出类型为image/jpeg类型，使用response输出流输出图片的byte数组
        captchaChallengeAsJpeg = jpegOutputStream.toByteArray();
        httpServletResponse.setHeader("Cache-Control", "no-store");
        httpServletResponse.setHeader("Pragma", "no-cache");
        httpServletResponse.setDateHeader("Expires", 0);
        httpServletResponse.setContentType("image/jpeg");
        ServletOutputStream responseOutputStream =
                httpServletResponse.getOutputStream();
        responseOutputStream.write(captchaChallengeAsJpeg);
        responseOutputStream.flush();
        responseOutputStream.close();
    }

    //访问登录页面
    @RequestMapping
    public String login(HttpServletRequest request,Model model){
        Cookie[] cookie=request.getCookies();
        if (cookie != null) {
            for (int i = 0; i < cookie.length; i++) {
                if("remember".equals(cookie[i].getName())){
                    model.addAttribute("username", cookie[i].getValue());
                    }
                 }
            for (int i = 0; i < cookie.length; i++) {
                if("password".equals(cookie[i].getName())) {
                    model.addAttribute("password", cookie[i].getValue());
                    return "index";
                }
            }
        }
        return "login";
    }

    //用户登录验证
    @RequestMapping("/login.do")
    public String Login(Model model, User user, String remFlag, HttpSession session, HttpServletRequest request, HttpServletResponse response){
        User us=userService.Login(user);
        if(us==null){
            model.addAttribute("msg","用户名或密码错误");
            return "login";
        }else{
            if("1".equals(remFlag)){
                String remember=us.getUsername();
                String password=us.getPassword();
                Cookie userCookie=new Cookie("remember",remember);
                Cookie userCookie1=new Cookie("password",password);
                userCookie.setMaxAge(7*24*60*60);
                userCookie1.setMaxAge(7*24*60*60);
                userCookie.setPath(request.getContextPath());
                userCookie1.setPath(request.getContextPath());
                response.addCookie(userCookie);
                response.addCookie(userCookie1);
            }
        }
        session.setAttribute("user",us);
        return "index";
    }

    //短信验证登录
    @RequestMapping("/PhoneLogin.do")
    public String PhoneLogin(User user ,String Scode,String Code,HttpServletRequest request,Model model,HttpSession session){
        String captchaId = (String) request.getSession().getAttribute("vrifyCode");
        Object code = session.getAttribute("yzm");
        User us=userService.PhoneLogin(user);
        if(us!=null){
            if(!Code.equals(captchaId) || !code.equals(Scode) ) {
                model.addAttribute("code", "验证码错误");
                return "login";
            }else{
                session.setAttribute("User",us);
                return "index";
            }
        }
        model.addAttribute("code","用户不存在");
        return "login";
    }

    //获取验证码
    @RequestMapping("/sendSms.do")
    @ResponseBody
    public String sendSms(String phonenumber, int flag,HttpSession session){
        //获取随机生成的验证码
        String yzm= CodeUtil.getCode();
        session.setAttribute("yzm",yzm);
        boolean flag0= Code.sendCode(phonenumber,yzm,flag);
        if(flag0){
            return yzm;
        }else{
            return "";
        }
    }

    //访问注册页面
    @RequestMapping("/registered")
    public String registered(){
        return "registered";
    }

    //用户注册
    @RequestMapping("/registeredUser.do")
   public String registeredUser(User user,String kaptcha,String Scode,Model model,HttpServletRequest request,HttpSession session){
        String captchaId = (String) request.getSession().getAttribute("vrifyCode");
        Object code = session.getAttribute("yzm");
        if(kaptcha.equals(captchaId)|| Scode.equals(code)){
            if(userService.PhoneLogin(user)==null){
                userService.registeredUser(user);
                return "login";
            }
            model.addAttribute("msg","用户已注册");
            return "registered";
        }
        model.addAttribute("msg","验证码错误");
        return "registered";
    }

    //访问密码找回页面
    @RequestMapping("/finds")
    public String find(){
        return "find";
    }

    //找回密码
    @RequestMapping("/find.do")
    public String findPassword(String password,String mobile,String Scode,Model model,HttpSession session){
        Object code = session.getAttribute("yzm");
        if(code.equals(Scode)){
                userService.findPassword(password,mobile);
                return "login";
        }
        model.addAttribute("code","验证码错误");
        return "find";
    }
}
