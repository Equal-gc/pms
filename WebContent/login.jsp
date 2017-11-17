<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0059)http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="keywords" content="Humanity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
    <script src="<%= request.getContextPath()%>/assets/js/ca-pub-1542822386688301.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="<%= request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<%= request.getContextPath()%>/assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="<%= request.getContextPath()%>/assets/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/move-top.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--start-smoth-scrolling-->
    <link rel="preload" href="<%= request.getContextPath()%>/assets/js/integrator.js" as="script">
    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/integrator.js">

    </script><link rel="prefetch" href="https://securepubads.g.doubleclick.net/static/3p_cookie.html"></head>
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
                    <li><a href="denglu.jsp">
                        <span class="fb"> <font size="2" color="white">登陆</font></span></a></li>
                    <li><a href="register.jsp"><span class="twit"> <font size="2" color="white">注册</font></span></a></li>
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
            </div>
            <div class="head-right">
                <div class="top-nav">
                    <span class="menu"><img src="<%= request.getContextPath()%>/assets/img/nav-icon.png" alt=""> </span>
                    <ul>
                        <li><a href="login.jsp" class="active"><span class="glyphicon glyphicon-home"></span>首页</a></li>
                        <li><a href="denglu.jsp"><span class="glyphicon glyphicon-certificate"></span>考试题</a></li>
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
<!--banner-starts-->
<div class="banner">
    <div class="container">
        <div class="banner-top">
            <section class="slider">
                <div class="flexslider">

                    <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 1000%; transition-duration: 0s; transform: translate3d(-3420px, 0px, 0px);"><li class="clone" style="width: 1140px; float: left; display: block;">
                        <div class="banner-text">
                            <h3>Lorem ipsum dolor sit amet</h3>
                            <p>Aenean consectetur fringilla mi</p>
                        </div>
                    </li>
                        <li class="" style="width: 1140px; float: left; display: block;">
                            <div class="banner-text">
                                <h3>Lorem ipsum dolor sit amet</h3>
                                <p>Aenean consectetur fringilla mi</p>
                            </div>
                        </li>
                        <li class="" style="width: 1140px; float: left; display: block;">
                            <div class="banner-text">
                                <h3>Lorem ipsum dolor sit amet</h3>
                                <p>Aenean consectetur fringilla mi</p>
                            </div>
                        </li>
                        <li class="flex-active-slide" style="width: 1140px; float: left; display: block;">
                            <div class="banner-text">
                                <h3>Lorem ipsum dolor sit amet</h3>
                                <p>Aenean consectetur fringilla mi</p>
                            </div>
                        </li>
                        <li class="clone" style="width: 1140px; float: left; display: block;">
                            <div class="banner-text">
                                <h3>Lorem ipsum dolor sit amet</h3>
                                <p>Aenean consectetur fringilla mi</p>
                            </div>
                        </li></ul></div><ol class="flex-control-nav flex-control-paging"><li><a class="">1</a></li>
                    <li><a class="">2</a></li><li><a class="flex-active">3</a></li></ol><ul class="flex-direction-nav"><li><a class="flex-prev" href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">Previous</a></li><li><a class="flex-next" href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">Next</a></li></ul></div>
            </section>
        </div>
    </div>
</div>
<!--banner-end-->
<!--FlexSlider-->
<link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/flexslider.css" type="text/css" media="screen">
<script defer="" src="<%= request.getContextPath()%>/assets/js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!--End-slider-script-->
<!--welcome-starts-->
<%--<div class="welcome">
    <div class="container">
        <div class="welcome-top">
            <div class="col-md-4 welcome-left heading">
                <h2>Welcome</h2>
                <h5>Donec placerat commodo</h5>
                <p>Quisque dictum enim sit amet justo cursus, et venenatis erat facilisis. Donec convallis arcu in purus mattis, vel interdum tellus fringilla.</p>
            </div>
            <div class="col-md-4 welcome-left">
                <div class="welcome-one">
                    <div class="wel-left">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                    </div>
                    <div class="wel-right">
                        <h4>Quisque tempus orci quis </h4>
                        <p> Vestibulum nec ultrices justo. Donec eu leo quis libero commodo egestas. Cras lacinia pellentesque pretium.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="welcome-two">
                    <div class="wel-left">
                        <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                    </div>
                    <div class="wel-right">
                        <h4>Quisque tempus orci quis </h4>
                        <p> Vestibulum nec ultrices justo. Donec eu leo quis libero commodo egestas. Cras lacinia pellentesque pretium.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-4 welcome-left">
                <div class="welcome-one">
                    <div class="wel-left">
                        <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                    </div>
                    <div class="wel-right">
                        <h4>Quisque tempus orci quis </h4>
                        <p> Vestibulum nec ultrices justo. Donec eu leo quis libero commodo egestas. Cras lacinia pellentesque pretium.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="welcome-two">
                    <div class="wel-left">
                        <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                    </div>
                    <div class="wel-right">
                        <h4>Quisque tempus orci quis </h4>
                        <p> Vestibulum nec ultrices justo. Donec eu leo quis libero commodo egestas. Cras lacinia pellentesque pretium.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>--%>
