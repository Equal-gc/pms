<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!-- start: Header -->
<div class="navbar" role="navigation" style="height: 32px">
    <div class="container-fluid">
        <ul class="nav navbar-nav navbar-actions navbar-left">
            <li class="visible-md visible-lg"><a style="line-height: 32px;padding-left: 2px" href="/pms/index#"
                                                 id="main-menu-toggle"><i class="fa fa-th-large"
                                                                          style="margin-top: 16px"></i></a>
            </li>
            <li class="visible-xs visible-sm"><a href="/pms/index#" id="sidebar-menu"><i class="fa fa-navicon"></i></a>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown visible-md visible-lg">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="line-height: 32px;margin-top: 3px">
                    <img class="user-avatar" src="<%= request.getContextPath()%>/assets/img/avatar.jpg" style="border-radius:40px; " alt="user-mail">jhonsmith@mail.com</a>
                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header">
                        <strong>Account</strong>
                    </li>
                    <li><a href="page-profile.html"><i class="fa fa-user"></i> Profile</a></li>
                    <li><a href="page-login.html"><i class="fa fa-wrench"></i> Settings</a></li>
                    <li><a href="page-invoice.html"><i class="fa fa-usd"></i> Payments <span
                            class="label label-default">10</span></a></li>
                    <li><a href="gallery.html"><i class="fa fa-file"></i> File <span
                            class="label label-primary">27</span></a></li>
                    <li class="divider"></li>
                    <li><a href="index.jsp"><i class="fa fa-sign-out"></i> Logout</a></li>
                </ul>
            </li>
            <li><a href="index.jsp" style="line-height: 32px"><i class="fa fa-power-off"
                                                                 style="margin-top: 16px"></i></a></li>
        </ul>
    </div>
</div>
<!-- end: Header -->