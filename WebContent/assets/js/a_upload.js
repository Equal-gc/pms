$(function()
{
    getCurUserInfo();
    findAllSchool(); // 获取所有学校
  /*  var id = '<%=Session["username"] %>';*/
});

function getCurUserInfo()
{
    $.getJSON("./pms/kaoshiti/getPersonInfo",
        {
        },function (data) {
            $("#username").text("欢迎您！"+data.data.user_name);
            var schoolid=data.data.user_school;
        }, 'json');

}
function findAllSchool()
{
    $.getJSON("./pms/search/school", function(data)
    {
        var schoolList = $('select.udoc_school').empty().append("<option value=0>请选择学校</option>");
        $.each(data, function(i,v)
        {
            $('<option value='+v.school_id+'></option>').append(v.school_name).appendTo(schoolList);

        });
    });
    $('select.udoc_school').change(function () {
        //alert($('select.udoc_school').val());
        var  schoolId=$('select.udoc_school').val();
        findDepartment(schoolId);
    });

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
// 上传文件

function upload()
{
    var  schoolId=$('select.udoc_school').val();
    var  departId=$('select.udoc_department').val();
    var  majorId=$('select.udoc_major').val();
    var  subjectId=$('select.udoc_subject').val();
    var grade=$('select.udoc_grade').val();
    var type=$('select.udoc_type').val();
    var points=document.getElementById("points").value;
    var udoc_name=insertTitle(document.getElementById("udoc_name").value);
    $.getJSON("./pms/document/upload",
        {
            "udoc_name":udoc_name,//文档名
            "udoc_points":points,//文档积分
            "udoc_school":schoolId,//文档所属学校
            "udoc_department":departId,//所属院系
            "udoc_major":majorId,//所属专业
            "udoc_subject":subjectId,//所属科目
            "udoc_grade":grade,//所属年级
            "udoc_type":type,//所属类型
        },function (data)
        {
            if(data.code=="000")
            {
                alert(data.data+"  恭喜您上传成功！");
                //window.location.href="denglu.jsp?username="+data.data;
            }
            else
            {
                alert(data.data);
            }

        });
}
function insertTitle(path)
{
    var test1 = path.lastIndexOf("/");  //对路径进行截取
    var test2 = path.lastIndexOf("\\");  //对路径进行截取
    var test= Math.max(test1, test2)
    if(test<0){
        return path;
    }else{
        return path.substring(test+1); //赋值文件名
    }
        }
