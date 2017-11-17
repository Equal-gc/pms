<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>库存管理</title>
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
                        <h2><i class="fa fa-indent red"></i><strong>库存管理</strong></h2>
                    </div>
                    <div class="panel-body" id="searchForm">
                        <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-1 control-label">库房编号</label>
                                <div class="col-md-4">
                                    <select class="form-control" id="search_F_Name">
                                        <option>1</option>
                                        <option>2</option>
                                    </select>
                                </div>
                                <label class="col-md-1 control-label">库房类型</label>
                                <div class="col-md-3">
									<div class="btn-group">
										<button type="button" class="btn btn-info" onclick="waiting()">待入</button>
										<button type="button" class="btn btn-info" onclick="already()">在库</button>
										<button type="button" class="btn btn-info" onclick="again()">再入</button>
									</div>
                                </div>
                                <div class="col-md-1">
									<button type="button" class="btn btn-success" onclick="search()"><i class="fa fa-search"></i> 查询资产</button>  
								</div>
                                <div class="col-md-2">
                       				 <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><i class="fa fa-print"></i> 打印导出项 <span class="caret"></span></button>
                       				 <ul class="dropdown-menu" role="menu">
								        <li><a href="导出">Action</a></li>
								        <li><a href="打印">Another action</a></li>
									</ul>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
	                     <form action="" method="post" class="form-horizontal" role="form">
                            <div class="form-group" id="menuId"></div>
                        </form>
                    </div>
                    <div class="panel-body">
                   		<table id="tree_table" class="table table-condensed table-striped table-hover">
						</table>
                    </div>
                </div>
            </div>
            <!-- panel end: Content -->
        </div>
    </div>
    <!-- end: Content -->
</div>
<!--/container-->

<%@ include file="operation.jsp"%>

