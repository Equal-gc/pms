<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Modal -->
<div class="modal fade " id="addAssetModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新增资产</h4>
            </div>
            <div id="form" class="form-horizontal">
                <div class="modal-body">
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2 control-label">资产编码</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm" readonly
                                       placeholder="由系统自动生成">
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">资产名称</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm"
                                       placeholder="请输入采购单号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">资产大类</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">资产小类</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电脑</option>
                                    <option value="">手机</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">资产品种</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">型号规格</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电脑</option>
                                    <option value="">手机</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">品牌</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                            <label class="col-md-2 control-label">生产厂家</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">资产来源</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">来源单位</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">资产来源</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">来源单位</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">密级</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">用途</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">使用状态</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">资产选项</label>

                            <div class="col-md-3 ">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="option2"> 刻录
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="option2"> 管控
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">存放库房</label>

                            <div class="col-md-3">
                                <select class="form-control input-sm" name="F_Accepter">
                                    <option value="">请选择</option>
                                    <option value="">电子产品</option>
                                    <option value="">生活用品</option>
                                </select>
                            </div>
                            <label class="col-lg-2 col-md-2 control-label">数量</label>

                            <div class="col-md-3">
                                <input type="text" name="F_ContractId" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">配置信息</label>

                            <div class="col-md-8">
                                <textarea class="form-control" rows="3"></textarea>
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
    function setValue(that) {
        var aElemet = $(that);
        var value = aElemet.attr("data-name");
        aElemet.parentsUntil(".input-group").prev().val(value);
    }
    $(function () {
        $('#form').bootstrapWizard({
            'nextSelector': '.button-next',
            'previousSelector': '.button-previous',
            onTabClick: function (tab, navigation, index, clickedIndex) {
                return false;//使a标签失去点击事件
            },
            onNext: function (tab, navigation, index) {
                assessHandleTitle(tab, navigation, index);
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


    function assessHandleTitle(tab, navigation, index) {
        var total = navigation.find('li').length;//得到li标签的长度
        var current = index + 1;
        $('li', $('#form')).removeClass("done");
        var li_list = navigation.find('li');
        for (var i = 0; i < index; i++) {
            $(li_list[i]).addClass("done");
        }
        if (current == 1) {
            $('.button-previous').hide();//隐藏上一步按钮
        } else {
            $('.button-previous').show();//显示上一步按钮
        }
        if (current >= total) {
            $('.button-next').hide();//隐藏下一步按钮
            $('#save').show();//显示提交按钮
        } else {
            $('.button-next').show();//显示上一步按钮
            $('#save').hide();//隐藏保存按钮
        }
        if (current == 2) {
            intiAssetTable();
        }
    }

    function intiAssetTable() {
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