<!--welcome-end-->
<div class="copyrights">Collect from <a href="">手机网站模板</a></div>
<!--events-starts-->
<%--<div class="events">
    <div class="container">
        <div class="events-top heading">
            <h3>Latest Events</h3>
            <p>Donec egestas nibh eu ipsum euismod cursus. Aliquam et arcu blandit, efficitur ante a, lacinia neque. Pellentesque lectus neque, vehicula vitae massa ac, malesuada dictum velit.</p>
        </div>
        <div class="events-bottom">
            <div class="col-md-6 event-left">
                <img src="<%= request.getContextPath()%>/assets/img/e1.jpg" alt="">
                <div class="event">
                    <h4>Vivamus pulvinar lectus eu purus</h4>
                    <p> Etiam varius facilisis mauris, vitae consectetur ipsum pellentesque nec. Mauris iaculis mollis ante a sagittis. Sed eu ligula urna. Suspendisse potenti. Donec eu porttitor diam, eget eleifend massa.</p>
                </div>
                <div class="date">
                    <p>May 29,2015</p>
                </div>
            </div>
            <div class="col-md-3 event-right">
                <div class="e-1">
                    <img src="<%= request.getContextPath()%>/assets/img/e2.jpg" alt="">
                    <h4>Morbi et facilisis tellus</h4>
                </div>
                <div class="e-2">
                    <img src="<%= request.getContextPath()%>/assets/img/e3.jpg" alt="">
                    <h4>Morbi et facilisis tellus</h4>
                </div>
            </div>
            <div class="col-md-3 event-right">
                <div class="e-1">
                    <img src="<%= request.getContextPath()%>/assets/img/e4.jpg" alt="">
                    <h4>Morbi et facilisis tellus</h4>
                </div>
                <div class="e-2">
                    <img src="<%= request.getContextPath()%>/assets/img/e5.jpg" alt="">
                    <h4>Morbi et facilisis tellus</h4>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>--%>
<!--events-end-->
<!--help-starts-->
<%--<div class="help">
    <div class="help-left">
        <img src="<%= request.getContextPath()%>/assets/img/h2.jpg" alt="">
    </div>
    <div class="help-right heading">
        <h3>We Need Your Help</h3>
        <h5>Mauris iaculis mollis ante a sagittis eget.</h5>
        <p>Praesent iaculis purus at arcu pharetra sodales. Nunc vehicula congue odio ultricies bibendum. Vestibulum vitae varius eros. Curabitur pulvinar tempus pellentesque. Curabitur magna dui, ultricies nec ultrices rutrum, facilisis at augue. Proin laoreet dui gravida dictum euismod. Nullam molestie ante non magna vestibulum imperdiet vitae ac tortor. Praesent sed maximus ligula.</p>
        <div class="tool">
            <a class="tooltips" href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">
                <span></span></a>
        </div>
    </div>
    <div class="clearfix"></div>
</div>--%>
<!--help-end-->
<!--letter-starts-->
<%--<div class="letter">
    <div class="container">
        <div class="letter-top heading">
            <h3>Newsletter Subscription</h3>
            <div class="letter-bottom">
                <form>
&lt;%&ndash;                    <input type="text" value="Enter Name" onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;Enter Name&#39;;}">
                    <input type="text" value="Enter Email" onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;Enter Email&#39;;}">&ndash;%&gt;
                    <input type="submit" value="Subscribe">
                </form>
            </div>
        </div>
    </div>
</div>--%>
<!--letter-end-->
<!--team-starts-->
<%--<div class="team">
    <div class="container">
        <div class="team-top heading">
            <h3>Our Donors</h3>
        </div>
        <div class="team-bottom">
            <div class="col-md-3 team-left wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">
                    <img src="<%= request.getContextPath()%>/assets/img/t1.jpg" alt="">
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
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">
                    <img src="<%= request.getContextPath()%>/assets/img/t2.jpg" alt="">
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
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">
                    <img src="<%= request.getContextPath()%>/assets/img/t3.jpg" alt="">
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
                <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#">
                    <img src="<%= request.getContextPath()%>/assets/img/t4.jpg" alt="">
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
            <a href="" class="scroll"><img src="<%= request.getContextPath()%>/assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->

</body>
</html>