<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <Link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
    <script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="../js/common_js.js" type="text/javascript"></script>
    <script src="../js/footer.js" type="text/javascript"></script>
    <title>用户注册</title>

<script>
    //短信验证时长
    function dingshi(date){
        var code;
        var timer;
        if($("#code").attr("disabled")!="disabled"){
            $("#code").attr("disabled","disabled");
        }
        var nowdate = new Date().getTime();
        var cha=Math.ceil((date-nowdate)/1000);
        if(cha>0){
            $("#code").text(cha+"s后重发");
        }else if(cha==0){
            $("#code").removeAttr("disabled");
            $("#code").text("重新获取");
            window.clearInterval(timer);
        }
    }

    //获取短信验证码
    function getCode() {
        var phone = $("#mobile").val();
        //生成验证码，并发送至指定的手机
        $.ajax({
            type: "post",
            url: "/toLogin/sendSms.do",
            data: "phonenumber=" + phone + "&flag=" + 1,//flag用来标识是注册发送验证码还是登录需要发送验证码
            dataType: "json",
            success: function (data) {
                if (data != null && data != "") {
                    code = data;
                    $("#Code").val(code);
                    var date = new Date().getTime() + 60000;
                    window.setInterval("dingshi(" + date + ")", 1000);
                } else {
                    alert("发送失败");
                }
            }
        });
    }
    //手机号验证
    function checkPhone(input) {
        var reg1=new RegExp("^1[3,5,7,8][0-9]{9}$");//手机号表达式
        var value=input.val();
        var span=input.next();
        if(value==null || value==""){
            span.html("手机号不能为空");
            return false;
        }else if(value.length!=11 || !reg1.test(value)){
            alert(1);
            span.html("11位有效数字");
            return false;
        }else{
            span.html("")
            return true;
        }
    }
    //验证码验证
    function checkCode(input) {
        var value=input.val();
        var span=input.next();
        if(value==null || value==''){
            span.html("验证码不能为空");
            return false;
        }else{
            span.html("")
            return true;
        }
    }
    //手机验证码验证
    function checkScode(input) {
        var value=input.val();
        var span=input.next();
        if(value==null || value==''){
            span.html("验证码不能为空");
            return false;
        }else{
            span.html("")
            return true;
        }
    }

    function checkPassword(input) {
        var pass1=$("#tbPassword").val();
        var pass2=$("#userpwd").val();
        var span=input.next();
        if(pass1==null || pass1=="" || pass2==null || pass2==""){
            span.html("密码不能为空");
            return false;
        }else if(pass1!=pass2){
            span.html("前后密码不一致");
            return false;
        }else if(pass2.length!=6){
            span.html("密码必须为六位数字");
            return false
        }else{
            return true
        }
    }
    //全表验证
    function checkFrom() {
        var isPhone=checkPhone($("#mobile"))
        var isCode=checkCode($("#kaptcha"))
        var isScode=checkScode($("#phone_Code"))
        var isPassword=checkPassword($("#userpwd"));
        if(!isPhone ||!isCode ||!isScode ||!isPassword){
            event.preventDefault();
        }
    }


</script>

</head>

<body>
<div class="login_top">
    <div class="top clearfix">
        <div class="login_logo"><a href="../templates/index.html"><img src="../images/logo.png" /></a></div>
        <div class="login_title">用户注册</div>
        <div class="fw_phone">
            咨询服务热线：
            <h2>400-123-2111</h2>
        </div>
    </div>
