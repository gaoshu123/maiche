<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<Link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/cityselect.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<title>保单详细</title>
</head>

<body>
<!--顶部样式-->
<!--顶部样式-->
<div id="header_top">
<div id="top">
  <div class="top">
    <div class="Collection"><em></em><a href="#">收藏我们</a></div>
	<div class="hd_top_manu clearfix">
	  <ul class="clearfix">
	   <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="login.html" class="red">[请登录]</a> 新用户<a href="registered.html" class="red">[免费注册]</a></li>
	   <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="javascript:" class="hd_menu">我的订单</a>
         <div class="hd_menu_list" style="display: none;">
		   <ul>
		    <li><a href="询价订单.html">询价订单</a></li>
		    <li><a href="保险订单.ftl">保险订单</a></li>
            <li><a href="购车订单.html">新车订单</a></li>
		   </ul>
		</div>
       </li> 
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="保单查询.html">保单查询</a> </li>
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="网站地图.html">网址导航</a></li>
	   <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="帮助中心.html" class="hd_menu">帮助中心</a>
	    <div class="hd_menu_list" style="display: none;">
		   <ul>
		    <li><a href="帮助详细.html">常见问题</a></li>
		    <li><a href="知识库.html">知识问答</a></li>
            <li><a href="帮助详细.html">支付方式</a></li>
            <li><a href="#">联系方式</a></li>
			<li><a href="#">配送服务</a></li>
		   </ul>
		</div>	   
	   </li>
        <li class="hd_menu_tit phone_c" data-addclass="hd_menu_hover"><a href="#" class="hd_menu "><i class="icon_phone"></i>手机版</a>
	    <div class="hd_menu_list erweima">
		   <ul>
            <img src="images/waixin.png" width="120px" height="120"/>
            <p>扫码关注公众号</p>
		   </ul>
		</div>	   
	   </li>
	  </ul>
	</div>
  </div>
</div>
<!--栏目-->
<div class="header relative clearfix">
  <div class="logo_style"><a href="index.html"><img src="images/logo.png" /><h6 class="pingtai_name">一站式汽车综合服务平台</h6></a></div>
  <div class="middle_style">
   <div class="Search">
    <p><select name="" class="select_name"><option value="1">全部</option><option value="2">保险</option><option value="3">商城</option></select><input name="搜索框" type="text" class="text" placeholder="请输入关键字"><input name="" onclick="submit_btn()" type="submit" value="搜索" class="Search_btn"></p>
	<p class="Words">热搜关键字：<a href="搜索.html">大众</a><a href="#">宝马</a><a href="#">太平洋保险</a><a href="#">福特</a><a href="#">本田</a><a href="#">哈佛</a></p>
