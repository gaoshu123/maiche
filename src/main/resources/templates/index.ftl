<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="保险购买，汽车购买，苏车购，汽车服务一体化">
    <meta name="keywords" content="保险询价,汽车购买,">
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
    <script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="../js/common_js.js" type="text/javascript"></script>
    <script src="../js/footer.js" type="text/javascript"></script>
    <script src="../js/jquery.searchableSelect.js"></script>
    <script src="../js/layer/layer.js" type="text/javascript"></script>
    <title>网站首页</title>
</head>

<body>
<!--顶部样式-->
<div id="header_top">
    <div id="top">
        <div class="top">
            <div class="Collection"><em></em><a href="#">收藏我们</a></div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="toLogin/" class="red">[请登录]</a> 新用户<a href="/toLogin/registered" class="red">[免费注册]</a></li>
                    <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="javascript:" class="hd_menu">我的订单</a>
                        <div class="hd_menu_list" style="display: none;">
                            <ul>
                                <li><a href="../询价订单.html">询价订单</a></li>
                                <li><a href="../保险订单.html">保险订单</a></li>
                                <li><a href="../购车订单.html">新车订单</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="../保单查询.html">保单查询</a> </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="../网站地图.html">网址导航</a></li>
                    <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="../帮助中心.html" class="hd_menu">帮助中心</a>
                        <div class="hd_menu_list" style="display: none;">
                            <ul>
                                <li><a href="../帮助详细.html">常见问题</a></li>
                                <li><a href="../知识库.html">知识问答</a></li>
                                <li><a href="../帮助详细.html">支付方式</a></li>
                                <li><a href="../about/关于我们.html">联系方式</a></li>
                                <li><a href="#">配送服务</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="hd_menu_tit phone_c" data-addclass="hd_menu_hover"><a href="#" class="hd_menu "><i class="icon_phone"></i>手机版</a>
                        <div class="hd_menu_list erweima">
                            <ul>
                                <img src="../images/waixin.png" width="120px" height="120"/>
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
        <div class="logo_style"><a href="index.html"><img src="../images/logo.png" /><h6 class="pingtai_name">一站式汽车综合服务平台</h6></a></div>
        <div class="middle_style">
            <div class="Search">
                <p><select name="" class="select_name"><option value="1">全部</option><option value="2">保险</option><option value="3">商城</option></select><input name="搜索框" type="text" class="text" placeholder="请输入关键字"><input name="" onclick="submit_btn()" type="submit" value="搜索" class="Search_btn"></p>
                <p class="Words">热搜关键字：<a href="../搜索.html">大众</a><a href="#">宝马</a><a href="#">太平洋保险</a><a href="#">福特</a><a href="#">本田</a><a href="#">哈佛</a></p>
            </div>
            <ul class="menu_list">
                <li><a href="index.html" class="menu_name">首页</a></li>
                <li><a href="../cars_list.html" class="menu_name">购车 <em class="Arrows_icon"></em></a>
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
                                            <img src="../images/products/2.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/3.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/4.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/5.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/6.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/7.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/8.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="../images/products/9.jpg" width="80px"/>
                                            <h4>汽车名称</h4>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="Recommended_Brand">
                            <a href="#" class="mb15"><img src="../images/ad_1.jpg" width="100%" height="198px"/></a>
                            <a href="#"><img src="../images/ad_1.jpg" width="100%" height="198px"/></a>
                        </div>
                    </div>
                </li>
                <li><a href="#" class="menu_name">车险<em class="Arrows_icon"></em></a>
                    <div class="Insurance_class">
                        <div class="Insurance_class_Insurance">
                            <h3><a href="../Insurance.html">太平洋保险</a></h3>
                            <p class="jianjie ">又称太平洋保险，简称中国太保或太保，前身是中国太平洋保险公司，成立于1991年5月13日，是经中国人民银行批准设立的全国性股份制商业保险公司。中国太平洋保险以“做一家负责任的保险公司”为使命，以“诚信天下，稳健一生，追求卓越”为企业核心价值观，以“推动和实现可持续的价值增长”为经营理念，不断为客户、股东、员工、社会和利益相关者创造价值，为社会和谐做出贡献。</p>
                            <div class="clauseBlock">
                                <img src="../images/map01.jpg" width="100%" alt="">
                                <ul class="clauseItemList">
                                    <li>? 先赔付，再修车</li>
                                    <li>? 万元以下赔付，3天到账</li>
                                    <li>? 结案支付，60秒到账</li>
                                </ul>
                            </div>
                            <div class="clauseBlock">
                                <img src="../images/map02.jpg" width="100%" alt="">
                                <ul class="clauseItemList">
                                    <li>? 7X24小时</li>
                                    <li>? 百公里免费非事故</li>
                                    <li>? 道路救援服务</li>
                                </ul>
                            </div>
                            <div class="clauseBlock">
                                <img src="../images/map03.jpg" width="100%" alt="">
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

                <li><a href="../知识.html" class="menu_name">知识</a></li>
            </ul>

        </div><div class="contacttop_style"><img src="../images/phone.png" />
            <div class="header_mycount">
                <a href="../购物车.html" class="cart_style"><i class="icon_cart"></i>我的购物车<i class="ci-count">0</i></a>
                <a href="../用户中心.html" class="user_header_style">
                    <i class="icon_user"></i>我的苏车宝
                </a>
            </div>
        </div>
    </div>
