<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理员登陆</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script src="../assets/js/ca-pub-1542822386688301.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="../assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="../assets/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->
    <script type="text/javascript" src="../assets/js/move-top.js"></script>
    <script type="text/javascript" src="../assets/js/easing.js"></script>

    <script type="text/javascript" src="../assets/js/a_adminLogin.js"></script>
    <script type="text/javascript" src="../assets/js/a_person.js"></script>
    <c:import url="<%= request.getContextPath()%>/WEB-INF/jsp/include/script.jsp" charEncoding="UTF-8"/>


    <!--start-smoth-scrolling-->
    <link rel="preload" href="../assets/js/integrator.js" as="script">
    <script type="text/javascript" src="../assets/js/integrator.js"></script>
    <link rel="prefetch" href="https://securepubads.g.doubleclick.net/static/3p_cookie.html">
</head>
<body>
<!--head-->
<div class="head" id="home">
    <div class="container">
        <div class="head-top">
            <div class="col-md-6 h-left">
                <p>管理员登陆</p>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>

<div style="padding: 100px 100px 10px;" align="center">
    <h2 class="glyphicon glyphicon-user"></h2>
    <center><h3> 管理员登录</h3></center>
    <br><br><br>
    <div class="input-group input-group-lg">
        <span class="input-group-addon" style="width:50px;height:50px;"><i class="glyphicon glyphicon-user"></i></span>
        <input type="text" class="form-control" style="width:300px;height:50px;font-size:18px" id="username"
               placeholder="用户名">
    </div>
    <br>
    <div class="input-group">
        <span class="input-group-addon" style="width:50px;height:50px;"><i class="glyphicon glyphicon-lock"></i></span>
        <input type="password" class="form-control" style="width:300px;height:50px;font-size:18px" id="password"
               placeholder="密 码">
    </div>
    <br><br>
    <input type="button" style="width:200px;height:40px;border-radius:25px;background:#C0C0C0" onclick="login()"
           value="登 陆">
</div>
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
            <p>Copyright © 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                   target="_blank" title="模板之家">模板之家</a>
                - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#home" class="scroll"><img
                    src="<%= request.getContextPath()%>/assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->
</body>
</html>
