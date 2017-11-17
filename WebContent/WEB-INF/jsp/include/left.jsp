<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!-- start: Main Menu -->
<div class="sidebar ">

    <div class="sidebar-collapse">
        <div class="sidebar-header t-center" style="padding-top: 30px;height: 130px">
            <span><img style="border-radius:4px; width: 160px" src="<%= request.getContextPath()%>/assets/img/icon.jpg"></span>
        </div>
        <div class="sidebar-menu">
            <ul class="nav nav-sidebar">
                <li>
                    <a href="#"><i class="fa fa-file-text"></i><span class="text">采购管理</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="/pms/purchasing/list"><i class="fa fa-car"></i><span
                                class="text"> 采购登记</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-list-alt"></i><span class="text"> 库存管理</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="/pms/inventory/openManage"><i class="fa fa-indent"></i><span
                                class="text">库存管理</span></a>
                        </li>
                        <li><a href="/pms/inventory/openSearch"><i class="fa fa-tags"></i><span
                                class="text">库存操作查询</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-signal"></i><span class="text"> 资产管理</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="/pms/asset/openFixedManage"><i class="fa fa-random"></i><span class="text">固定资产管理</span></a></li>
                        <li><a href="/pms/asset/openNonManage"><i class="fa fa-retweet"></i><span class="text">非固定资产管理</span></a></li>
                        <li><a href="/pms/asset/openSearch"><i class="fa fa-bar-chart-o"></i><span class="text"> 资产查询</span></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-briefcase"></i><span class="text"> 资产流转</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="ui-sliders-progress.html"><i class="fa fa-align-left"></i><span
                                class="text">资产流传查询</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bolt"></i><span class="text">系统管理</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="icons-font-awesome.html"><i class="fa fa-meh-o"></i><span class="text">机构管理</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">页面权限</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">数据权限</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">用户管理</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">数据字典</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">资产分类</span></a>
                        </li>
                        <li><a href="icons-climacons.html"><i class="fa fa-meh-o"></i><span class="text">系统菜单</span></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-briefcase"></i><span class="text"> 系统安全</span> <span
                            class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <li><a href="ui-sliders-progress.html"><i class="fa fa-align-left"></i><span
                                class="text">数据备份</span></a></li>
                        <li><a href="ui-sliders-progress.html"><i class="fa fa-align-left"></i><span
                                class="text">系统日志</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="sidebar-footer">
        <div class="sidebar-brand">
            资产管理系统
        </div>
        <ul class="sidebar-terms">
            <li><a href="index.jsp#">Terms</a></li>
            <li><a href="index.jsp#">Privacy</a></li>
            <li><a href="index.jsp#">Help</a></li>
            <li><a href="index.jsp#">About</a></li>
        </ul>
        <div class="copyright text-center">
            <small>版权所有 <i class="fa fa-copyright"></i>  <a href="http://www.cssmoban.com/" title="某某公司" target="_blank">某某公司</a></small>
        </div>
    </div>

</div>
<!-- end: Main Menu -->