<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>固定资产管理</title>
    <c:import url="/WEB-INF/jsp/include/script.jsp" charEncoding="UTF-8"/>
</head>

<body>
<c:import url="/WEB-INF/jsp/include/head.jsp" charEncoding="UTF-8"/>
<div class="row">
    <c:import url="/WEB-INF/jsp/include/left.jsp" charEncoding="UTF-8"/>
    <!-- start: Content -->
    <div class="main">
        <div class="row">
       	    <!-- panel start: Content -->
            <div class="col-md-12" style="padding-left: 8px;padding-right: 8px">
                <div class="panel panel-default">
                    <div class="panel-heading bk-bg-primary">
                        <h2><i class="fa fa-indent red"></i><strong>固定资产管理</strong></h2>
                    </div>
                    <div class="panel-body">
                        <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-1 control-label">库房编号</label>
                                <div class="col-md-2">
                                    <select class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                    </select>
                                </div>
                                <label class="col-md-1 control-label">资产分类</label>
                                <div class="col-md-2">
                                    <select class="form-control">
                                        <option>全部</option>
                                        <option>电子产品</option>
                                    </select>
                                </div>
                                <label class="col-md-1 control-label">资产型号</label>
                                <div class="col-md-2">
                                    <select class="form-control">
                                        <option>联想</option>
                                        <option>苹果</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                            	<label class="col-md-1 control-label">时间</label>
                                <div class="col-md-2">
                                	<div class="input-group date form_date">
                                        <input class="form-control input-sm" size="16" type="text" value="" readonly/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    </div>
                                </div>
                                <label class="col-md-1 control-label">到</label>
                                <div class="col-md-2">
                                    <div class="input-group date form_date">
                                        <input class="form-control input-sm" size="16" type="text" value="" readonly/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    </div>
                                </div>
                                <label class="col-md-1 control-label">资产型号</label>
                                <div class="col-md-2">
		                        	<input type="text" id="text-input" name="text-input" class="form-control" placeholder="流水号/单据编号">
                                </div>
                                <div class="col-md-1 col-md-offset-1">
		                        	<button type="button" class="btn btn-success"><i class="fa fa-search"></i> 查询资产</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
	                     <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                            	<div class="col-md-2">
                                	<button type="button" class="btn btn-info"><i class="fa fa-search-plus"></i> 查看属性</button>
                                </div>
                                <div class="col-md-2">
                                	<button type="button" class="btn btn-success"><i class="fa fa-shopping-cart"></i> 加入异动清单</button>
                                </div>
                                <div class="col-md-2">
                                	<button type="button" class="btn btn-success"><i class="fa fa-trash-o"></i> 加入报废清单</button>
                                </div>
                                <div class="col-md-2 col-md-offset-4">
                                	 <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><i class="fa fa-building-o"></i> 操作缓存清单 <span class="caret"></span></button>
                       				 <ul class="dropdown-menu" role="menu">
								        <li><a href="异动清单">Action</a></li>
								        <li><a href="报废清单">Another action</a></li>
									</ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- panel end: Content -->
            
            
        </div>
    </div>
    <!-- end: Content -->
</div>
<!--/container-->

<div class="clearfix"></div>
<script type="text/javascript">
$(function () {
	$('.form_date').datetimepicker({
		language: 'zh-CN',
	    weekStart: 1,
	    todayBtn: 1,
	    autoclose: 1,
	    format: 'yyyy-mm-dd',
	    todayHighlight: 1,
	    startView: 2,
	    minView: 2,
	    forceParse: 0
	});
});
</script>
</body>
</html>