</div>
     <ul class="menu_list">
      <li><a href="index.html" class="menu_name">首页</a></li>
      <li><a href="cars_list.html" class="menu_name">购车 <em class="Arrows_icon"></em></a>
       <div class="Insurance_class">
       <div class="Condition_selection_style">
       <div class="navcar clearfix">
       <div class="label_name">车型：</div>
         <ul>
            <li class="navcar01"><a target="_blank" href="" data-tjposition="4|1">微型车</a></li>
            <li class="navcar02"><a target="_blank" href="" data-tjposition="4|2">小型车</a></li>
            <li class="navcar03"><a target="_blank" href="" data-tjposition="4|3">紧凑型车</a></li>
            <li class="navcar04"><a target="_blank" href="" data-tjposition="4|4">中型车</a></li>
            <li class="navcar05"><a target="_blank" href="" data-tjposition="4|5">中大型车</a></li>
            <li class="navcar06"><a target="_blank" href="" data-tjposition="4|6">大型车</a></li>
            <li class="navcar07" id="auto-header-suv"><a target="_blank" href="">SUV</a> </li>
            <li class="navcar08"><a target="_blank" href="" data-tjposition="4|8">MPV</a></li>
            <li class="navcar09"><a target="_blank" href="" data-tjposition="4|9">跑车</a></li>
            <li class="navcar10"><a target="_blank" href="" data-tjposition="4|10">皮卡</a></li>
            <li class="navcar11"><a target="_blank" href="" data-tjposition="4|11">微面</a></li>
            <li class="navcar12"><a target="_blank" href="" data-tjposition="4|12">电动车</a></li>
        </ul>
       </div> 
        <div class="navcar clearfix">
         <div class="label_name">价格：</div>
         <ul>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">0-5万</a></li>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">5万-10万</a></li>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">10万-15万</a></li>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">15万-20万</a></li>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">20万-25万</a></li>
            <li class="Car_prices"><a target="_blank" href="" data-tjposition="">25万-50万</a></li>
            <li class="Car_prices"><a target="_blank" href="">50万以上</a> </li>
        </ul>
       </div>
       <div class="Main_models">
        <div class="title_name">主打车</div>
        <ul>
         <li>
         <a href="#">
          <img src="images/products/2.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/3.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/4.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/5.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/6.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/7.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/8.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
          <li>
         <a href="#">
          <img src="images/products/9.jpg" width="80px"/>
          <h4>汽车名称</h4>
         </a>
         </li>
        </ul>
       </div>
       </div>
       <div class="Recommended_Brand">
       <a href="#" class="mb15"><img src="images/ad_1.jpg" width="100%" height="198px"/></a>
        <a href="#"><img src="images/ad_1.jpg" width="100%" height="198px"/></a>
       </div>
       </div>   
      </li>
      <li><a href="#" class="menu_name">车险<em class="Arrows_icon"></em></a>
       <div class="Insurance_class">
        	<div class="Insurance_class_Insurance">
              <h3><a href="Insurance.html">太平洋保险</a></h3>
              <p class="jianjie ">又称太平洋保险，简称中国太保或太保，前身是中国太平洋保险公司，成立于1991年5月13日，是经中国人民银行批准设立的全国性股份制商业保险公司。中国太平洋保险以“做一家负责任的保险公司”为使命，以“诚信天下，稳健一生，追求卓越”为企业核心价值观，以“推动和实现可持续的价值增长”为经营理念，不断为客户、股东、员工、社会和利益相关者创造价值，为社会和谐做出贡献。</p>
             <div class="clauseBlock">
            <img src="images/map01.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 先赔付，再修车</li>
                <li>? 万元以下赔付，3天到账</li>
                <li>? 结案支付，60秒到账</li>
            </ul>
        </div>
        <div class="clauseBlock">
            <img src="images/map02.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 7X24小时</li>
                <li>? 百公里免费非事故</li>
                <li>? 道路救援服务</li>
            </ul>
        </div>
        <div class="clauseBlock">
            <img src="images/map03.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 人伤案件安心理赔</li>
                <li>? 上门代收理赔资料</li>
                <li>? VIP客户一站式理赔</li>
                <li>? 理赔进度微信实时查询</li>
            </ul>
        </div>
            </div>
            <div class="Insurance_class_Insurance class_san">
            <h3><a href="#">中国人民保险</a></h3>
            <p class="jianjie marginleft">中国人民财产保险股份有限公司，2003年07月07日成立，经营范围包括财产损失保险、责任保险、信用保险、意外伤害保险、短期健康保险、保证保险等人民币或外币保险业务等。以"四个一流"为标准，以四化建设为路径，以组织能力持续提升为驱动，加快转变发展方式，着力构建以价值增长为目标的发展模式，以成本管控为手段的盈利模式，</p>
          <div class="w740 clearfix">
                            <div class="rocket png">
                                <p class="simple">简单的"<span class="speed">极速</span>"理赔</p>
                                <ul class="posRelative">
                                    <li class="hasListIco">先赔付、后修车的“极速”服务</li>
                                    <li class="hasListIco">免填单证、免事故说明的“双免”服务</li>
                                    <li class="hasListIco">万元以下案件一小时通知赔付</li>
                                </ul>
                            </div>
                            <div class="umbull png">
                                <p class="simple">人伤无忧理赔更"<span class="speed">安心</span>"</p>
                                <ul class="posRelative">
                                    <li class="hasListIco">专员现场调解</li>
                                    <li class="hasListIco">当场通知赔付</li>
                                    <li class="hasListIco">一次性快速处理</li>
                                </ul>
                            </div>                          
                        </div>
                        <div class="head_right_content">
                                <div class="protection_1 png">
                                    <p class="expl_protection">车载货物掉落造成的三者损失</p>
                                    <p class="bus_protection">商业三者险保障</p>
                                </div>
                                <div class="protection_2 png">
                                    <p class="expl_protection">倒车镜单独损坏、灯具单独损坏</p>
                                    <p class="bus_protection">车损险保障</p>
                                </div>

                            </div>
            </div>
           
       </div>
      </li>     
      
      <li><a href="知识.html" class="menu_name">知识</a></li>
      </ul>
      
   </div><div class="contacttop_style"><img src="images/phone.png" />
    <div class="header_mycount">
     <a href="购物车.html" class="cart_style"><i class="icon_cart"></i>我的购物车<i class="ci-count">0</i></a>
     <a href="用户中心.html" class="user_header_style">
       <i class="icon_user"></i>我的苏车宝
     </a>
    </div>
   </div>
