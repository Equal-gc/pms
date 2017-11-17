var user=null;
$(function()
{
    var username=$.getUrlParam('username');//获取登陆成功后的用户名
    user=username;
    $("#username").text("欢迎您！"+username);
    //getUserInfo(user);//获取用户的个人信息
    getUpFile();
});
$.getUrlParam = function(name)
{
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return unescape(r[2]);
    return null;
};
function goperson()
{
    window.location.href="person.jsp?username="+user;
}
function getUserInfo(user)
{
    $("#user").text(user);
    $.getJSON("./pms/index/getPersonInfo",{"username":user},function (rep)
    {
        var tbody = $('#tbodyinfo').empty();
        $.each(rep.data,function(i,v)
        {
            $("<tr></tr>")
                .append($("<td align='center'></td>").append(i))
                .append($("<td align='center'></td>").append(v))
                .appendTo(tbody);
        });
    });
}
function getUpFile()//获取用户上传文件列表
{
    $.getJSON("./pms/index/getUpFile",{},function (rep)
    {
        var tbody = $('#upfile').empty();
        $.each(rep.data,function(i,v)
        {
            $("<tr></tr>")
                .append($("<td align='center'></td>").append(i+1))
                .append($("<td align='center'></td>").append(v))
                .appendTo(tbody);
        });
    });
}
function getDownFile() //获取用户下载文件列表
{
    $.getJSON("./pms/index/getDownFile",{},function (rep)
    {
        var tbody = $('#downfile').empty();
        $.each(rep.data,function(i,v)
        {
            $("<tr></tr>")
                .append($("<td align='center'></td>").append(i))
                .append($("<td align='center'></td>").append(v))
                .appendTo(tbody);
        });
    });
}