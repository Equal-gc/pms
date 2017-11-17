package pms.dao;

import java.util.Map;

public  interface DocumentDao extends BaseDao{
    int upload(Map<String, Object> args,String savePath);//提交注册信息
    int uploadMajor(Map<String, Object> args,String savePath);
}