</div>
</div>
<!--保单详情-->
<div class=" pages_style">
<div class="page ">
<div class="Button_operation clearfix">
 <a href="javascript:history.go(-1)" class="btn btn_huise  General_size_btn">返回上一步</a>
 <a href="保单认证.html" class="btn btn_red  General_size_btn">确认购买</a>
</div>
<div class="Query_results_style user_Policy_info" >
 <div class="Query_results margin">
   <div class="prompt clearfix"><b>太平洋保单信息</b></div>

   <div class="clearfix">
    <div class="order_number">订单号：${nb.bxddid?c}</div>
    <ul class="Query_results_content clearfix">
     <li><label class="label_name">投保城市：</label><span class="jt_content">${nb.tbcs}</span></li>
     <li><label class="label_name">保险公司：</label><span class="jt_content">${nb.gsmc}</span></li>
     <li><label class="label_name">车牌号：</label><span class="jt_content">${nb.cph}</span></li>
    </ul>
    <div class="Query_results_title">车主信息</div>
    <ul class="Query_results_content clearfix">
     <li class="width20"><label class="label_name">车主姓名：</label><span class="jt_content">${nb.realname}</span></li>
     <li><label class="label_name">手机号：</label><span class="jt_content">${nb.mobile}</span></li>
     <li><label class="label_name">身份证：</label><span class="jt_content">${nb.sfzh}</span></li>
     <li><label class="label_name">邮箱：</label><span class="jt_content">${nb.email}</span></li>
    </ul>
     <div class="Query_results_title">车辆信息</div>
     <ul class="Query_results_content clearfix">
     <li class="width100"><label class="label_name">品牌型号：</label><span class="jt_content">${nb.pp}${nb.mc}${nb.xh}${nb.cx}</span></li>
     <li><label class="label_name">投保城市：</label><span class="jt_content">${nb.tbcs}</span></li>
     <li><label class="label_name">保险公司：</label><span class="jt_content">${nb.gsmc}</span></li>
     <li><label class="label_name">车牌号：</label><span class="jt_content">${nb.cph}</span></li>
     <li><label class="label_name">车辆所属：</label><span class="jt_content">${nb.clss}</span></li>
     <li><label class="label_name">注册登记：</label><span class="jt_content">${nb.zcrq}</span></li>
     <li><label class="label_name">车辆识别码：</label><span class="jt_content">${nb.clsbm}</span></li>
     <li><label class="label_name">发动机号：</label><span class="jt_content">${nb.fdjh}</span></li>
     <li><label class="label_name">车辆类型：</label><span class="jt_content">${nb.cllx}</span></li>
     <li><label class="label_name">燃油类型：</label><span class="jt_content">${nb.rylx}</span></li>
     <li><label class="label_name">上证城市：</label><span class="jt_content">${nb.szcs}</span></li>
     <li><label class="label_name">是否过户：</label><span class="jt_content">${nb.sfgh}</span></li>
    </ul>

    <div class="Query_results_title">投保信息（报价详细）</div>
       <#list xz as xxz>
      <ul class="Insured_inquiry_info clearfix">
       <li><label class="label_name">${xxz.xzmc}：</label><div class="jt_content">
               <#if xxz.istrue=='1'&&xxz.xzmc!='车船税'>投保111
                   <span class="time">起保时间:${xxz.qbsj}</span>
                   <span class="cost">保费：￥${xxz.bxje}</span>
               </#if>
               <#if xxz.istrue!='1'&&xxz.xzmc!='车船税'>未投保111
               </#if>
               <#if xxz.xzmc=='车船税'&&xxz.istrue!='1'>
                   未缴纳
               </#if>
               <#if xxz.xzmc=='车船税'&&xxz.istrue=='1'>
                   正常缴纳
               </#if>
           </div>
       </li>

       <#--<li><label class="label_name">${xxz.xzmc}：</label><div class="jt_content">
               <#if xxz.istrue=='1'>正常缴纳111</#if>
               <#if xxz.istrue!='1'>未缴纳111</#if>
           </div>
       </li>

       <li class="comm_insurance">
         <div class="clearfix"><label class="label_name">${xxz.xzmc}：</label>
             <div class="jt_content">
                 <#if xxz.istrue=='1'>投保111
                     <span class="time">起保时间:${xxz.qbsj}</span>
                     <span class="cost">保费：￥${xxz.bxje}</span>
                 </#if></div>
         </div>-->
          <li class="comm_insurance">
       </#list>
          <table cellpadding="0" cellspacing="0" class="insurance_style" width="100%">
          <thead>
           <tr>
            <th  width="180px">保险名称</th>
            <th>投保金额</th>
            <th width="100px">保险费用</th>
           </tr>
          </thead>
          <tbody>
          <#list nx as nx>
           <tr>
            <td>${nx.xzmc}</td>
            <td>足额投保</td>
            <td>￥${nx.bxje}</td>
           </tr>
          </#list>
          </tbody>
        </table>
        <div class="clearfix Non-deductible marginsx">
           <label class="label_name">不计免赔：</label>
             <div class="jt_content">
                <#list bjmp as bj>
                 <span class="name">
                      ${bj.xzmc}
                 </span>
                </#list>
             </div>
            <span class="cost">保费：￥${zongjia.zbf}</span>
            </div>
         </li>      
      </ul>
    </div>
    <!--保费统计-->
    <div class="Premium_statistics">保费总计：￥<b>${zje.zj}</b>元/年</div>
 </div>

