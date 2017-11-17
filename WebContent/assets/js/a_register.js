$(function()
{
    getUserTermInfo();
});

function  getUserTermInfo() {

    $.getJSON("./pms/index/getEntranceTime", function(data)
    {
        var timeList = $('select.user_entrance_time').empty().append("<option value=0>请选择入学时间</option>");
        $.each(data, function(i,v)
        {
            $('<option value='+v.entrancetimeid+'></option>').append(v.entrancetime).appendTo(timeList);

        });
    });

    $('select.user_entrance_time').change(function () {
        alert($('select.user_entrance_time').val());
        var  entrancetime=$('select.user_entrance_time').val();
        //获取年级、第几学期 等信息并显示
        getMoreInfo(entrancetime);

    });
}
function getMoreInfo(entrancetime) {
    alert(entrancetime);
    $.getJSON("./pms/index/getMoreInfo", {"entrancetime":entrancetime},function(data)
    {

        alert(data.data.curgrade);
        alert(data.data.curterm);

        $('#user_current_grade').val(data.data.curgrade);
        $('#user_current_term').val(data.data.curterm);
    });
}
function register()
{

    var name=$("#u_name").val();
    var pwd=$("#u_pwd").val();
    var realname=$("#u_realname").val();
    var email=$("#u_email").val();
    var school=$("#u_school").val();
    var depart=$("#u_depart").val();
    var major=$("#u_major").val();
    var entime=$('select.user_entrance_time').val();
    var education=$('select.user_education').val();
    var grade=$("#user_current_grade").val();
    var term=$("#user_current_term").val();

    if(name==null||name.trim()==""||name=="undefined")
    {
        $("#usernamewarning").text("请输入用户名");
        return;
    }
    else
    {
        $("#usernamewarning").text("");
    }
    if(pwd==null||pwd.trim()==""||pwd=="undefined")
    {
        $("#userpwdwarning").text("请输入密码");
        return;
    }
    else
    {
        $("#userpwdwarning").text("");
    }

    if(school==null||school.trim()==""||school=="0")
    {
        $("#userschwarning").text("  select school");
        return;
    }
    else
    {
        $("#userschwarning").text("");
    }
    if(education==null||education.trim()==""||education=="0"||education==0)
    {
        $("#user_education_warning").text("请选择学历！");
        return;
    }
    else
    {
        $("#user_education_warning").text("");
    }
    if(entime==null||entime.trim()==""||entime=="0"||entime==0)
    {

        $("#user_entrance_time_warning").text("请选择入学时间！");
        return;
    }
    else
    {
        $("#user_entrance_time_warning").text("");
    }


    $.getJSON("./pms/index/register",
        {
            "user_name":name,
            "user_real_name":realname,
            "user_password":pwd,
            "user_points":0,
            "user_role":"普通用户",
            "user_email":email,
            "user_school":school,
            "user_department":depart,
            "user_major":major,
            "user_entrance_time":entime,
            "user_education":education,
            "user_current_grade":grade,
            "user_current_term":term
        },function (data)
       {
           if(data.code=="000")
           {
               alert(data.data+"  恭喜您注册成功！");
               window.location.href="denglu.jsp?username="+data.data;
           }
           else
           {
               alert(data.data);
           }

       });
}
function isExit()
{
    var name=$("#u_name").val();
    if(name==null||name.trim()==""||name=="undefined")
    {
        $("#usernamewarning").text("请输入用户名");
    }
    else
    {
        $("#usernamewarning").text("");
        $.getJSON("./pms/index/isExitUser",
            {
                "username":name,
            },
            function (data)
           {
               if(data.code=="999")
               {
                   $("#usernamewarning").text(data.data);
                   $("#u_name").val("");
               }
               if(data.code=="000")
               {
                   $("#usernamewarning").text("");
               }
           });
    }
}
