<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>库存查询</title>
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
                        <h2><i class="fa fa-indent red"></i><strong>资产出入库数据统计</strong></h2>
                    </div>
                    <div class="panel-body" id="searchForm">
                        <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-1 control-label">库房编号</label>
                                <div class="col-md-2">
                                    <select class="form-control" name="F_DestStore">
                                        <option value="">全部</option>
                                        <option value="001">001</option>
                                        <option value="002">002</option>
                                    </select>
                                </div>
                                <label class="col-md-1 control-label">资产分类</label>
                                <div class="col-md-2">
                                    <select class="form-control" name="F_Code">
                                        <option value="">全部</option>
                                        <option value="001">001</option>
                                        <option value="002">002</option>
                                    </select>
                                </div>
                                <label class="col-md-1 control-label">资产型号</label>
                                <div class="col-md-2">
                                    <select class="form-control" name="F_SizeId">
                                        <option value="">全部</option>
                                        <option value="001">001</option>
                                        <option value="002">002</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                            	<label class="col-md-1 control-label">时间</label>
                                <div class="col-md-2">
                                	<div class="input-group date form_date">
                                        <input class="form-control input-sm" size="16" type="text" value="" name="F_StartDate" readonly/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    </div>
                                </div>
                                <label class="col-md-1 control-label">到</label>
                                <div class="col-md-2">
                                    <div class="input-group date form_date">
                                        <input class="form-control input-sm" size="16" type="text" value="" name="F_EndDate" readonly/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    </div>
                                </div>
                                <label class="col-md-1 control-label">关键字</label>
                                <div class="col-md-2">
		                        	<input type="text" id="F_ListNum" name="F_ListNum" class="form-control" placeholder="流水号/单据编号">
                                </div>
                                <div class="col-md-1 col-md-offset-1">
		                        	<button class="btn btn-success" onclick="search()"><i class="fa fa-search"></i> 查询资产</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
	                     <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                            	<div class="col-md-2">
                                	<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal"><i class="fa fa-search-plus"></i> 单据详情 </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-body">
	                    <div id="dg-test" class="dg"></div>
                    </div>
                </div>
            </div>
            <!-- panel end: Content -->
        </div>
    </div>
    <!-- end: Content -->
</div>
<!--/container-->
<%@ include file="detail.jsp"%>
<div class="clearfix"></div>
<script type="text/javascript">
	var data_state = {2:"入库", 3:"出库", 4:"再入库"};
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
		
		 $("#dg-test").datagrid({
	         url: "<%= request.getContextPath()%>/pms/inventory/queryInvSeaList.json",
	         col: [{
	             field: "F_ClassL1Id",
	             title: "资产大类",
	             sortable: false
	         }, {
	             field: "F_ClassL2Id",
	             title: "资产小类",
	             sortable: false,
	         }, {
	             field: "F_KindId",
	             title: "资产品种",
	             sortable: false,
	         }, {
	             field: "F_SizeId",
	             title: "规格型号",
	             sortable: false,
	         }, {
	             field: "F_State",
	             title: "类型",
	             sortable: false,
	             render: function (data) {
	            	 return data_state[data.value];
                 },	
	         }, {
	             field: "F_Total",
	             title: "数量",
	             sortable: false,
	         }, {
	             field: "F_ListNum",
	             title: "单据编号",
	             sortable: false,
	         }, {
	             field: "F_AddDate",
	             title: "操作日期",
	             sortable: false,
	             render: function (data) {
	            	 if(data.value != null)
                     	return $.stampToDate(data.value);
                 },
	         }, {
	             field: "F_Operator",
	             title: "经办人",
	             sortable: false,
	         }, {
	             field: "F_Approver",
	             title: "审批人",
	             sortable: false,
	         }, {
	             field: "F_Accepter",
	             title: "验收人",
	             sortable: false,
	         }, {
	             field: "F_Keeper",
	             title: "保管员",
	             sortable: false,
	         }],
	         attr: {"class": "table table-condensed table-striped table-hover"},
	         pager: {
	             "bootstrap-sm": {
	                 behavior: {"sliding": {"pages": 4}},
	             }
	         },
	         paramsDefault: {paging: 10}
	     }).datagrid("filters", "#searchForm");
	});
	
	/**
	 * 查询
	 */
	function search(){
	    $("#dg-test").datagrid("fetch");
	}
</script>
</body>
</html>