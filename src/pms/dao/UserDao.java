package pms.dao;


import java.util.List;
import java.util.Map;
import pms.common.response.ResponseBean;

/**
 * Created by user on 2017/5/3.
 */
public interface UserDao extends BaseDao {

    List<Map<String, Object>> queryForList(Map<String, Object> args);
    int login(Map<String, Object> args);
    ResponseBean<Map<String,Object>> getPersonInfo(Map<String,Object> username);//获取用户个人信息
    ResponseBean<List<Map<String,Object>>> getUpFile(Map<String,Object> param);//获取用户上传文件
    ResponseBean<List<Map<String,Object>>> getDownFile(Map<String,Object> param);//获取用户下载文件
    int isExitUser(Map<String, Object> args);//判断该用户名是否已被注册
    int register(Map<String, Object> args);//提交注册信息
}
