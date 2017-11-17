<%--
  Created by IntelliJ IDEA.
  User: bubbles
  Date: 2017/11/6
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0058)http://demo.cssmoban.com/cssthemes4/cpts_593_bam/typo.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Short Codes</title>
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


    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/a_login1.js"></script>
    <script type="text/javascript" src="./assets/js/a_kaoshiti.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--start-smoth-scrolling-->
    <link rel="preload" href="./assets/js/integrator.js" as="script"><script type="text/javascript" src="./assets/js/integrator.js"></script><link rel="prefetch" href="https://securepubads.g.doubleclick.net/static/3p_cookie.html"></head>
<body>
<!--head-->
<div class="head" id="home">
    <div class="container">
        <div class="head-top">
            <div class="col-md-6 h-left">
                <p>试题库</p>
            </div>
            <div class="col-md-6 h-right">
                <ul>

                    <li><a href="#" onclick="goperson()"><div id="username"   class="glyphicon glyphicon-user"> </div></a></li>
                    <li><a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/gallery.html#"><span class="twit"> <font size="2" color="white">注销</font></span></a></li>
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
                   <%-- <a href="upload.jsp"><span class="label label-success">我要上传</span></a>--%>
                </h1>
            </div>
            <div class="head-right">
                <div class="top-nav">
                    <span class="menu"><img src="./assets/img/nav-icon.png" alt=""> </span>
                    <ul>
                        <li><a href="login1.jsp" ><span class="glyphicon glyphicon-home"></span>首页</a></li>
                        <%--  <li><a href="about.jsp" ><span class="glyphicon glyphicon-info-sign"></span>平时作业</a></li>--%>
                        <li><a href="shortcodes.jsp" class="active"><span class="glyphicon glyphicon-certificate"></span>考试题</a></li>
                        <li><a href="upload.jsp"><span class="glyphicon glyphicon-envelope"></span>我要上传</a></li>


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



<div class="about">
    <div class="container">

            <div style="height:35px;">
                请选择文档类型:
                <select class=" udoc_school" disabled="true"  name="udoc_school" style="width:190px;"><option value=0>请选择学校</option></select>
                <select class="udoc_department" name="udoc_department" style="width:190px;"><option value=0>请选择学院</option></select>
                <select class="udoc_major" name="udoc_major" style="width:190px;"><option value=0>请选择专业</option></select>
                <select class="udoc_subject" name="udoc_subject" style="width:150px;"><option value=0>请选择科目</option></select>
                <select class="udoc_grade" name="udoc_grade" style="width:100px;">
                    <option value=0>请选择年级</option>
                    <option value ="大一">大一</option>
                    <option value ="大二">大二</option>
                    <option value="大三">大三</option>
                    <option value="大四">大四</option>
                    <option value="研一">研一</option>
                    <option value="研二">研二</option>
                    <option value="研三">研三</option>
                </select>

                <button type="button" style="width:70px;height:35px;" class="label label-success" onclick="searchfiles()" >搜  索</button></a>

            </div>

        <table class="table table-bordered table-hover" style="margin-top:20px;">
            <thead>
            <th style="width:1px;">编号</th>
            <th style="width:100px;">名称</th>
            <th style="width:10px;">操作</th>
            </thead>
            <tbody class="tbody-info"></tbody>
        </table>



        <div class="contact-bottom">

        </div>


    </div>
</div>




<!--address-starts-->

<!--address-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <a href=" "><h3>Humanity</h3></a>
            <p>Copyright © 2016.Company name All rights reserved.More Templates <a href=" " target="_blank" title="模板之家">模板之家</a> - Collect from <a href=" " title="网页模板" target="_blank">网页模板</a></p>
            <a href=" " class="scroll"><img src="./assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->

</body></html>
