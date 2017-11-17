<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Modal -->
<div class="modal fade" id="menuModal" tabindex="-1" role="dialog" aria-labelledby="menuModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="menuModalLabel">加入入库清单</h4>
      </div>
      <div class="modal-body">
      	 <form action="" method="post" class="form-horizontal" role="form">
      	 	<div class="form-group">
	            <label class="col-md-3 control-label">库房名称</label>
	            <div class="col-md-8">
	                <select class="form-control">
	                    <option>1</option>
	                    <option>2</option>
	                </select>
	            </div>
          	</div>
          	<div class="form-group">
	            <label class="col-md-3 control-label">可用数量</label>
	            <span class="col-md-8 control-span" id="UsedCount"></span>
          	</div>
          	<div class="form-group">
	            <label class="col-md-3 control-label">资产类别</label>
	            <span class="col-md-3 control-span" id="AssetType"></span>
          	</div>
          	<div class="form-group">
	            <label class="col-md-3 control-label">资产数量</label>
	            <input type="text" class="col-md-8">
          	</div>
          	<div class="form-group">
	            <label class="col-md-3 control-label">资产选项</label>
	            <input type="checkbox" id="checkAsset"> 固定资产
          	</div>
      	  </form>
      </div>
      <div class="modal-footer" id="modalButton">
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="listModal" tabindex="-1" role="dialog" aria-labelledby="listModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="listModalLabel">资产入库清单</h4>
      </div>
      <div class="modal-body">
          <div class="form-group">
	        	<div class="col-md-3">
	        		<button type='button' class='btn btn-default' onclick="queryModalList()" data-target="#listModalDetail"><i class='fa fa-search-plus'></i> 资产列表</button>
	        	</div>
	        	<div class="col-md-3">
	        		<button type='button' class='btn btn-danger' onclick="toRemove()"><i class='fa fa-mail-reply'></i> 剔除清单</button>
	        	</div>
	        	<div class="col-md-3" id="buttonId">
	      	  	</div>
	        	<div class="col-md-3">
	        		<button type='button' class='btn btn-info' onclick="refreshModalList()"><i class='fa fa-refresh'></i> 刷新</button>
	        		<input type="hidden" id="o_p_t"/>
	     		</div>
         </div>
         <br>
      	 <div class="panel-body">
      	 	<table id="dg-modalList" class="table table-condensed table-striped table-hover">
			</table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="listModalDetail" tabindex="-1" role="dialog" aria-labelledby="listModalDetailLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="listModalDetailLabel">查看选中类别的资产列表</h4>
      </div>
      <div class="modal-body">
          <div class="form-group">
              <div class="col-md-3">
       		      <button type='button' class='btn btn-default' onclick="queryProperty()"><i class='fa fa-search-plus'></i> 查看属性</button>
       	      </div>
       	      <div class="col-md-3">
       		      <button type='button' class='btn btn-danger' onclick="toRemoveDetail()"><i class='fa fa-mail-reply'></i> 剔除清单</button>
       	      </div>
         </div>
         <br>
      	 <div class="panel-body">
      	 	<table id="dg-modalDetailList" class="table table-condensed table-striped table-hover">
			</table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="property" tabindex="-1" role="dialog" aria-labelledby="PropertyLabel" aria-hidden="true">
    <div class="modal-dialog">
	    <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="propertyLabel">查看选中类别的资产列表</h4>
      	    </div>
		    <div class="modal-body">
			    <form class="form-horizontal" role="form">
				    <div class="tab-content">
					    <div class="tab-pane active">
						    <div class="form-group">
							    <label class="col-md-2 control-label">资产编码</label>
							    <div class="col-md-4">
								    <input type="text" id="Detail_F_Id" readonly="readonly" />
						        </div>
							    <label class="col-md-2 control-label">资产名称</label>
							    <div class="col-md-4">
								    <input type="text" id="Detail_F_Name" readonly="readonly" />
							    </div>
						    </div>
							<div class="form-group">
								<label class="col-md-2 control-label">序列号</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_Sequence" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">当前状态</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_State" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">资产大类</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_ClassL1Id" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">资产小类</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_ClassL2Id" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">资产品种</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_KindId" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">型号规格</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_SizeId" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">品牌</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_Brand" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">资产来源</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_SourceType" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">来源单位</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_SourceUnit" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">密级</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_SecretLevel" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">用途</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_UsedFor" readonly="readonly" />
								</div>
								<label class="col-md-2 control-label">使用状态</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_UsingState" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">资产选项</label>
								<div class="col-md-4">
									<input type="checkbox" id="Detail_F_IsRecorder" disabled="disabled" />刻录 
									&nbsp;&nbsp;
									<input type="checkbox" id="Detail_F_IsControlled" disabled="disabled" />管控
								</div>
								<label class="col-md-2 control-label">水印编号</label>
								<div class="col-md-4">
									<input type="text" id="Detail_F_WaterMarkId" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">配置信息</label>
								<div class="col-md-10">
									<textarea id="Detail_F_ConfigInfo" readonly="readonly" style="width:100%"></textarea>
								</div>
							</div>
					    </div>
				    </div>
				</form>
			</div>
		</div>
 	</div>
