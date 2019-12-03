<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/common.css" rel="stylesheet"  type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <Link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
    <script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="../js/common_js.js" type="text/javascript"></script>
    <script src="../js/footer.js" type="text/javascript"></script>
    <title>用户登录</title>
    <script>
        //用户名、手机号、邮箱验证///
        function checkUsername(input) {
            var value=input.val();
            var span=input.next();
            var reg=new RegExp("^[u4e00-\u9fa5]{2,6}$");//用户名表达式
            var reg1=new RegExp("^1[3,5,7,8][0-9]{9}$");//手机号表达式
            var reg2=new RegExp("[1-9]\\d{7,10}@qq\\.com");//邮箱表达式
            if(value==null || value==''){
                span.html("用户名不能为空");
                return false;
            }else if(value.length==11){
                if(!reg1.test(value)) {
                    span.html("号码必须为11位有效数字");
                    return false;
                }else{
                    span.html("")
                    return true;
                }
            }else if(6 >= value.length){
                if(!reg.test(value)){
                    span.html("用户名必须为二到六个字符");
                    return false;
                }else{
                    span.html("")
                    return true;
                }
            }else{
                if(!reg2.test(value)) {
                    span.html("邮箱格式错误");
                    return false;
                }else {
                    span.html("")
                    return true;
                }
            }
        }
        function checkPass(input) {
            var value=input.val();
            var span=input.next();
            if(value=="" || value==null){
                span.html("密码不能为空");
                return false
            }else if(value.length!=6){
                span.html("密码必须六位数字");
                return false
            }else{
                span.html("")
                return true;
            }
        }
        //用户登录验证
        function checkFrom() {
            var isName=checkUsername($("#username"))
            var isPass=checkPass($("#password"))
            if(!isName ||!isPass){
                event.preventDefault();
            }
        }
        //记住密码
        function remember() {
            var remFlag = $("input[type='checkbox']").is(':checked');
            if (remFlag == true) {
                var conFlag = confirm("您确定记住密码吗？")
                if (conFlag) {
                    $("input[name='remFlag']").val("1")
                } else {
                    $("input[type='checkbox']").removeAttr('checked');
                    $("#remFlag").val("");
                }
            } else {
                $("#remFlag").val("");
            }
        }

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
            var phone = $("#phone").val();
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
        //短信验证登录
        function checkPhone(input) {
            var reg1=new RegExp("^1[3,5,7,8][0-9]{9}$");//手机号表达式
            var value=input.val();
            var span=input.next();
            if(value==null || value==""){
                span.html("手机号不能为空")
                return false;
            }else if(value.length!=11 || !reg1.test(value)){
                span.html("手机号必须为11位数字")
                return false;
            }else{
                span.html("")
                return true;
            }
        }
        function checkCode(input) {
            var value=input.val();
            var span=input.next();
            if(value==null || value==''){
                span.html("验证码不能为空")
                return false;
            }else{
                span.html("")
                return true;
            }
        }
        function checkScode(input) {
            var value=input.val();
            var span=input.next();
            if(value==null || value==''){
                span.html("验证码不能为空")
                return false;
            }else{
                span.html("")
                return true;
            }
        }
        function checkShouJiLogin() {
            var isPhone=checkPhone($("#phone"))
            var isCode=checkCode($("#Codes"))
            var isScode=checkScode($("#phone_Codes_text"))
            if(!isPhone ||!isCode ||!isScode){
                event.preventDefault();
            }
        }



    </script>
</head>

<body>
<div class="login_top">
    <div class="top clearfix">
        <div class="login_logo"><a href="index.html"><img src="../images/logo.png" /></a></div>
        <div class="login_title">用户登录</div>
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
                <div class="hd"><ul><li class="">账户登录</li><li>短信验证登录</li></ul></div>
                <div class="bd">
                    <ul>
                        <form class="write_login" action="/toLogin/login.do" method="post" autocomplete="off">
                            <fieldset>
                                <ul>
                                    <li class="frame_style form_error"><label class="user_icon"></label><input name="username,mobile,email" type="text"  id="username" onchange="checkUsername($(this))"/><i>用户名/手机号/邮箱</i></li>
                                    <li class="frame_style form_error"><label class="password_icon"></label><input name="password" type="password"   id="password" onchange="checkPass($(this))"/><i>密码</i></li>
                                    <p align="right" style="color: red">${msg}</p>
                                </ul>
                                <div class="space"></div>
                                <div class="clearfix mb15 color9" >
                                    <label class="inline"><input id="saveid" name="remFlag" type="checkbox" onclick="remember()" value=""><span class="lbl">保存密码</span></label>
                                </div>
                                <div class="space-4"><button type="submit" class="width-35  btn btn-sm btn-primary" id="login_btn" onclick="checkFrom()">登陆</button></div>
                                <div class="link_bz"><a href="/toLogin/finds">忘记密码</a> | <a href="/toLogin/registered">注册账号</a></div>
                            </fieldset>
                        </form>
                    </ul>
                    <ul>
                        <form class="write_login" action="/toLogin/PhoneLogin.do" method="post" autocomplete="off">
                            <fieldset>
                                <ul>
                                    <li class="frame_style form_error"><label class="phone_icon"></label><input name="mobile" type="text" id="phone" onchange="checkPhone($(this))"><i>手机号</i></li>
                                    <li class="frame_style form_error"><label class="Codes_icon"></label><input name="Code" type="text" id="Codes" onchange="checkCode($(this))"><i>验证码</i><div class="Codes_region"><img alt="验证码" onclick = "this.src='/toLogin/defaultKaptcha?d='+new Date()*1" src="/toLogin/defaultKaptcha" /></div></li>
                                    <li class="frame_style form_error " id="phone_codes"><label class="phone_Codes_icon"></label><input name="Scode" type="text" id="phone_Codes_text" onchange="checkScode($(this))"><i>手机验证码</i>
                                        <a class="hz-button get-code-button  btn" onclick="getCode()" id="code">发送验证码<input type="hidden" id="Code"/></a></li>
                                    <p align="right" style="color: red">${code}</p>
                                </ul>
                                <div class="space"></div>

                                <div class="space-4"><button type="submit" class="width-35  btn btn-sm btn-primary" id="p_login_btn" onclick="checkShouJiLogin()">登陆</button></div>
                                <div class="link_bz"><a href="/toLogin/finds">忘记密码</a> | <a href="/toLogin/registered">注册账号</a></div>
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
<!--<script>
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

</script>-->
