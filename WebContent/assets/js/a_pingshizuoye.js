$(function()
{
    search(); // 获取所有学校
});
function search()
{
    var  schoolId=$('select.udoc_school').val();
    var  departId=$('select.udoc_department').val();
    var  majorId=$('select.udoc_major').val();
    var  subjectId=$('select.udoc_subject').val();
    var grade=$('select.udoc_grade').val();
    $.getJSON("./pms/pingshizuoye/seach",
        {
            "udoc_school":schoolId,//文档所属学校
            "udoc_department":departId,//所属院系
            "udoc_major":majorId,//所属专业
            "udoc_subject":subjectId,//所属科目
            "udoc_grade":grade,//所属年级
        },function (data) {
            var tbody = $('tbody.tbody-info').empty();
            $.each(data, function(i,v){
                $("<tr></tr>")
                    .append($("<td></td>").append(i+1))
                    .append($("<td></td>").append(v.udoc_name))
                    .append($("<td></td>").append(analysisBtns(v)))
                    .appendTo(tbody);
            });
        }, 'json');
}
/*
 * 解析按钮组
 * te5l.com [K]
 */
function analysisBtns(v){
    var btns = "";
    btns +=  "<button type='button' class='btn btn-primary btn-xs' onclick=''><span class='glyphicon glyphicon-pencil'></span>预览</button>&nbsp&nbsp&nbsp" ;
    btns += "<button type='button' class='btn btn-warning btn-xs' onclick=''><span class='glyphicon glyphicon-hand-left'></span>下载</button>" ;
    return btns;
}