package pms.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.dao.RegisterDao;
import pms.model.TableData;
import pms.service.AssetService;
import pms.service.RegisterService;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class RegisterServiceImpl extends BaseServiceImpl implements RegisterService {

    @Autowired
    private RegisterDao registerDao;


    @Override
    public List<Map<String, Object>> getOperator() {
        String sql="SELECT DISTINCT F_Operator from Asset_Register";
        return registerDao.selectListBySql(sql,null);
    }
    @Override
    public List<Map<String, Object>> getApprover() {
        String sql="SELECT DISTINCT F_Approver from Asset_Register";
        return registerDao.selectListBySql(sql, null);
    }
    @Override
    public List<Map<String, Object>> getAccepter() {
        String sql="SELECT DISTINCT F_Accepter from Asset_Register";
        return registerDao.selectListBySql(sql,null);
    }
    @Override
    public List<Map<String, Object>> getKeeper() {
        String sql="SELECT DISTINCT F_Keeper from Asset_Register";
        return registerDao.selectListBySql(sql,null);
    }
    @Override
    public TableData getPage(Map<String,Object> params) {
        return registerDao.getListPage(params);
    }
}