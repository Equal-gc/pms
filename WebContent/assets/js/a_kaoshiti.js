
$(function()
{
    getCurUserInfo();
});

function getCurUserInfo()
{
    $.getJSON("./pms/kaoshiti/getPersonInfo",
        {
        },function (data) {
            $("#username").text("欢迎您！"+data.data.user_name);
            var schoolid=data.data.user_school;
            findMySchool(schoolid);
        }, 'json');

}

//获取当前用户所在学校信息
function findMySchool(schoolid)
{
    if(schoolid==null) return;
    $.getJSON("./pms/kaoshiti/getMySchool",{ "school_id":schoolid }, function(data)
    {
        var schoolList = $('select.udoc_school').empty().append("<option value=0>请选择学校</option>");
        $.each(data, function(i,v)
        {
            $("<option "+analyzeSelect(v.school_id,schoolid) +" value="+v.school_id+"></option>")
                .append(v.school_name)
                .appendTo(schoolList);
            findDepartment(schoolid)
        });
    });
}



function analyzeSelect(id, curid){
    return curid > 0 && id == curid ? " selected=true " : "" ;
}

// 根据学校获取学院

function findDepartment(schoolId)
{
    if (schoolId == 0) return;
    $.getJSON('./pms/search/department', {"schoolId": schoolId}, function (data) {
        var departmentList = $('select.udoc_department').empty().append("<option value=0>请选择学院</option>");
        $.each(data, function(i,v)
        {
            $('<option value='+v.depart_id+'></option>').append(v.depart_name).appendTo(departmentList);
        });
    });
    $('select.udoc_department').change(function () {
        //alert($('select.udoc_department').val());
        var  departId=$('select.udoc_department').val();
        findMajor(departId);
    });
}
// 根据学院获取专业

function findMajor(departId)
{
    if (departId == 0) return;
    $.getJSON('./pms/search/major', {"departId": departId}, function (data) {
        var majorList = $('select.udoc_major').empty().append("<option value=0>请选择专业</option>");
        $.each(data, function(i,v)
        {
            $('<option value='+v.major_id+'></option>').append(v.major_name).appendTo(majorList);
        });
    });
    $('select.udoc_major').change(function () {
        //alert($('select.udoc_department').val());
        var  majorId=$('select.udoc_major').val();
        findSubject(majorId);
    });
}
// 根据专业获取科目

function findSubject(majorId)
{
    if (majorId == 0) return;
    $.getJSON('./pms/search/subject', {"majorId": majorId}, function (data) {
        var subjectList = $('select.udoc_subject').empty().append("<option value=0>请选择科目</option>");
        $.each(data, function(i,v)
        {
            $('<option value='+v.subject_id+'></option>').append(v.subject_name).appendTo(subjectList);
        });
    });
}

function searchfiles()
{
    var  schoolId=$('select.udoc_school').val();
    var  departId=$('select.udoc_department').val();
    var  majorId=$('select.udoc_major').val();
    var  subjectId=$('select.udoc_subject').val();
    var grade=$('select.udoc_grade').val();
 /*   var type=$('select.udoc_type').val();
    var points=document.getElementById("points").value;
    var udoc_name=insertTitle(document.getElementById("udoc_name").value);*/

    $.getJSON("./pms/kaoshiti/searchKaoshiti",
        {
          /*  "udoc_name":udoc_name,//文档名
            "udoc_points":points,//文档积分*/
            "udoc_school":schoolId,//文档所属学校
            "udoc_department":departId,//所属院系
            "udoc_major":majorId,//所属专业
            "udoc_subject":subjectId,//所属科目
            "udoc_grade":grade,//所属年级
           /* "udoc_type":type,//所属类型*/
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

