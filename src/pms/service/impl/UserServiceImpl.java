package pms.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.common.response.ResponseBean;
import pms.dao.UserDao;
import pms.service.UserService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class UserServiceImpl extends BaseServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<Map<String, Object>> queryForList(Map<String, Object> args) {

        return userDao.queryForList(args);
    }

    @Override
    public int login(Map<String, Object> args)
    {
        return userDao.login(args);
    }
    //获取用户个人信息
    @Override
    public ResponseBean<Map<String,Object>> getPersonInfo(Map<String,Object> username)
    {
        return userDao.getPersonInfo(username);
    }
    //获取用户上传文件
    @Override
    public ResponseBean<List<Map<String,Object>>> getUpFile(Map<String, Object> param)
    {
        return userDao.getUpFile(param);
    }
    //获取用户下载文件
    @Override
    public ResponseBean<List<Map<String,Object>>> getDownFile(Map<String, Object> param)
    {
        return userDao.getDownFile(param);
    }
    //判断该用户名是否已被注册
    @Override
    public int isExitUser(Map<String, Object> args)
    {
        return userDao.isExitUser(args);
    }
    //提交注册信息
    @Override
    public int register(Map<String, Object> args)
    {
        return userDao.register(args);
    }
}