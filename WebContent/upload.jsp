<%--
  Created by IntelliJ IDEA.
  User: bubbles
  Date: 2017/11/7
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0059)http://demo.cssmoban.com/cssthemes4/cpts_593_bam/about.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我要上传</title>
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
    <script type="text/javascript" src="./assets/js/a_upload.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/a_login1.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <style type="text/css">
        .file {
            position: relative;
            display: inline-block;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
        }
        .file input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }
        .file:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }
    </style>
        <!--start-smoth-scrolling-->
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
                    <li><a href="person.jsp">欢迎您：<%=request.getSession().getAttribute("username")%></a></li>
                    <li><a href=""><span class="twit"> <font size="2" color="white">注销</font></span></a></li>
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
            <div class="head-right">
                <div class="top-nav">
                    <span class="menu"><img src="./assets/img/nav-icon.png" alt=""> </span>
                    <ul>
                        <li><a href="login1.jsp"><span class="glyphicon glyphicon-home"></span>首页</a></li>
                        <li><a href="shortcodes.jsp"><span class="glyphicon glyphicon-certificate"></span>考试题</a></li>
                        <li><a href="upload.jsp" class="active"><span class="glyphicon glyphicon-picture"></span>我要上传</a></li>
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
<!--about-starts-->
<div class="about">
    <div class="container">
        <form action="./pms/document/upload" enctype="multipart/form-data" encoding="multipart/form-data" method="post">
            <div style="height:35px;">
            请选择文档类型:
                        <select class=" udoc_school" name="udoc_school" style="width:190px;"><option value=0>请选择学校</option></select>
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
                        <select class="udoc_type" name="udoc_type" style="width:100px;">
                            <option value=0>请选择类型</option>
                            <option value ="平时作业">平时作业</option>
                            <option value ="考试题">考试题</option>
                            <option value="考研题">考研题</option>
                            <option value="国考">国考</option>
                            <option value="四六级">四六级</option>
                        </select>
        </div>
        <div style="height:35px;">文档积分(请合理)：<input type="text" name="udoc_points" id="points"/>
        </div>
        <div style="height:35px;">
                    <input type="file" name="udoc_name" value="udoc_name">
                <input type="submit" value="我要上传">
                </a>
       <%--     <div id="login-error" style="color: #F00"><%=request.getAttribute("error")%></div>--%>
            <div id="login-error" style="color: #F00">${requestScope.message}</div>
        </div>
        </form>


    </div>
</div>
<!--about-end-->
<!--why-starts-->
<%--<div class="why">
    <div class="container">
        <div class="why-top heading">
            <h3>why Choose Us</h3>
            <p>Donec egestas nibh eu ipsum euismod cursus. Aliquam et arcu blandit, efficitur ante a, lacinia neque. Pellentesque lectus neque, vehicula vitae massa ac, malesuada dictum velit.</p>
        </div>
        <div class="why-bottom">
            <div class="col-md-7 why-left">
                <div class="why-1">
                    <span class="glyphicon glyphicon-film" aria-hidden="true"></span>
                    <div class="why-text">
                        <h4>My vision</h4>
                        <p>Proin pretium ante in lacinia sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                    </div>
                </div>
                <div class="why-2">
                    <span class="glyphicon glyphicon-flag" aria-hidden="true"></span>
                    <div class="why-text">
                        <h4>My mission</h4>
                        <p>Proin pretium ante in lacinia sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                    </div>
                </div>
                <div class="why-2">
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    <div class="why-text">
                        <h4>My history</h4>
                        <p>Proin pretium ante in lacinia sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-5 why-right">
                <img src="./assets/img/w1.jpg" alt="">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>--%>
<!--why-end-->
<!--team-starts-->
<%--<div class="team">
    <div class="container">
        <div class="team-top heading">
            <h3>Our Donators</h3>
        </div>
        <div class="team-bottom">
            <div class="col-md-3 team-left wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/about.html#">
                    <img src="./assets/img/t1.jpg" alt="">
                    <div class="captn">
                        <h4>Jane Doe</h4>
                        <p>Nam id urna ipsum</p>
                    </div>
                    <div class="team-text">
                        <h5>Jane Doe</h5>
                        <p>Nam id urna ipsum</p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 team-left wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/about.html#">
                    <img src="./assets/img/t2.jpg" alt="">
                    <div class="captn">
                        <h4>Adaline</h4>
                        <p>Nam id urna ipsum</p>
                    </div>
                    <div class="team-text">
                        <h5>Adaline</h5>
                        <p>Nam id urna ipsum</p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 team-left wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/about.html#">
                    <img src="./assets/img/t3.jpg" alt="">
                    <div class="captn">
                        <h4>Thomas</h4>
                        <p>Nam id urna ipsum</p>
                    </div>
                    <div class="team-text">
                        <h5>Thomas</h5>
                        <p>Nam id urna ipsum</p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 team-left wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/about.html#">
                    <img src="./assets/img/t4.jpg" alt="">
                    <div class="captn">
                        <h4>Selena</h4>
                        <p>Nam id urna ipsum</p>
                    </div>
                    <div class="team-text">
                        <h5>Selena</h5>
                        <p>Nam id urna ipsum</p>
                    </div>
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>--%>
<!--team-end-->
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
            <a href=""><h3>Humanity</h3></a>
            <p>Copyright © 2016.Company name All rights reserved.More Templates <a href="" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            <a href="" class="scroll"><img src="./assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->

</body></html>
