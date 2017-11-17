package pms.common.response;

/**
 * Created by hatang on 8/8/2015.
 */
public interface ResponseMessage {

    String OPER_SUCCESS = "操作成功";
    String OPER_FAIL = "操作失败";
    String QUERY_SUCCESS = "";//不返回提示信息，前台处理
    String QUERY_FAIL = "查询失败";
    String ADD_SUCCESS = "添加成功";
    String ADD_FAIL = "添加失败";
    String IMPORT_SUCCESS = "添加成功";
    String IMPORT_FAIL = "添加失败";
    String UPDATE_SUCCESS = "更新成功";
    String UPDATE_FAIL = "更新失败";
    String DELETE_SUCCESS = "删除成功";
    String DELETE_FAIL = "删除失败";
    String LOGIN_SUCCESS = "登陆成功";
    String LOGIN_FAIL = "登陆失败";
    String LOGOUT_SUCCESS = "退出成功";
    String LOGOUT_FAIL = "退出失败";
    String REGISTER_FAIL = "注册失败！";
    String REGISTER_EXIST = "该用户已经存在！";
    String REGISTER_SUCCESS = "注册成功！";
    String RESET_PASSWORD_OLDPASSWORD="原密码不正确";
    String RESET_PASSWORD_SUCCESS="密码设置成功";
    String RESET_PASSWORD_FAIL="密码设置失败";
    String ROLE_ADD_OR_UPDATE_SUCCESS = "操作角色信息成功";
    String ROLE_ADD_OR_UPDATE_FAIL = "操作角色信息失败";

}
