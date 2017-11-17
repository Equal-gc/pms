<%--
  Created by IntelliJ IDEA.
  User: bubbles
  Date: 2017/11/6
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0061)http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html -->
<html class=" js csstransitions"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gallery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="keywords" content="Humanity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
    <script src="./assets/js/ca-pub-1542822386688301.js"></script><script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="./assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="./assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="./assets/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->
    <script type="text/javascript" src="./assets/js/move-top.js"></script>
    <script type="text/javascript" src="./assets/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--start-smoth-scrolling-->
    <!--script-->
    <script src="./assets/js/modernizr.custom.97074.js"></script>
    <script src="./assets/js/jquery.chocolat.js"></script>
    <link rel="stylesheet" href="./assets/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
    <!--light-box-files -->
    <script type="text/javascript">
        $(function() {
            $('.gallery-bottom a').Chocolat();
        });
    </script>
    <link rel="preload" href="./assets/js/integrator.js" as="script"><script type="text/javascript" src="./assets/js/integrator.js"></script><link rel="prefetch" href="https://securepubads.g.doubleclick.net/static/3p_cookie.html"></head>
<body>
<!--head-->
<div class="head" id="home">
    <div class="container">
        <div class="head-top">
            <div class="col-md-6 h-left">
                <p>+123 456 7897 , +132 567 8977</p>
            </div>
            <div class="col-md-6 h-right">
                <ul>
                    <li><a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#"><span class="fb"> <font size="2" color="white">登陆</font></span></a></li>
                    <li><a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#"><span class="twit"> <font size="2" color="white">注册</font></span></a></li>
                    <li><a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#"><span class="pin"> </span></a></li>
                    <li><a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#"><span class="rss"> </span></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--head-->
<!--header-->
<div class="header">
    <div class="container">
        <div class="header-main">
            <div class="logo">
                <h1 class="b1">
                    <a href="upload.jsp"><span class="label label-success">我要上传公共课</span></a>
                </h1>
                <h1 class="b1">
                    <a href="major.jsp"><span class="label label-warning">我要上传专业课</span></a>
                </h1>
            </div>
            <div class="head-right">
                <div class="top-nav">
                    <span class="menu"><img src="./assets/img/nav-icon.png" alt=""> </span>
                    <ul>
                        <li><a href="login.jsp" ><span class="glyphicon glyphicon-home"></span>首页</a></li>
                        <li><a href="about.jsp" ><span class="glyphicon glyphicon-info-sign"></span>平时作业</a></li>
                        <li><a href="shortcodes.jsp"><span class="glyphicon glyphicon-certificate"></span>考试题</a></li>
                        <li><a href="gallery.jsp" class="active"><span class="glyphicon glyphicon-picture"></span>考研题</a></li>
                        <li><a href="contact.jsp"><span class="glyphicon glyphicon-envelope"></span>国考</a></li>
                        <li><a href="contact.jsp"><span class="glyphicon glyphicon-envelope"></span>四六级</a></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <!--script-->
                    <script>
                        $("span.menu").click(function(){
                            $(".top-nav ul").slideToggle(500, function(){
                            });
                        });
                    </script>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//header-->
<!--gallery-starts-->
<div class="gallery">
    <div class="container">
        <div class="gallery-top heading">
            <div style="height:35px;" align="left">
                请选择公共课文档类型:
                <select class="kaoyan_subject" name="udoc_grade" style="width:120px;">
                    <option value=0>请选择科目</option>
                    <option value ="政治">政治</option>
                    <option value ="数学">数学</option>
                    <option value="英语">英语</option>
                </select>
                <button type="button" style="width:70px;height:35px;" class="label label-success" onclick="search()" >搜索</button></a>
            </div>
            <div style="height:35px;" align="left">
                请选择专业课文档类型:
                <select class=" kaoyan_school" name="udoc_school" style="width:190px;"><option value=0>请选择学校</option></select>
                <select class="kaoyan_department" name="udoc_department" style="width:190px;"><option value=0>请选择学院</option></select>
                <select class="kaoyan_major" name="udoc_major" style="width:190px;"><option value=0>请选择专业</option></select>
                <button type="button" style="width:70px;height:35px;" class="label label-success" onclick="search()" >搜索</button></a>
            </div>
        </div>
        <div class="gallery-bottom grid">
            <table class="table table-bordered table-hover" style="margin-top:20px;">
                <thead>
                <th style="width:1px;">编号</th>
                <th style="width:100px;">名称</th>
                <th style="width:10px;">操作</th>
                </thead>
                <tbody class="tbody-info"></tbody>
            </table>
            </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!--gallery-end-->
<!--address-starts-->
<div class="address">
    <div class="container">
        <div class="address-top">
            <div class="col-md-4 add-left">
                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                <p><label>Company name.</label>
                    795 Folsom Ave, Suite 600
                    San Francisco, CA 94107</p>
            </div>
            <div class="col-md-4 add-left">
                <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                <p>+122 235 5689 ,
                    <br>+132 326 3695</p>
            </div>
            <div class="col-md-4 add-left">
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                <p><a href="mailto:example@email.com">contact@example.com</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--address-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html"><h3>Humanity</h3></a>
            <p>Copyright © 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#home" class="scroll"><img src="./assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->

</body></html>