</div>
<div class="Button_operation clearfix">
 <a href="javascript:history.go(-1)" class="btn btn_huise  General_size_btn">返回上一步</a>
 <a href="保单认证.html" class="btn btn_red  General_size_btn">确认购买</a>
</div>
</div>
</div> 
<!--优势-->
<div class="Advantage_style">
 <div class="footerbox">
  <ul class="clearfix">
   <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_17.png" /></div>
    <div class="right_content">
     <h3>全程购物安全保障</h3>
     <h4>用户消费，资金安全</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_07.png" /></div>
    <div class="right_content">
     <h3>专业汽车销售平台</h3>
     <h4>实体汽车销售企业</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_09.png" /></div>
    <div class="right_content">
     <h3>获得相关认证授权</h3>
     <h4>保险,汽车销售许可</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_11.png" /></div>
    <div class="right_content">
     <h3>24小时服务热线</h3>
     <h4>有问题实时沟通联系</h4>
    </div>
   </li>
  </ul>
 </div>
</div>
<!--底部样式-->
<div class="footer">
 <div class="footerbox clearfix" >
  <div class="server_box clearfix">
   <dl>
    <dt>关于我们</dt>
    <dd><a href="#">网站介绍</a></dd>
    <dd><a href="#">苏车宝</a></dd>
    <dd><a href="#">官方微信</a></dd>
    <dd><a href="#">联系我们</a></dd>
    <dd><a href="#">名称</a></dd>
   </dl>
   <dl>
    <dt>服务承诺</dt>
    <dd><a href="#">免手续费</a></dd>
    <dd><a href="#">超长质保</a></dd>
    <dd><a href="#">协助服务</a></dd>

   </dl><dl>
    <dt>支付方式</dt>
    <dd><a href="#">支付宝</a></dd>
    <dd><a href="#">微信支付</a></dd>
    <dd><a href="#">银联支付</a></dd>
    <dd><a href="#">支付步骤</a></dd>
   </dl>
  </div>
  <div class="weixin_style">
   <div class="sys_style"><img src="images/waixin.png" width="100px"/><h5>微信公众号</h5></div>
    <div class="sys_style"><img src="images/waixin.png" width="100px"/><h5>微信公众号</h5></div>
  </div> 
  <div class="footer_phone"><img src="images/phone.png" /></div>
 </div>
 <div class="Copyright">
 <div class="footerbox">
 保险业务经营许可证：2609570xxxx0800 xxxxxxxxxx有限公司：440301105759096 粤ICP备1xxxxxxxx号<br /> Copyright ©2006-2017 苏车宝汽车服务平台版权所有
 </div> 
 </div>
</div>  
</body>
</html>