</div>
<div class="Slideshow_style clearfix">

    <!--幻灯片-->
    <div id="slideBox" class="slideBox">
        <div class="hd">
            <ul></ul>
        </div>
        <div class="bd">
            <ul>
                <li ><a href="#" target="_blank"><div style="background:url(../images/AD_10.png) no-repeat; background-position:center; width:100%; height:450px"></div></a></li>
                <li ><a href="#" target="_blank"><div style="background: url(../images/AD_1.png) no-repeat #FFEDAF; background-position:center; width:100%; height:450px;"></div></a></li>
                <li><a href="#" target="_blank"><div style="background:url(../images/AD_2.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div></a></li>
            </ul>
        </div>

        <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
        <a class="prev" href="javascript:void(0)"></a>
        <a class="next" href="javascript:void(0)"></a>

    </div>
    <script type="text/javascript">
        jQuery(".slideBox").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true,delayTime:1000,interTime:5000});
    </script>
    <!--栏目分类-->
    <div class="header hot-categories-wrap">
        <div id="Menu" class="clearfix">
            <div class="Menu_style">
                <div id="allSortOuterbox">
                    <div class="hd_allsort_out_box_new">
                        <!--左侧栏目开始-->
                        <ul class="menu_lists">
                            <li class="name">
                                <div class="Menu_name"><em class="header_sidenav_title2"></em><a href="#" class="p_Menu_name">新车</a></div>
                                <div class="menv_Detail">
                                    <div class="cat_pannel clearfix">
                                        <div class="categories-pane">
                                            <dl class="categories-title">
                                                <dt class="fc9 f14">
                                                    新车品牌：
                                                </dt>
                                                <dd>
                                                    <a href="../cars_list.html" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-大众" data-tab="tab-type-0-out-6"><img src="../images/logo/icon_logo_01.png" width="50"/>大众</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-长城哈弗" data-tab="tab-type-1-out-6"><img src="../images/logo/icon_logo_01.png" width="50"/>长城哈弗</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-宝马" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_02.png" width="50"/>宝马</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-福特" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_03.png" width="50"/>福特</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-奔驰" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_04.png" width="50"/>奔驰</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-上汽" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_05.png" width="50"/>上汽</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-丰田" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_06.png" width="50"/>丰田</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-铃木" data-tab="tab-type-2-out-6"><img src="../images/logo/icon_logo_07.png" width="50"/>铃木</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-铃木" data-tab="tab-type-2-out-7"><img src="../images/logo/icon_logo_08.png" width="50"/>铃木</a>
                                                    <a href="" class="categories-tag" rel="nofollow" target="_blank" title="汽车保险-铃木" data-tab="tab-type-2-out-8"><img src="../images/logo/icon_logo_03.png" width="50"/>铃木</a>
                                                    <a href="../cars_list.html" class="All_brands">所有品牌</a>
                                                </dd>

                                            </dl>
                                            <div class="f14 mt10">
                                                <h4 class="fc9 " style="margin-bottom: 6px;">
                                                    热门标签：
                                                </h4>
                                                <ul class="clearfix hot-tag-list" style="margin-right: -5px;">
                                                    <li class="fl mr15 mt5"><a href="../cars_list.html" target="_blank">长城哈佛</a></li>
                                                    <li class="fl mr15 mt5"><a href="../cars_list.html" target="_blank">新车购买</a></li>
                                                    <li class="fl mr15 mt5"><a href="" target="_blank">最新车款</a></li>
                                                    <li class="fl mr15 mt5"><a href="" target="_blank">新车装饰</a></li>
                                                </ul>
                                            </div>
                                            <div class="recommend-product">
                                                <a href="../产品详细.html" class="block" target="_blank" rel="nofollow" title="汽车保险" ><img src="../images/adx_11.png" width="100%" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="name">
                                <div class="Menu_name"><em class="header_sidenav_title5"></em><a href="#" class="p_Menu_name">车险</a></div>
                                <div class="link_name">
                                </div>
                                <div class="menv_Detail">
                                    <div class="cat_pannel clearfix">
                                        <div class="categories-pane">
                                            <dl class="categories-title">
                                                <dt class="fc9 f14">
                                                    保险品牌：
                                                </dt>
                                                <dd>
                                                    <a href="../Insurance.html" class="categories-tag Insurance" rel="nofollow" target="_blank" title="汽车保险-平安车险" data-tab="tab-type-0-out-6"><img src="../images/logo_tpt.png" width="100%"/>太平洋车险</a>
                                                    <a href="../Insurance.html" class="categories-tag Insurance" rel="nofollow" target="_blank" title="汽车保险-阳光车险" data-tab="tab-type-1-out-6"><img src="../images/logo_zgpa.png" width="100%"/>平安车险</a>
                                                    <a href="../Insurance.html" class="categories-tag Insurance" rel="nofollow" target="_blank" title="汽车保险-大地车险" data-tab="tab-type-2-out-6">
                                                        <img src="../images/logo_zgrm.png" width="100%"/>
                                                        中国人民保险</a>
                                                </dd>
                                            </dl>
                                            <div class="f14 mt10">
                                                <h4 class="fc9 " style="margin-bottom: 6px;">
                                                    热门标签：
                                                </h4>
                                                <ul class="clearfix hot-tag-list" style="margin-right: -5px;">
                                                    <li class="fl mr15 mt5"><a href="../保险查询.html" target="_blank">太平洋汽车保险</a></li>
                                                    <li class="fl mr15 mt5"><a href="../保险查询.html" target="_blank">路边快修</a></li>
                                                    <li class="fl mr15 mt5"><a href="" target="_blank">紧急拖车</a></li>
                                                    <li class="fl mr15 mt5"><a href="" target="_blank">救援服务</a></li>
                                                    <li class="fl mr15 mt5"><a href="" target="_blank">修车期间酒店住宿</a></li>
                                                </ul>
                                            </div>
                                            <div class="recommend-product">
                                                <a href="../Insurance.html" class="block" target="_blank" rel="nofollow" title="汽车保险" ><img src="../images/adx_12.png" width="100%" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                            </li>
                            <li class="name">
                                <div class="Menu_name"><em class="header_sidenav_title8"></em><a href="#" class="p_Menu_name">违章</a></div>
                                <div class="link_name">
                                </div>
                                <div class="menv_Detail">
                                    <!--违章查询-->
                                    <div class="Illegal_inquiries clearfix">
                                        <ul>
                                            <li>
                                                <label class="label_name">查询城市：</label><span class="addtext_style">
	           <select>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="河北">河北</option>
            </select>
             <select>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="河北">河北</option>
            </select>
              </span>
                                            </li>
                                            <li class="chepai">
                                                <label class="label_name">车牌号：</label><span class="addtext_style">
               <select>
                <option value="京">京</option>
                <option value="沪">沪</option>
                <option value="翼">翼</option>
            </select>
            <input name="" type="text"  class="text_add "/>
             </span>
                                            </li>
                                            <li>
                                                <label class="label_name">发动机号：</label><span class="addtext_style">
             <input name="" type="text" placeholder="输入发动机后六位"  class="text_add  textwidth"/></span>
                                            </li>
                                            <li>
                                                <label class="label_name">验证码：</label><span class="addtext_style">
             <input name="" type="text" placeholder=""  class="text_add "/>
             <span class="yzm_style">12353</span>
             </span>
                                            </li>
                                            <li>
                                                <a href="javascript:" class="btn Inquire_btn" onclick="Inquire()">查询结果</a>
                                            </li>
                                        </ul>
                                        <!---->
                                        <div class="prompt_styles">
                                            违章查询有效期为24小时，24小时后违章记录更新。
                                        </div>
                                    </div>

                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <script>$("#allSortOuterbox").slide({ titCell:".menu_lists li.name ",mainCell:".menv_Detail",	});</script>
            </div>
        </div>
    </div>
    <!---->
    <div class="back_color pb30">
        <div class="mian_style clearfix">
            <div class="conh1"><span>三大车险保险品牌<br><font>我们支持国内三大车险保险品牌,让用户选择更优惠的保险。</font></span></div>
            <div class="Insurance_species clearfix">
                <a href="../文章介绍.html" class="species_name">全险</a>
                <a href="../文章介绍.html" class="species_name">意外险</a>
                <a href="../文章介绍.html" class="species_name">涉水险</a>
                <a href="#" class="species_name">其他</a>
            </div>
            <ul class="Insurance_list clearfix">
                <li class="Insurance_name">
                    <div class="Insurance_style">
                        <a href="../Insurance.html">
                            <div class="Insurance_logo"><img src="../images/logo_zgrm.png" /></div>
                            <div class="Sales_volume">
                                <p><i class="icon_dui"></i>简单的“极速”理赔</p>
                                <p><i class="icon_dui"></i>享受服务更“容易”</p>
                                <p><i class="icon_dui"></i>人伤无忧理赔更“安心”</p>
                                <p><i class="icon_dui"></i>遍布全国的服务网路</p>
                                <p><i class="icon_dui"></i>增值服务更丰富贴心</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="Insurance_name">
                    <div class="Insurance_style">
                        <a href="../Insurance.html">
                            <div class="Insurance_logo"><img src="../images/logo_zgpa.png" /></div>
                            <div class="Sales_volume">
                                <p><i class="icon_dui"></i>简单的“极速”理赔</p>
                                <p><i class="icon_dui"></i>享受服务更“容易”</p>
                                <p><i class="icon_dui"></i>人伤无忧理赔更“安心”</p>
                                <p><i class="icon_dui"></i>遍布全国的服务网路</p>
                                <p><i class="icon_dui"></i>平安车险不止是省钱</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="Insurance_name">
                    <div class="Insurance_style">
                        <a href="../Insurance.html">
                            <div class="Insurance_logo"><img src="../images/logo_tpt.png" /></div>
                            <div class="Sales_volume"> <p><i class="icon_dui"></i>简单的“极速”理赔</p>
                                <p><i class="icon_dui"></i>免费救援</p>
                                <p><i class="icon_dui"></i>人伤无忧理赔更“安心”</p>
                                <p><i class="icon_dui"></i>遍布全国的服务网路</p>
                                <p><i class="icon_dui"></i>平安车险不止是省钱，理赔更省心</p></div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--汽车销售-->
    <div class="mian_style clearfix relative">
        <div class="conh1"><img src="../images/conh1_03.jpg"><span>新车购买<br><font>我们与多家4S店合作，让用户花更少的钱买到最好的汽车</font></span><img src="../images/conh1_05.jpg"></div>
        <div class="car_logo clearfix">
            <a href="#" class="logo_name"><img src="../images/logo/t01bf092c2732957cc2.jpg" /></a>
            <a href="#" class="logo_name"><img src="../images/logo/t01d23475e72ad1a43b.jpg" /></a>
            <a href="#" class="logo_name"><img src="../images/logo/t01e63154be9dace120.jpg" /></a>
            <a href="#" class="logo_name"><img src="../images/logo/t010f70ea4e168e1bae.jpg" /></a>
            <a href="#" class="logo_name"><img src="../images/logo/t01364dd444364750dc.jpg" /></a>
            <a href="#" class="logo_name"><img src="../images/logo/t01843e22738ed46362.jpg" /></a>
        </div>
        <div class="car_list clearfix">
            <ul class="clearfix">
                <li class="car_Show">
                    <a href="../产品详细.html" class="btn btn_buy display">预付定金购买</a>
                    <div class="car_img"><a href="#"><img src="../images/products/2.jpg" /></a></div>
                    <div class="price"><span class="Current_price"><b>￥11.2万</b>起</span><span class="Original_price">12.45万起</span></div>
                    <a href="../产品详细.html">丰田 凯美瑞 2016款 2.0E 十周年纪念精英版 零首付</a>
                    <div class="transaction">已有<b>40</b>条购买记录</div>
                </li>
                <li class="car_Show">
                    <a href="../产品详细.html" class="btn btn_buy display">预付定金购买</a>
                    <div class="car_img"><a href="#"><img src="../images/products/3.jpg" /></a></div>
                    <div class="price"><span class="Current_price"><b>￥11.2万</b>起</span><span class="Original_price">12.45万起</span></div>
                    <a href="../产品详细.html">丰田 凯美瑞 2016款 2.0E 十周年纪念精英版 零首付</a>
                    <div class="transaction">已有<b>40</b>条购买记录</div>
                </li>
                <li class="car_Show">
                    <a href="#" class="btn btn_buy display">预付定金购买</a>
                    <div class="car_img"><a href="#"><img src="../images/products/5.jpg" /></a></div>
                    <div class="price"><span class="Current_price"><b>￥11.2万</b>起</span><span class="Original_price">12.45万起</span></div>
                    <a href="#">丰田 凯美瑞 2016款 2.0E 十周年纪念精英版 零首付</a>
                    <div class="transaction">已有<b>40</b>条购买记录</div>
                </li>
                <li class="car_Show">
                    <a href="#" class="btn btn_buy display">预付定金购买</a>
                    <div class="car_img"><a href="#"><img src="../images/products/4.jpg" /></a></div>
                    <div class="price"><span class="Current_price"><b>￥11.2万</b>起</span><span class="Original_price">12.45万起</span></div>
                    <a href="#" class="car_name">丰田 凯美瑞 2016款 2.0E 十周年纪念精英版 零首付</a>
                    <div class="transaction">已有<b>40</b>条购买记录</div>
                </li>
            </ul>
            <div class="more_style"><a href="../cars_list.html" class="more">更多新车</a></div>
        </div>
        <div class="ad_style"><a href="#"><img src="../images/ad1_03.png" /></a></div>
        <!--友情链接-->
        <div class="links_style clearfix">
            <div class="title_name"><em></em>友情链接</div>
            <div class="links_list mt15">
                <a href="#">太平洋保险</a>
                <a href="#">中国平安保险</a>
                <a href="#">中国人民保险</a>
                <a href="#">大地保险</a>
                <a href="#">汽车之家</a>
                <a href="#">太平洋保险</a>
            </div>
        </div>
    </div>
    <!--优势-->
    <div class="Advantage_style">
        <div class="footerbox">
            <ul class="clearfix">
                <li class="clearfix ensure_name">
                    <div class="left_icon"><img src="../images/icon_img_17.png" /></div>
                    <div class="right_content">
                        <h3>全程购物安全保障</h3>
                        <h4>用户消费，资金安全</h4>
                    </div>
                </li>
                <li class="clearfix ensure_name">
                    <div class="left_icon"><img src="../images/icon_img_07.png" /></div>
                    <div class="right_content">
                        <h3>专业汽车销售平台</h3>
                        <h4>实体汽车销售企业</h4>
                    </div>
                </li>
                <li class="clearfix ensure_name">
                    <div class="left_icon"><img src="../images/icon_img_09.png" /></div>
                    <div class="right_content">
                        <h3>获得相关认证授权</h3>
                        <h4>保险,汽车销售许可</h4>
                    </div>
                </li>
                <li class="clearfix ensure_name">
                    <div class="left_icon"><img src="../images/icon_img_11.png" /></div>
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
                <div class="sys_style"><img src="../images/waixin.png" width="100px"/><h5>微信公众号</h5></div>
                <div class="sys_style"><img src="../images/waixin.png" width="100px"/><h5>微信公众号</h5></div>
            </div>
            <div class="footer_phone"><img src="../images/phone.png" /></div>
        </div>
        <div class="Copyright">
            <div class="footerbox">
                保险业务经营许可证：2609570xxxx0800 xxxxxxxxxx有限公司：440301105759096 粤ICP备1xxxxxxxx号<br /> Copyright ©2006-2017 苏车宝汽车服务平台版权所有
            </div>
        </div>
    </div>
    <!--浮动图层-->
    <!--右侧菜单栏购物车样式-->
    <div class="fixedBox">
        <ul class="fixedBoxList">
            <li class="fixeBoxLi cart_bd" style="display:block;" >
                <p class="good_cart">0</p>
                <span class="fixeBoxSpan"></span><a href="../购物车.html"> <strong>购物车</strong></a></li>
            <li class="fixeBoxLi Service startWork"> <span class="fixeBoxSpan"></span> <strong>在线客服</strong>
                <div class="ServiceBox">
                    <div class="bjfff"></div>
                    <dl onclick="javascript:;">
                        <dt><img src="../images/Service1.png" width="70px"></dt>
                        <dd> <strong>QQ客服1</strong>
                            <p class="p1">9:00-22:00</p>
                            <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
                        </dd>
                    </dl>
                </div>
            </li>
            <li class="fixeBoxLi cart_bd erwim" style="display:block;" id="cartboxs">
                <span class="fixeBoxSpan"></span> <strong>微信</strong>

                <div class="cartBox"> <div class="bjfff"></div>
                    <img src="../images/waixin.png" width="140px"/> <h4 style=" margin:10px 0px; color:#666; font-weight:normal">苏车宝微信公众号</h4></div></li>
            <li class="fixeBoxLi Home"> <a href="index.html"> <span class="fixeBoxSpan"></span> <strong>返回首页</strong> </a> </li>
            <li class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan"></span> <strong>返回顶部</strong> </li>
        </ul>
    </div>
</body>
</html>
<script type="text/javascript">
    $(function(){
        $('.Illegal_inquiries select').searchableSelect();
    });
    /***违章查询**/
    function Inquire(){
        location.href="违章查询结果.html";
    }
    /*********搜索*********/
    function submit_btn(){
        $(".Search input[type$='text']").each(function(n){
            if($(this).val()=="")
            {

                layer.alert("搜索框不能为空！",{
                    title: '提示框',
                    icon:0,
                });
                return false;
            }
            else{
                location.href="搜索.html";

            }
        })
    }
</script>