</div>

<%@ include file="opertion_wizard.jsp"%>

<script>

	/**
	 * 开启menuModal前操作
	 */
	function beforeOpenMenuModal(opt){
		var $td = $("input[name='alrOrWaitList']:checked").parents('tr').children('td');
		$("#UsedCount").html($td.eq(4).text());
		$("#AssetType").html($td.eq(1).text());
		
		if(opt == "stockIn"){
			$("#menuModalLabel").html("加入入库清单");
			$("#checkAsset").attr("disabled","disabled");
			$("#modalButton").html("<button type='button' class='btn btn-primary' onclick='toStockInList()'>确认</button>");
		}else if(opt == "stockOut"){
			$("#menuModalLabel").html("加入出库清单");
			$("#modalButton").html("<button type='button' class='btn btn-primary' onclick='toStockOutList()'>确认</button>");
		}else if(opt == "stockInAgain"){
			$("#menuModalLabel").html("加入再入库清单");
			$("#modalButton").html("<button type='button' class='btn btn-primary' onclick='toStockInAgainList()'>确认</button>");
		}else{
			$("#menuModalLabel").html("加入报废清单");
			$("#modalButton").html("<button type='button' class='btn btn-primary' onclick='toScrapList()'>确认</button>");
		}
	}
	
	/**
	 *开启listModal前操作
	 */
	function beforeOpenListModal(opt){
		if(opt == "stockIn"){
			$("#listModalLabel").html("资产入库清单");
			$("#buttonId").html("<button type='button' class='btn btn-success' onclick=\"toOperationAsset('"+'Asset_StockIn'+"')\"><i class='fa fa-external-link'>资产入库</i></button>");
			queryListModalList("1");
		}else if(opt == "stockOut"){
			$("#listModalLabel").html("资产出库清单");
			$("#buttonId").html("<button type='button' class='btn btn-success' onclick=\"toOperationAsset('"+'Asset_StockOut'+"')\"><i class='fa fa-external-link'>资产出库</i></button>");
			queryListModalList("2");
		}else if(opt == "stockInAgain"){
			$("#listModalLabel").html("资产再入库清单");
			$("#buttonId").html("<button type='button' class='btn btn-success' onclick=\"toOperationAsset('"+'Asset_Changes'+"')\"><i class='fa fa-external-link'>资产再入库</i></button>");
			queryListModalList("3");
		}else{
			$("#listModalLabel").html("资产报废清单");
			$("#buttonId").html("<button type='button' class='btn btn-success' onclick=\"toOperationAsset('"+'Asset_Scrap'+"')\"><i class='fa fa-external-link'>资产报废</i></button>");
			queryListModalList("4");
		}
	}

	/**
	 *	根据状态查询缓存列表
	 */
	function queryListModalList(F_Type){
		$("#o_p_t").val(F_Type);
		$.ajax({
			type:'POST',
			url: "<%= request.getContextPath()%>/pms/inventory/queryListModalList.json",
			data:{F_Type:F_Type},
			success:function(data){
			    var tableHtml = "<thead><tr><th></th><th>资产大类</th><th>资产小类</th><th>资产品种</th><th>型号规格</th><th>数量</th></tr>";
			    if(data!=null){
			    	for (var i = 0; i < data.length; i++){
				    	tableHtml += "<tr>";
				    	tableHtml += "<td>";
				    	tableHtml += "<input type='radio' name='opBoxList' value='"+data[i].F_Ids+"'/>";
				    	tableHtml += "</td>";
				    	tableHtml += "<td>";
				    	tableHtml += data[i].F_ClassL1Id;
				    	tableHtml += "</td>";
				    	tableHtml += "<td>";
				    	tableHtml += data[i].F_ClassL2Id;
				    	tableHtml += "</td>";
				    	tableHtml += "<td>";
				    	tableHtml += data[i].F_KindId;
				    	tableHtml += "</td>";
				    	tableHtml += "<td>";
				    	tableHtml += data[i].F_SizeId;
				    	tableHtml += "</td>";
				    	tableHtml += "<td>";
				    	tableHtml += data[i].total;
				    	tableHtml += "</td>";
				    	tableHtml += "</tr>";
			    	}
				}
			    tableHtml += "</thead>";
		    	$("#dg-modalList").html(tableHtml);
			}
		});
	}
	
	/**
	 * 入库
	 */
	function toStockIn(){
		var checkboxList = $("input[name='opBoxList']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else{
			var F_Ids = checkboxList[0].value;
			$.ajax({
				type:'POST',
				url: "<%= request.getContextPath()%>/pms/inventory/toStockIn.json",
				data:{F_Ids:F_Ids},
				success:function(data){
					
				}
			});
		}
	}
	
	/**
	 * 查看列表
	 */
	function queryModalList(){
		var checkboxList = $("input[name='opBoxList']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else{
			//打开模态框
			$('#listModalDetail').modal();
			
			var F_Ids = checkboxList[0].value;
			$.ajax({
				type:'POST',
				url: "<%= request.getContextPath()%>/pms/inventory/queryModalList.json",
				data:{F_Ids : F_Ids},
				success:function(data){
					var tableHtml = "<thead><tr><th><input type='checkbox' onclick='checkAll(this)'/></th><th>资产编码</th><th>资产名称</th><th>资产序列号</th><th>流转状态</th><th>资产大类</th><th>资产大类</th></tr>";
				    if(data!=null){
				    	for (var i = 0; i < data.length; i++){
					    	tableHtml += "<tr>";
					    	tableHtml += "<td>";
					    	tableHtml += "<input type='checkbox' name='opBoxListDetail' value='"+data[i].F_Id+"'/>";
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data[i].F_Id;
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data[i].F_Name;
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data[i].F_Sequence;
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data_state[data[i].F_State];
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data[i].F_ClassL1Id;
					    	tableHtml += "</td>";
					    	tableHtml += "<td>";
					    	tableHtml += data[i].F_ClassL2Id;
					    	tableHtml += "</td>";
					    	tableHtml += "</tr>";
				    	}
					}
				    tableHtml += "</thead>";
			    	$("#dg-modalDetailList").html(tableHtml);
				}
			});
		}
	}
	
	/**
	 * 批量剔除
	 */
	function toRemove(){
		var checkboxList = $("input[name='opBoxList']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else{
			var F_Ids = checkboxList[0].value;
			$.ajax({
				type:'POST',
				url: "<%= request.getContextPath()%>/pms/inventory/toRemove.json",
				data:{F_Ids : F_Ids},
				success:function(data){
					if(data > 0){
						refreshModalList();
					}
				}
			});
		}
	}
	
	/**
	 * 刷新当前缓存列表
	 */
	function refreshModalList(){
		queryListModalList($("#o_p_t").val());
	}
	
	/**
	 * 入库、出库、再入库、报废
	 */
	function toOperationAsset(opt){
		var checkboxList = $("input[name='opBoxList']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else{
			$('#opertionWizard').modal();
			initPage(opt);
		}
	}
	
	/**
	 * 单独剔除
	 */
	function toRemoveDetail(){
		var F_Ids = "";
		var checkboxList = $("input[name='opBoxListDetail']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else{
			for ( var i = 0; i < checkboxList.length; i++) {
				F_Ids += checkboxList[i].value + ",";
			}
			F_Ids = F_Ids.substring(0, F_Ids.length-1);
		}
		$.ajax({
			type:'POST',
			url: "<%= request.getContextPath()%>/pms/inventory/toRemove.json",
			data:{F_Ids : F_Ids},
			success:function(data){
				if(data > 0){
					refreshModalList();
					$('#listModalDetail').modal('hide');
				}
			}
		});
	}
	
	/**
	 *  全选
	 */
	function checkAll(obj) {
		var checkboxList = $('input[name="opBoxListDetail"]');
		for ( var i = 0; i < checkboxList.length; i++) {
			checkboxList[i].checked = obj.checked;
		}
	}
	
	/**
	 * 查看属性
	 */
	function queryProperty(){
		var checkboxList = $("input[name='opBoxListDetail']:checked");
		if(checkboxList.length == 0){
			alert("未选中任何记录！");
			return;
		}else if(checkboxList.length > 1){
			alert("只能选择一条记录！");
			return;
		}else{
			var F_Ids = checkboxList[0].value;
			$.ajax({
				type:'POST',
				url: "<%= request.getContextPath()%>/pms/inventory/queryProperty.json",
				data:{F_Ids : F_Ids},
				success:function(data){
					$('#Detail_F_Id').val(data.F_Id);
					$('#Detail_F_Name').val(data.F_Name);
					$('#Detail_F_Sequence').val(data.F_Sequence);
					$('#Detail_F_State').val(data_state[data.F_State]);
					$('#Detail_F_ClassL1Id').val(data.F_ClassL1Id);
					$('#Detail_F_ClassL2Id').val(data.F_ClassL2Id);
					$('#Detail_F_KindId').val(data.F_KindId);
					$('#Detail_F_SizeId').val(data.F_SizeId);
					$('#Detail_F_Brand').val(data.F_Brand);
					$('#Detail_F_SourceType').val(data.F_SourceType);
					$('#Detail_F_SourceUnit').val(data.F_SourceUnit);
					$('#Detail_F_SecretLevel').val(data_secretLevel[data.F_SecretLevel]);
					$('#Detail_F_UsedFor').val(data.F_UsedFor);
					$('#Detail_F_UsingState').val(data.F_UsingState);
					if(data.F_IsRecorder == '1'){
						$('#Detail_F_IsRecorder').attr("checked",true);
					}
					if(data.F_WaterMarkId == '1'){
						$('#Detail_F_IsControlled').attr("checked",true);
					}
					$('#Detail_F_WaterMarkId').val(data.F_WaterMarkId);
					$('#Detail_F_UsedFor').val(data.F_UsedFor);
					$('#property').modal();
				}
			});
		}
	}
</script>