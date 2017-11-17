package pms.service;

import pms.common.response.ResponseBean;

import java.util.List;
import java.util.Map;

public interface SearchService extends BaseService{
    List<Map<String, Object>> findAllSchool();
    List<Map<String, Object>> findAllDepartment(Map<String, Object> args);
    List<Map<String, Object>> findAllMajor(Map<String, Object> args);
    List<Map<String, Object>> findAllSubject(Map<String, Object> args);

}
