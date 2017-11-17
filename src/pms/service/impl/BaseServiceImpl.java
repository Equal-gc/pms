package pms.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.dao.BaseDao;
import pms.service.BaseService;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class BaseServiceImpl implements BaseService {
    protected Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource(
            name = "baseDao"
    )
    private BaseDao baseDao;

    /*@Override
    public List<Map<String, Object>> selectListBySql(String sql,Object args) {
        return baseDao.selectListBySql(sql, args);
    }*/
    public void insert(String tableName, Map<String, Object> value){
         baseDao.insert(tableName,value);
    }
    public int delete(String tableName, String idColumn, Serializable id){
        return baseDao.delete(tableName,idColumn,id);
    }
    public int update(String tableName, String idColumn, Map<String, Object> value){
        return baseDao.update(tableName,idColumn,value);
    }

    @Override
    public List<Map<String, Object>> selectListByTable(String tableName, Map<String, Object> value, String orderBy) {
        return baseDao.selectListByTable(tableName,value,orderBy);
    }
}
