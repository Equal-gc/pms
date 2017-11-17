<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Modal -->
<div class="modal fade " id="opertionWizard" tabindex="-1" role="dialog" aria-labelledby="opertionWizardLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="opertionWizardLabel">单据详情</h4>
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
                                <form id="saveOpertionForm" action="" method="post" enctype="multipart/form-data">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="subjec1">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">入库单号</label>
                                                <div class="col-md-3">
                                                    <input type="text" name="F_ListNum" id="F_ListNum" class="form-control input-sm" placeholder="请输入采购单号">
                                                </div>
                                                
                                                <label class="col-lg-2 col-md-2 control-label">采购日期</label>
                                                <div class="col-md-4">
                                                    <div class="input-group date form_date">
                                        				<input class="form-control input-sm" size="16" type="text" value="" name="F_AddDate" readonly/>
                                       					<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
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
                                           				<td>资产状态</td>
                                           				<td>出库价格</td>
                                           				<td>存放地点</td>
                                           				<td>部门</td>
                                           				<td>使用人</td>
                                           			</tr>
                                           			<tr>
                                           				<td id="F_Name"></td>
                                           				<td id="Total"></td>
                                           				<td><a href="javascript:void(0)" id="F_AssetState" data-pk="F_AssetState" ></a></td>
                                           				<td><a href="javascript:void(0)" id="F_StockOutPrice" data-pk="F_StockOutPrice" ></a></td>
                                           				<td><a href="javascript:void(0)" id="F_StockPlace" data-pk="F_StockPlace" ></a></td>
                                           				<td><a href="javascript:void(0)" id="F_BusiDepartId" data-pk="F_BusiDepartId" ></a></td>
                                           				<td><a href="javascript:void(0)" id="F_UserId" data-pk="F_UserId" ></a></td>
                                           			</tr>
                                           		</tbody>
                                           </table>
                                        </div>
                                        
                                         <%--第三步--%>
                                        <div class="tab-pane" id="subjec3">
									         <div class="row form-group">
									            <label class="col-md-4">图片上传:</label>
									            <div class="col-sm-12">
									                <input id="input-id" name="files" multiple type="file" data-show-caption="true">
									            </div>
									        </div>
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
                                <button type="button" id="save" class="btn btn-success" style="display:none" onclick="saveOpertion()">
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
    
    /**
     * 初始化页面
     */
    function initPage(opt){
    	o_p_t = opt;
    	wizard();
    	initFileInput("input-id");
    	initAssetDetail();
    }
    
    /**
     * 初始化布局
     */
    function wizard(){
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
    }
    
    /**
     * 文件上传
     */
    function initFileInput(ctrlName) {
    	var F_Ids = $("input[name='opBoxList']:checked")[0].value;
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: "/pms/inventory/uploadfile?F_Ids="+F_Ids+"&opt="+o_p_t,//上传的地址
            allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove : true, //显示移除按钮
            showPreview : true, //是否显示预览
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            //dropZoneEnabled: true,//是否显示拖拽区域
            //minImageWidth: 50, //图片的最小宽度
            //minImageHeight: 50,//图片的最小高度
            //maxImageWidth: 1000,//图片的最大宽度
            //maxImageHeight: 1000,//图片的最大高度
            //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
            //minFileCount: 0,
            //maxFileCount: 10, //表示允许同时上传的最大文件个数
            enctype: 'multipart/form-data',
            validateInitialCount:true,
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            console.log('文件正在上传');
        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
            console.log('文件上传成功！'+data.id);
        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
            console.log('文件上传失败！'+data.id);
        });
    }

    /**
     * 加载详细信息页面
     */
    function initAssetDetail(){
    	var $td = $("input[name='opBoxList']:checked").parents('tr').children('td');
    	var F_Ids = $("input[name='opBoxList']:checked")[0].value;
	   	$("#F_Name").html($td.eq(3).text() + "" + $td.eq(4).text());
	   	$("#Total").html($td.eq(5).text());
	   	
	    $('#F_AssetState').editable({
            type: "select",              //编辑框的类型。支持text|textarea|select|date|checklist等
            source: [{ value: 1, text: "良好" }, { value: 2, text: "破损" }, {value:3,text:"故障"}],
            title: "",           //编辑框的标题
            disabled: false,           //是否禁用编辑
            //emptytext: "良好",       //空值的默认文本
            mode: "popup",             //编辑框的模式：支持popup和inline两种模式，默认是popup
            url:"<%= request.getContextPath()%>/pms/inventory/Edit.json?F_Ids="+F_Ids+"&opt="+o_p_t,
            /* validate: function (value) { //字段验证
                if (!$.trim(value)) {
                    return '不能为空';
                }
            } */
        });
	    
	    $('#F_StockOutPrice').editable({
            type: "text",
            url:"<%= request.getContextPath()%>/pms/inventory/Edit.json?F_Ids="+F_Ids+"&opt="+o_p_t,
        });
	    
	    $('#F_StockPlace').editable({
	    	type: "text", 
	    	url:"<%= request.getContextPath()%>/pms/inventory/Edit.json?F_Ids="+F_Ids+"&opt="+o_p_t,
        });
	    
	    $('#F_BusiDepartId').editable({
	    	type: "text", 
	    	url:"<%= request.getContextPath()%>/pms/inventory/Edit.json?F_Ids="+F_Ids+"&opt="+o_p_t,
        });
	    
	    $('#F_UserId').editable({
	    	type: "text", 
	    	url:"<%= request.getContextPath()%>/pms/inventory/Edit.json?F_Ids="+F_Ids+"&opt="+o_p_t,
        });
	   	
    }
    var o_p_t = "";
    function saveOpertion(){
    	var F_Ids = $("input[name='opBoxList']:checked")[0].value;
    	$.ajax({
			type : 'POST',
			url : "<%= request.getContextPath()%>/pms/inventory/saveOpertionForm.json?F_Ids="+F_Ids+"&opt="+o_p_t,
			data : $("#saveOpertionForm").serialize(),
			dataType : 'json',
			success : function(data) {
				if(data<0){
					alert("保存失败");
				}else{
					$("#opertionWizard").modal('hide');
					alert("保存成功");
				}
			}
		});
    }
</script>