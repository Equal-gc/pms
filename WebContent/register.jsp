<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0061)http://demo.cssmoban.com/cssthemes4/cpts_593_bam/contact.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script src="./assets/js/ca-pub-1542822386688301.js"></script><script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="./assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="./assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="./assets/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->
    <script type="text/javascript" src="./assets/js/move-top.js"></script>
    <script type="text/javascript" src="./assets/js/easing.js"></script>
    <script type="text/javascript" src="./assets/js/a_upload.js"></script>
    <script type="text/javascript" src="./assets/js/a_register.js"></script>
    <c:import url="<%= request.getContextPath()%>/WEB-INF/jsp/include/script.jsp" charEncoding="UTF-8"/>


    <!--start-smoth-scrolling-->
    <link rel="preload" href="./assets/js/integrator.js" as="script"><script type="text/javascript" src="./assets/js/integrator.js"></script><link rel="prefetch" href="https://securepubads.g.doubleclick.net/static/3p_cookie.html"></head>
<body>
<!--head-->
 <div class="head" id="home">
    <div class="container">
        <div class="head-top">
            <div class="col-md-6 h-left">
                <p>注册</p>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
 </div>

<div style="padding: 100px 100px 10px;" align="center">
    <center><h3 style="position:relative;"> 用户注册</h3></center><br><br><br>
    <div class="input-register">
        <table class="input-table" align="center">
            <tr style="height: 60px">
                <td>
                    <input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_name" onblur="isExit()" placeholder="用户名(必填项)">
                </td>
                <td style="width:200px">
                    <div id="usernamewarning" style="color:#F00"></div>
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <input type="password" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_pwd" placeholder="密码(必填项)">
                </td>
                <td>
                    <div id="userpwdwarning" style="color:#F00"></div>
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_realname" placeholder="姓名">
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_email" placeholder="联系电话(E-mail)">
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <%--<input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_school" placeholder="学校">--%>
                    <select class=" udoc_school" id="u_school" name="udoc_school" style="width:400px;height: 60px"><option value=0>请选择学校</option></select>
                </td>
                <td>
                    <div id="userschwarning" style="color:#F00"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <%--<input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_depart" placeholder="院系">--%>
                    <select class="udoc_department" id="u_depart" name="udoc_department" style="width:400px;height: 60px;"><option value=0>请选择学院</option></select>
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <%--<input type="text" class="form-control" style="width:400px;height:50px;font-size:16px" id="u_major" placeholder="专业">--%>
                    <select class="udoc_major" id="u_major" name="udoc_major" style="width:400px;height: 60px;"><option value=0>请选择专业</option></select>
                </td>
            </tr>
            <tr>
                <td>
                    <select class="user_education" id="u_education" name="user_education" style="width:400px;height: 60px;">
                        <option value=0>请选择学历</option>
                        <option value="本科生">本科生</option>
                        <%--<option value="研究生">研究生</option>--%>
                    </select>
                </td>
                <td style="width:200px">
                    <div id="user_education_warning" style="color:#F00"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <select class="user_entrance_time" id="u_entrance_time" name="user_entrance_time" style="width:400px;height: 60px;"><option value=0>请选择入学时间</option></select>
                </td>
                <td style="width:200px">
                    <div id="user_entrance_time_warning" style="color:#F00"></div>
                </td>
            </tr>

            <tr style="height: 60px">
                <td>
                   <%-- style="display:none;"--%>
                    <input type="text"  readonly="true"  class="form-control" style="width:400px;height:50px;font-size:16px" id="user_current_grade" placeholder="年级">
                </td>
            </tr>
            <tr style="height: 60px">
                <td>
                    <input type="text"  disabled="true" class="form-control" style="width:400px;height:50px;font-size:16px" id="user_current_term" placeholder="第几学期">
                </td>
            </tr>
        </table><br><br>
        <input type="button" style="width:200px;height:40px;border-radius:25px;background:#C0C0C0" onclick="register()" value="立即注册">
    </div>
</div>

<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html"><h3>Humanity</h3></a>
            <p>Copyright © 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            <a href="http://demo.cssmoban.com/cssthemes4/cpts_593_bam/index.html#home" class="scroll"><img src="<%= request.getContextPath()%>/assets/img/top-arrow.png" alt=""></a>
        </div>
    </div>
</div>
<!--footer-end-->
</body></html>
