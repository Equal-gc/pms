<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Modal -->
<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">单据详情</h4>
            </div>
            <div id="form">
                <div class="modal-body">
                    <div class="row">
                        <div class="form-wizard">
                            <div class="form-body">
                                <ul class="nav nav-pills nav-justified steps" id="cite_ul_id">
                                    <li>
                                        <a href="#subjec1" data-toggle="tab" class="step">
                                            <span class="desc"> <i class="fa fa-file-text-o"></i> 资产入库单</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#subjec2" data-toggle="tab" class="step">
                                            <span class="desc"><i class="fa fa-list"></i> 已选择资产项</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#subjec3" data-toggle="tab" class="step">
                                            <span class="desc"><i class="fa fa-file-image-o"></i> 扫描单据上传</span>
                                        </a>
                                    </li>
                                </ul>
                                <!-- 进度条 -->
                                <div id="bar" class="progress" role="progressbar" style="height: 2px;margin-top: 2px;margin-bottom: 12px">
                                    <div class="app-background progress-bar ">
                                    </div>
                                </div>
                                <%--内容--%>
                                <form action="" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="subjec1">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">入库单号</label>
                                                <div class="col-md-3">
                                                    <input type="text" name="F_ListNum" id="F_ListNum" class="form-control input-sm" placeholder="请输入采购单号">
                                                </div>
                                                
                                                <label class="col-lg-2 col-md-2 control-label">采购日期</label>
                                                <div class="col-md-4">
                                                    <div class="input-group date form_date ">
                                                        <input class="form-control input-sm" size="16" type="text"
                                                               value="" name="F_PurchaseDate"
                                                               readonly>
                                                        <span class="input-group-addon"><span
                                                                class="glyphicon glyphicon-remove"></span></span>
                                                        <span class="input-group-addon"><span
                                                                class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">经办人</label>
                                                <div class="col-md-3">
                                                    <div class="input-group">
                                                        <input type="text" name="F_Operator" class="form-control" aria-label="...">
                                                        <div class="input-group-btn">
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">请选择 <span
                                                                    class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <c:forEach var="operator" items="${Operators}">
                                                                    <li><a href="javascript:void(0);" onclick="setValue(this)" data-name="${operator.F_Operator}">${operator.F_Operator}</a></li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <label class="col-md-2 control-label">审批人</label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" name="F_Approver" class="form-control" aria-label="...">

                                                        <div class="input-group-btn">
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">请选择 <span
                                                                    class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <c:forEach var="item" items="${Approvers}">
                                                                    <li><a href="javascript:void(0);" onclick="setValue(this)" data-name="${item.F_Approver}">${item.F_Approver}</a></li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">验收人</label>
                                                <div class="col-md-3">
                                                    <div class="input-group">
                                                        <input type="text" name="F_Accepter" class="form-control" aria-label="...">
                                                        <div class="input-group-btn">
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">请选择 <span
                                                                    class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <c:forEach var="item" items="${Accepters}">
                                                                    <li><a href="javascript:void(0);" onclick="setValue(this)" data-name="${item.F_Accepter}">${item.F_Accepter}</a></li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <label class="col-md-2 control-label">保管员</label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" name="F_Keeper" class="form-control" aria-label="...">

                                                        <div class="input-group-btn">
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">请选择 <span
                                                                    class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <c:forEach var="item" items="${Keepers}">
                                                                    <li><a href="javascript:void(0);" onclick="setValue(this)" data-name="${item.F_Keeper}">${item.F_Keeper}</a></li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <%--第二步--%>
                                        <div class="tab-pane" id="subjec2">
                                           <table class="table table-condensed table-striped table-hover">
                                           		<tbody>
                                           			<tr>
                                           				<td>资产名称</td>
                                           				<td>数量</td>
                                           				<td>入库价格</td>
                                           				<td>采购日期</td>
                                           				<td>资产状态</td>
                                           			</tr>
                                           			<tr>
                                           				<td id="F_Name"></td>
                                           				<td id="F_Total"></td>
                                           				<td id="F_StockInPrice"><a href="javascript:void(0)" id="username"></a></td>
                                           				<td id="F_StockInDate"><a href="javascript:void(0)" id="dob" data-type="combodate" data-format="YYYY-MM-DD" data-viewformat="YYYY-MM-DD" data-template="D / MMM / YYYY" data-pk="1"  data-original-title="生产日期"></a></td>
                                           				<td id="F_AssetState"><a href="javascript:void(0)" id="sex" data-type="select" data-pk="1" data-value="" data-original-title="资产状态"></a></td>
                                           			</tr>
                                           		</tbody>
                                           </table>
                                        </div>
                                        
                                         <%--第三步--%>
                                        <div class="tab-pane" id="subjec3">
          									 <input id="kv-explorer" type="file" multiple>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <%-- --%>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="button" class="btn btn-success button-previous" style="display:none">
                                    <i class="fa fa-chevron-left"></i> 上一步
                                </button>
                                <button type="button" id="button_next" class="btn btn-success button-next">
                                	<i class="fa fa-chevron-right"></i>下一步
                                </button>
                                <button type="button" id="save" class="btn btn-success" style="display:none">
                                    <i class="fa fa-save"></i> 保存
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    	
    function setValue(that){
        var aElemet=$(that);
        var value=aElemet.attr("data-name");
        aElemet.parentsUntil(".input-group").prev().val(value);
    }
    $(function(){
        $('#form').bootstrapWizard({
            'nextSelector' : '.button-next',
            'previousSelector' : '.button-previous',
            onTabClick: function (tab, navigation, index, clickedIndex) {
                return false;//使a标签失去点击事件
            },
            onNext : function(tab,navigation,index){
                assessHandleTitle(tab,navigation,index);
            },
            onPrevious: function (tab, navigation, index) {
                assessHandleTitle(tab, navigation, index);
            },
            onTabShow: function (tab, navigation, index) {
                var total = navigation.find('li').length;
                var current = index + 1;
                var percent = (current / total) * 100;
                $('.progress-bar').css({
                    width: percent + '%'
                });
            }
        });
        
        initFileInputPage();
    });

    /**
     * 加载图片上传页面
     */
    function initFileInputPage(){
    	 $("#kv-explorer").fileinput({
             'theme': 'explorer',
             'uploadUrl': '#',
             showUpload: false,
             showCaption: false,
             showRemove: false,
             fileType: "any",
             overwriteInitial: false,
             initialPreviewAsData: true,
         });
    }

    /**
     * 动态设置按钮
     */
    function assessHandleTitle(tab,navigation,index){
        var total = navigation.find('li').length;//得到li标签的长度
        var current = index + 1;
        $('li', $('#form')).removeClass("done");
        var li_list = navigation.find('li');
        for (var i = 0; i < index; i++) {
            $(li_list[i]).addClass("done");
        }
        if(current == 1){
            $('.button-previous').hide();//隐藏上一步按钮
        }else{
            $('.button-previous').show();//显示上一步按钮
        }
        if(current >= total){
            $('.button-next').hide();//隐藏下一步按钮
            $('#save').show();//显示提交按钮
        }else{
            $('.button-next').show();//显示上一步按钮
            $('#save').hide();//隐藏保存按钮
        }
        if(current==2){
        	initAssetDetail();
        }
    }

    var F_Id = "1";
    var data_assetState = {1:"良好", 2:"破损", 3:"故障"};
    /**
     * 加载详细信息页面
     */
    function initAssetDetail(){
	    $.ajax({
			type:'POST',
			url: "<%= request.getContextPath()%>/pms/inventory/queryInvDetail.json",
			data:{
				 F_Id : F_Id,
		    },
			success:function(data){
			    if(data!=null){
			    	$("#F_Name").html("aa");
			    	$("#F_Total").html("11");
			    	$("#F_StockInPrice").children("a").html(data.F_StockInPrice);
			    	var F_StockInDate = "";
			    	if(data.F_StockInDate != null){
                 		F_StockInDate =  $.stampToDate(data.F_StockInDate);
			    	}
			    	$("#F_StockInDate").children("a").html(F_StockInDate);
			    	$("#F_AssetState").children("a").html(data_assetState[data.F_AssetState]);
				}
			}
		});
    }
</script>