</div>
<!--登录-->
<div class="login_content Reg_log_style">
    <div class="mian_style relative">
        <div class="login_ad"><img src="../images/login_ad.png" /></div>
        <div class="login_style">
            <div class="login_Switch">
                <div class="hd"><ul><li class="">手机号注册</li><li>邮箱注册</li></ul></div>
                <div class="bd">
                    <ul>
                        <form class="write_login" action="/toLogin/registeredUser.do" method="post" autocomplete="off">
                            <fieldset>
                                <ul>
                                    <li class="frame_style form_error"><label class="phone_icon"></label><input name="mobile" type="text"  id="mobile" onchange="checkPhone($(this))"/><i>手机号</i></li>
                                    <li class="frame_style form_error"><label class="Codes_icon"></label><input name="kaptcha" type="text" id="kaptcha" onchange="checkCode($(this))"><i>验证码</i><div class="Codes_region"> <img alt="验证码" onclick = "this.src='/toLogin/defaultKaptcha?d='+new Date()*1" src="/toLogin/defaultKaptcha" /></div></li>
                                    <li class="frame_style form_error"><label class="password_icon"></label><input name="password1" type="password" id="tbPassword"/><i>输入密码</i></li>
                                    <li class="Password_qd">
                                        <div class="clearfix">
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_1'>弱 </div>
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_2'>中 </div>
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_3'>强 </div>
                                        </div>
                                    </li>
                                    <li class="frame_style form_error"><label class="password_icon"></label><input name="password" type="password" id="userpwd" onchange="checkPassword($(this))"/><i>确认密码</i></li>
                                    <li class="frame_style form_error " id="phone_codes"><label class="phone_Codes_icon"></label><input style="width: 50%" name="Scode" type="text" id="phone_Code" onchange="checkScode($(this))"/><i>手机验证码</i>
                                        <a class="hz-button get-code-button  btn" onclick="getCode()" id="code">发送验证码<input type="hidden" id="Code"/></a></li>
                                    <p align="right" style="color: red">${msg}</p>
                                </ul>

                                <div class="space-4"><button type="submit" class="width-35  btn btn-sm btn-primary" id="p_login_btn" onclick="checkFrom()">注册</button></div>
                                <div class="link_bz"><a href="/toLogin">用户登录</a></div>
                            </fieldset>
                        </form>
                    </ul>
                    <ul>
                        <form class="write_login">
                            <fieldset>
                                <ul>
                                    <li class="frame_style form_error"><label class="email_icon"></label><input name="手机号" type="text"  id="phone"/><i>邮箱</i></li>
                                    <li class="frame_style form_error " id="phone_codes"><label class="phone_Codes_icon"></label><input name="手机验证码" type="text" id="phone_Codes_text"><i>邮箱验证码</i>
                                        <a class="hz-button get-code-button  btn" href="javascript:;" id="getSmsCode">发送验证码<input type="hidden" id="Code"/></a></li></a></li>
                                    <li class="frame_style form_error"><label class="password_icon"></label><input name="密码" type="password"   id="tbPasswords"/><i>输入密码</i></li>
                                    <li class="Password_qd">
                                        <div class="clearfix">
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_4'>弱 </div>
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_5'>中 </div>
                                            <div class="ywz_zhuce_huixian" id='pwdLevel_6'>强 </div>
                                        </div>
                                    </li>
                                    <li class="frame_style form_error"><label class="password_icon"></label><input name="密码" type="password"   id="userpwd"/><i>确认密码</i></li>
                                </ul>

                                <div class="space-4"><button type="button" class="width-35  btn btn-sm btn-primary" id="p_login_btn" onclick="">注册</button></div>
                                <div class="link_bz"><a href="/toLogin">用户登录</a></div>
                            </fieldset>
                        </form>
                    </ul>
                </div>
                <div class="others-login-box  clearfix">
                    <span class="name">使用合作网站账号登录</span>
                    <div class="inline-block">
                        <a href="#" class="share-icon share-wx-icon ml10"></a>
                        <a href="#" class="share-icon share-qq-icon ml10"></a>
                    </div></div>
            </div>
        </div>
        <script>jQuery(".login_Switch").slide({trigger:"click",easing:"easeOutCirc",delayTime:0});</script>
    </div>
</div>
<div class="bottom_footer">
    <div class="footerbox">
        <p><a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">商家入驻</a> | <a href="#">法律申明</a> | <a href="#">友情链接</a>  </p>
        <p>Copyright©2014江苏什么什么的股票跟你说.All Rights Reserved. </p>
        <p>苏ICP备09150084号</p>
    </div>
</div>
</body>
</html>
<script>
    $('#login_btn').on('click', function(){
        var num=0;
        var str="";
        $("input[type$='text'],input[type$='password']").each(function(n){
            if($(this).val()=="")
            {

                layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                    title: '提示框',
                    icon:0,
                });
                num++;
                return false;
            }
        });
        if(num>0){  return false;}
        else{
            layer.alert('登陆成功！',{
                title: '提示框',
                icon:1,
            });
            location.href="index.html";
            layer.close(index);
        }

    });
    $(document).ready(function(){
        $("input[type='text'],input[type='password']").blur(function(){
            var $el = $(this);
            var $parent = $el.parent();
            $parent.attr('class','frame_style').removeClass(' form_error');
            if($el.val()==''){
                $parent.attr('class','frame_style').addClass(' form_error');
            }
        });
        $("input[type='text'],input[type='password']").focus(function(){
            var $el = $(this);
            var $parent = $el.parent();
            $parent.attr('class','frame_style').removeClass(' form_errors');
            if($el.val()==''){
                $parent.attr('class','frame_style').addClass(' form_errors');
            } else{
                $parent.attr('class','frame_style').removeClass(' form_errors');
            }
        });
    })

</script>