<script>
	var data_state = {1:"登记", 2:"入库", 3:"出库", 4:"再入库", 5:"异动", 6:"报废"};
	var data_secretLevel = {1:"无密级", 2:"秘密", 3:"机密", 4:"绝密"};
	
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
		
		already();
	});
	
	/**
	 * 待入库页面
	 */
	function waiting(){
		queryAlrOrWaitList("1");
		var waitingHtml = "";
	    waitingHtml += "<div class='col-md-2'>";
	    waitingHtml += "<button type='button' class='btn btn-info'><i class='fa fa-search-plus'></i> 资产列表</button>";
	    waitingHtml += "</div>";
	    waitingHtml += "<div class='col-md-2'>";
	    waitingHtml += "<button type='button' class='btn btn-success' data-toggle='modal' onclick=\"beforeOpenMenuModal('"+'stockIn'+"')\" data-target='#menuModal'><i class='fa fa-shopping-cart'></i> 加入入库清单</button>";
	    waitingHtml += "</div>";
	    waitingHtml += "<div class='col-md-2 col-md-offset-6'>";
	    waitingHtml += "<button type='button' class='btn btn-success dropdown-toggle' data-toggle='dropdown'><i class='fa fa-building-o'></i> 操作缓存清单 <span class='caret'></span></button>";
	    waitingHtml += "<ul class='dropdown-menu' role='menu'>";
	    waitingHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockIn'+"')\" data-target='#listModal'>入库清单</a></li>";
	    waitingHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockInAgain'+"')\" data-target='#listModal'>再入库清单</a></li>";
	    waitingHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockOut'+"')\" data-target='#listModal'>出库清单</a></li>";
	    waitingHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'scrap'+"')\" data-target='#listModal'>报废清单</a></li>";
	    waitingHtml += "</ul>";
	    waitingHtml += "</div>";
		$("#menuId").html(waitingHtml);
	}
	
	/**
	 * 在库页面
	 */
	function already(){
		queryAlrOrWaitList("2,4");
		var alreadyHtml = "";
		alreadyHtml += "<div class='col-md-2'>";
		alreadyHtml += "<button type='button' class='btn btn-info'><i class='fa fa-search-plus'></i> 资产列表</button>";
	    alreadyHtml += "</div>";
	    alreadyHtml += "<div class='col-md-2'>";
	    alreadyHtml += "<button type='button' class='btn btn-success' data-toggle='modal' onclick=\"beforeOpenMenuModal('"+'stockOut'+"')\" data-target='#menuModal'><i class='fa fa-mail-forward'></i> 加入出库清单</button>";
	    alreadyHtml += "</div>";
	    alreadyHtml += "<div class='col-md-2'>";
	    alreadyHtml += "<button type='button' class='btn btn-success' data-toggle='modal' onclick=\"beforeOpenMenuModal('"+'scrap'+"')\" data-target='#menuModal'><i class='fa fa-trash-o'></i> 加入报废清单</button>";
	    alreadyHtml += "</div>";
	    alreadyHtml += "<div class='col-md-2 col-md-offset-4'>";
	    alreadyHtml += "<button type='button' class='btn btn-success dropdown-toggle' data-toggle='dropdown'><i class='fa fa-building-o'></i> 操作缓存清单 <span class='caret'></span></button>";
	    alreadyHtml += "<ul class='dropdown-menu' role='menu'>";
	    alreadyHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockIn'+"')\" data-target='#listModal'>入库清单</a></li>";
	    alreadyHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockInAgain'+"')\" data-target='#listModal'>再入库清单</a></li>";
	    alreadyHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockOut'+"')\" data-target='#listModal'>出库清单</a></li>";
	    alreadyHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'scrap'+"')\" data-target='#listModal'>报废清单</a></li>";
	    alreadyHtml += "</ul>";
	    alreadyHtml += "</div>";
	    $("#menuId").html(alreadyHtml);
	    
	}
	
	/**
	 * 再入库页面
	 */
	function again(){
		queryAlrOrWaitList("5");
		var againHtml = "";
	    againHtml += "<div class='col-md-2'>";
	    againHtml += "<button type='button' class='btn btn-info'><i class='fa fa-search-plus'></i> 资产列表</button>";
	    againHtml += "</div>";
	    againHtml += "<div class='col-md-2'>";
	    againHtml += "<button type='button' class='btn btn-success' data-toggle='modal' onclick=\"beforeOpenMenuModal('"+'stockInAgain'+"')\" data-target='#menuModal'><i class='fa fa-shopping-cart'></i> 加入再入库清单</button>";
	    againHtml += "</div>";
	    againHtml += "<div class='col-md-2'>";
	    againHtml += "<button type='button' class='btn btn-success' data-toggle='modal' onclick=\"beforeOpenMenuModal('"+'scrap'+"')\" data-target='#menuModal'><i class='fa fa-trash-o'></i> 加入报废清单</button>";
	    againHtml += "</div>";
	    againHtml += "<div class='col-md-2 col-md-offset-4'>";
	    againHtml += "<button type='button' class='btn btn-success dropdown-toggle' data-toggle='dropdown'><i class='fa fa-building-o'></i> 操作缓存清单 <span class='caret'></span></button>";
	    againHtml += "<ul class='dropdown-menu' role='menu'>";
	    againHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockIn'+"')\"data-target='#listModal'>入库清单</a></li>";
	    againHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockInAgain'+"')\" data-target='#listModal'>再入库清单</a></li>";
	    againHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'stockOut'+"')\" data-target='#listModal'>出库清单</a></li>";
	    againHtml += "<li><a href='javascript:void(0)' data-toggle='modal' onclick=\"beforeOpenListModal('"+'scrap'+"')\" data-target='#listModal'>报废清单</a></li>";
	    againHtml += "</ul>";
	    againHtml += "</div>";
	    $("#menuId").html(againHtml);
	}
	
	/**
	 * 查询待入库、在库的树形列表
	 */
	function queryAlrOrWaitList(F_State){
		$.ajax({
			type:'POST',
			url: "<%= request.getContextPath()%>/pms/inventory/queryAlrOrWaitList.json",
			data:{
				F_State : F_State,
				F_Name : $("#search_F_Name ").val()
			},
			success:function(data){
			    var tableHtml = "<thead><tr><th>资产名称</th><th>资产状态</th><th>资产总量</th><th>可用数量</th><th>清单数量</th><th>分类</th></tr>";
			    if(data!=null){
			    	tableHtml += "<tr class='treegrid-001'></tr>";
			    	for (var i = 0; i < data.length; i++){
			    		if(data[i].total_num !=0){
			    			tableHtml += "<tr class='treegrid-"+data[i].F_EnCode+" treegrid-parent-"+data[i].F_ParentId+"'>";
					    	tableHtml += "<td>"+data[i].F_Name+"</td>";
					    	if(data[i].F_Level == 'size'){
					    		tableHtml += "<td>"+data_state[data[i].F_State]+"</td>";
					    	}else{
					    		tableHtml += "<td></td>";
					    	}
					    	
					    	tableHtml += "<td>"+data[i].total_num+"</td>";
					    	tableHtml += "<td>"+(data[i].total_num-data[i].list_num)+"</td>";
					    	tableHtml += "<td>"+data[i].list_num+"</td>";
					    	
					    	if(data[i].F_Level == 'class1'){
					    		tableHtml += "<td>大类</td>";
					    	}else if(data[i].F_Level == 'class2'){
					    		tableHtml += "<td>小类</td>";
					    	}else if(data[i].F_Level == 'kind'){
					    		tableHtml += "<td>品种</td>";
					    	}else{
					    		tableHtml += "<td>型号</td>";
					    	}
					    	
			    			tableHtml += "<td><input type='radio' name='alrOrWaitList' style='display:none' value='"+data[i].F_EnCode+"'/></td>";
					    	tableHtml += "</tr>";
			    		}
			    	}
				}
			    tableHtml += "</thead>";
		    	$("#tree_table").html(tableHtml);
				$("#tree_table").treegrid();
				
				$("tr:gt(0)").live("click",function(){
			       $(this).css("background-color", "#e5e5e5").siblings().css("background-color", "#FFFFFF");
		           $(this).addClass("selected").find(":radio").attr("checked",true).siblings().removeClass("selected").find(":radio").attr("checked",false);
			    });
			}
		});
	}
	
	/**
	 * 查询
	 */
	function search(){
	    $("#dg-test").datagrid( "fetch" );
	}
	
</script>
</body>
</html>