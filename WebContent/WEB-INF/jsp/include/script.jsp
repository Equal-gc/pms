<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import google fonts - Heading first/ text second -->
<link rel='stylesheet' type='text/css' href=''/>
<!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css"/>
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css"/>
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css"/>
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css"/>
<![endif]-->

<!-- Fav and touch icons -->
<link rel="shortcut icon" href="<%= request.getContextPath()%>/assets/ico/favicon.ico" type="image/x-icon"/>

<!-- Css files -->
<link href="<%= request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/fileinput.min.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/jquery.treegrid.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/jquery.mmenu.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/climacons-font.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/prettify.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/css/app.css" rel="stylesheet">

<link href="<%= request.getContextPath()%>/assets/plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">
<link href="<%= request.getContextPath()%>/assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/plugins/morris/css/morris.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<link href="<%= request.getContextPath()%>/assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">

<link href="<%= request.getContextPath()%>/assets/css/style.min.css" rel="stylesheet">
<%--<link href="<%= request.getContextPath()%>/assets/css/add-ons.min.css" rel="stylesheet">--%>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->



<!-- start: JavaScript-->
<!--[if !IE]>-->

<script src="<%= request.getContextPath()%>/assets/js/jquery-2.1.1.min.js"></script>

<!--<![endif]-->

<!--[if IE]>

<script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<![endif]-->

<!--[if !IE]>-->

<script type="text/javascript">
  window.jQuery || document.write("<script src='<%= request.getContextPath()%>/assets/js/jquery-2.1.1.min.js'>" + "<" + "/script>");
</script>

<!--<![endif]-->

<!--[if IE]>

<script type="text/javascript">
window.jQuery || document.write("<script src='//cdn.bootcss.com/jquery/1.12.4/jquery.min.js'>" + "<" + "/script>");
</script>

<![endif]-->
<script src="<%= request.getContextPath()%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src='<%= request.getContextPath()%>/assets/js/fileinput.js'></script>

<!-- page scripts -->
<script src="<%= request.getContextPath()%>/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/moment/moment.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="<%= request.getContextPath()%>/assets/plugins/excanvas/excanvas.min.js"></script>
<![endif]-->
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.stack.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.time.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/flot/jquery.flot.spline.min.js"></script>
<%--<script src="<%= request.getContextPath()%>/assets/plugins/xcharts/js/xcharts.min.js"></script>--%>
<script src="<%= request.getContextPath()%>/assets/plugins/autosize/jquery.autosize.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/placeholder/jquery.placeholder.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/raphael/raphael.min.js"></script>
<%--<script src="<%= request.getContextPath()%>/assets/plugins/morris/js/morris.min.js"></script>--%>
<script src="<%= request.getContextPath()%>/assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="<%= request.getContextPath()%>/assets/plugins/jvectormap/js/gdp-data.js"></script>
<%--<script src="<%= request.getContextPath()%>/assets/plugins/gauge/gauge.min.js"></script>--%>
<!-- theme scripts -->
<script src="<%= request.getContextPath()%>/assets/js/SmoothScroll.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/jquery.mmenu.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/core.min.js"></script>
<%--<script src="<%= request.getContextPath()%>/assets/plugins/d3/d3.min.js"></script>--%>

<!-- inline scripts related to this page -->
<script src="<%= request.getContextPath()%>/assets/js/pages/index.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/app.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/bootstrap-datetimepicker.zh-CN.js" ></script>

<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery.datagrid.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery.datagrid.bootstrap3.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery.bootstrap.wizard.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/bootstrap-treeview.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery.treegrid.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery.treegrid.bootstrap3.js"></script>

<script type="text/javascript" src="<%= request.getContextPath()%>/assets/plugins/editable/js/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/pages/form-x-editable.js"></script>
<!-- end: JavaScript-->