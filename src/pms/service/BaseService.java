package pms.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
public interface BaseService {

    /*List<Map<String, Object>> selectListBySql(String sql,Object args);*/
    void insert(String tableName, Map<String, Object> value);
    int delete(String tableName, String idColumn, Serializable id);
    int update(String tableName, String idColumn, Map<String, Object> value);
    List<Map<String, Object>> selectListByTable(String tableName, Map<String, Object> value,String orderBy);

}
