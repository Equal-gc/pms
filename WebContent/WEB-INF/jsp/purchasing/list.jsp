<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>资产管理系统</title>

    <c:import url="/WEB-INF/jsp/include/script.jsp" charEncoding="UTF-8"/>

</head>

<body>
<c:import url="/WEB-INF/jsp/include/head.jsp" charEncoding="UTF-8"/>
<div class="container-fluid content">

    <div class="row">
        <c:import url="/WEB-INF/jsp/include/left.jsp" charEncoding="UTF-8"/>
        <!-- start: Content -->
        <div class="main">
            <div class="row">
                <div class="col-md-12" style="padding-left: 8px;padding-right: 8px">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-opencart app-green "></i><strong>采购登记</strong></h2>
                        </div>
                        <div class="panel-body"  id="searchForm">
                            <form action="" method="post" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-md-1 control-label">单号</label>

                                    <div class="col-md-2">
                                        <input type="text" name="F_ContractId" class="form-control input-sm" placeholder="请输入采购单号">
                                    </div>
                                    <label class="col-lg-2 col-md-2 control-label">采购日期</label>

                                    <div class="col-md-3">
                                        <div class="input-group date form_date ">
                                            <input class="form-control input-sm" size="16" type="text" value="" name="F_PurchaseDate"
                                                   readonly>
                                            <span class="input-group-addon"><span
                                                    class="glyphicon glyphicon-remove"></span></span>
                                            <span class="input-group-addon"><span
                                                    class="glyphicon glyphicon-calendar"></span></span>
                                        </div>
                                    </div>
                                    <label class="col-md-1 control-label">经办人</label>

                                    <div class="col-md-2">
                                        <select class="form-control input-sm" name="F_Operator">
                                            <option value="">请选择</option>
                                            <c:forEach var="operator" items="${Operators}">
                                                <option value="${operator.F_Operator}">${operator.F_Operator}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-1 control-label">审批人</label>

                                    <div class="col-md-2">
                                        <select class="form-control input-sm" name="F_Approver">
                                            <option value="">请选择</option>
                                            <c:forEach var="approver" items="${Approvers}">
                                                <option value="${approver.F_Approver}">${approver.F_Approver}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label class="col-lg-2 col-md-2 control-label">验收人</label>

                                    <div class="col-md-3">
                                        <select class="form-control input-sm" name="F_Accepter" >
                                            <option value="">请选择</option>
                                            <c:forEach var="accepter" items="${Accepters}">
                                                <option value="${accepter.F_Accepter}">${accepter.F_Accepter}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label class="col-md-1 control-label">保管员</label>

                                    <div class="col-md-2">
                                        <select class="form-control input-sm" name="F_Keeper">
                                            <option value="">请选择</option>
                                            <c:forEach var="keeper" items="${Keepers}">
                                                <option value="${keeper.F_Keeper}">${keeper.F_Keeper}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <label class="radio-inline">
                                            <input type="radio" name="searchDate"
                                                   value="thDays">
                                            三天
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="searchDate" checked
                                                   value="week">
                                            一周
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="searchDate"
                                                   value="month">
                                            一月
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="searchDate"
                                                   value="thMonths">
                                            三月
                                        </label>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                            <button type="button" class="btn btn-success" onclick="search();"><i class="fa fa-search"></i> 查询</button>
                            &nbsp;
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i> 资产登记</button>
                        </div>
                        <div class="panel-body">
                            <div id="dg-test" class="dg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end: Content -->
    </div>
    <!--/container-->
    <%--<c:import url="/WEB-INF/jsp/purchasing/register.jsp" charEncoding="UTF-8"/>--%>
    <%@ include file="/WEB-INF/jsp/purchasing/register.jsp"%>
    <%@ include file="/WEB-INF/jsp/purchasing/addAsset.jsp"%>
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

            $("#dg-test").datagrid({
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
                    title: "操作",
                    render: genOper
                }],
                attr: {"class": "table table-condensed table-striped table-hover"},
                pager: {
                    "bootstrap-sm": {
                        behavior: {"sliding": {"pages": 4}},
                    }
                },
                paramsDefault: {paging: 10}
            }).datagrid("filters", "#searchForm");
        })
        var oper_tpl = "<a class=\"btn btn-success btn-xs\" href=\"view?id={0}\" title='登记详情' > " +
                "<i class=\"fa fa-search-plus\"></i></a>&nbsp;" +
                "<a class=\"btn btn-warning btn-xs\" href=\"view\" title='导出'> " +
                "<i class=\"fa fa-file-excel-o\"></i></a>&nbsp;" +
                "<a class=\"btn btn-primary btn-xs\" href=\"view\" title='打印'> " +
                "<i class=\"fa fa-print\"></i></a>";
        function genOper(data) {
            return oper_tpl.format(data.value);
        }
        function search(){
            $("#dg-test").datagrid( "fetch" );
        }
    </script>
</body>
</html>