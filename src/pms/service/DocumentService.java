package pms.service;

import java.util.Map;

public interface DocumentService extends BaseService{
    int upload(Map<String, Object> args,String savePath);//提交注册信息
    int uploadMajor(Map<String, Object> args,String savePath);
}
