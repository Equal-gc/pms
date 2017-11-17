<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Modal -->
<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">资产登记</h4>
            </div>
            <div id="form">
                <div class="modal-body">
                    <div class="row">
                        <div class="form-wizard">
                            <div class="form-body">
                                <ul class="nav nav-pills nav-justified steps" id="cite_ul_id">
                                    <li>
                                        <a href="#subjec1" data-toggle="tab" class="step">
                                            <span class="desc"> <i class="fa fa-file-text-o"></i> 资产登记单</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#subjec2" data-toggle="tab" class="step">
                                            <span class="desc"><i class="fa fa-list"></i> 资产列表</span>
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
                                <form action="" method="post" class="form-horizontal" role="form">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="subjec1">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">采购单号</label>

                                                <div class="col-md-3">
                                                    <input type="text" name="F_ContractId" class="form-control input-sm"
                                                           placeholder="请输入采购单号">
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
                                            <div style="margin-bottom: 4px;margin-left:18px ">
                                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addAssetModal"><i class="fa fa-plus"></i> 新增资产</button>
                                            </div>
                                            <div id="assetTable" class="dg">
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="subjec3">
                                            3333333333
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
                                <button type="button" class="btn btn-success button-previous"
                                        style="display:none">
                                    <i class="fa fa-chevron-left"></i> 上一步
                                </button>

                                <button type="button" id="button_next" class="btn btn-success button-next">
                                    下一步 <i class="fa fa-chevron-right"></i>
                                </button>

                                <button type="button" id="save" class="btn btn-success"
                                        style="display:none">
                                    <i class="fa fa-save"></i> 保存
                                </button>
                                <button type="button" class="btn btn-warning" data-dismiss="modal"
                                        >
                                    关闭
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
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
    });


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
            intiAssetTable();
        }
    }

    function intiAssetTable(){
        $("#assetTable").datagrid({
            url: "<%= request.getContextPath()%>/pms/purchasing/getRegisters.json",
            col: [{
                field: "F_ContractId",
                title: "采购单号",
                sortable: false
            }, {
                field: "F_Sequence",
                title: "摘要",
                sortable: false,

            }, {
                field: "F_PurchaseDate",
                title: "采购日期",
                render: function (data) {
                    return $.stampToDate(data.value);
                },
                sortable: true
            }, {
                field: "F_Operator",
                title: "经办人",
                sortable: false
            }, {
                field: "F_Approver",
                title: "审批人",
                sortable: false
            }, {
                field: "F_Accepter",
                title: "验收人",
                sortable: false
            }, {
                field: "F_Keeper",
                title: "保管员",
                sortable: false
            }, {
                field: "F_Id",
                title: "操作"
            }],
            attr: {"class": "table table-condensed table-striped table-hover"},
            pager: {
                "bootstrap-sm": {
                    behavior: {"sliding": {"pages": 4}},
                }
            },
            paramsDefault: {paging: 10}
        });
    }
</script>
