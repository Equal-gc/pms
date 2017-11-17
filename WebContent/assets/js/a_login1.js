var user=null;
$(function()
{
    var username=$.getUrlParam('username');//获取登陆成功后的用户名
    user=username;
    //$("#username").text("欢迎您！"+username);
    getCurUserInfo();
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