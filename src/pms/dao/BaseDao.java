package pms.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
public interface BaseDao {
    List<Map<String, Object>> selectListBySql(String sql,Object args);
    int insert(String tableName, Map<String, Object> value);
    int delete(String tableName, String idColumn, Serializable id);
    int update(String tableName, String idColumn, Map<String, Object> value);
    List<Map<String, Object>> selectListByTable(String tableName, Map<String, Object> value,String orderBy);
    List<Map<String, Object>> selectListPage(String orcSql,Map<String, Object> value);
}
