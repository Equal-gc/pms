package pms.dao;

import java.util.List;
import java.util.Map;

public interface SearchDao extends BaseDao {
     List<Map<String, Object>> findAllSchool();
     List<Map<String, Object>> findAllDepartment(Map<String, Object> args);
     List<Map<String, Object>> findAllMajor(Map<String, Object> args);
     List<Map<String, Object>> findAllSubject(Map<String, Object> args);
}
