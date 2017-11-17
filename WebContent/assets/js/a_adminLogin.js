$(function()
{
});
function login()
{
    var reg = /^[\w\u4e00-\u9fa5]+$/;
    var name=$("#username").val();
    var pwd=$("#password").val();
    if(name==null||name.trim()==""||name=="undefined"||(!reg.test(name)))
    {
        alert("请输入正确的用户名！");
        return;
    }
    if(pwd==null||pwd.trim()==""||pwd=="undefined"||(!reg.test(pwd)))
    {
        alert("请输入正确的密码！");
        return;
    }
    $.getJSON("../pms/index/loginSubmit",{"username":name,"password":pwd},function (data)
    {
        if(data.code=="000")
        {
            window.location.href="manage.jsp";
        }
        else
        {
            alert(data.data);
        }
    },'json');
}