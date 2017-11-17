package pms.dao;

import java.util.List;
import java.util.Map;

public interface PingshizuoyeDao extends BaseDao{
    List<Map<String, Object>> PingshizuoyeSearch(Map<String, Object> args);
}
