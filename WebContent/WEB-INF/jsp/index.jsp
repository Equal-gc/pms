<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>内部资产管理系统</title>

    <c:import url="include/script.jsp" charEncoding="UTF-8"/>

</head>

<body>
<c:import url="include/head.jsp" charEncoding="UTF-8"/>
<div class="container-fluid content">

    <div class="row">
        <c:import url="include/left.jsp" charEncoding="UTF-8"/>
        <!-- start: Content -->
        <div class="main">
            <iframe id="mainContent"  scrolling="no" style="width: 100%" frameborder="0"></iframe>
        </div>
        <!-- end: Content -->
    </div>
    <!--/container-->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Warning Title</h4>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div class="clearfix"></div>
    <script type="text/javascript">
        function getWinSize() {
            var winWidth;
            var winHeight;
            if (window.innerWidth)
                winWidth = window.innerWidth;
            else if ((document.body) && (document.body.clientWidth))
                winWidth = document.body.clientWidth;
            // 获取窗口高度
            if (window.innerHeight)
                winHeight = window.innerHeight;
            else if ((document.body) && (document.body.clientHeight))
                winHeight = document.body.clientHeight;
            // 通过深入 Document 内部对 body 进行检测，获取窗口大小
            if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
                winHeight = document.documentElement.clientHeight;
                winWidth = document.documentElement.clientWidth;
            }
            var winSize = {};
            winSize.winHeight = winHeight
            winSize.winWidth = winWidth
            return winSize;
        }
        $(function () {
            var winSize = getWinSize();
            $("#mainContent").prop("height", winSize.winHeight - 90);
        });

    </script>
</body>
</html>