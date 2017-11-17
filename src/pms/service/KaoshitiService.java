package pms.service;

import pms.common.response.ResponseBean;

import java.util.List;
import java.util.Map;

public interface KaoshitiService extends BaseService{

    List<Map<String,Object>>  searchKaoshiti(Map<String, Object> args);
    List<Map<String, Object>> getMySchool(Map<String, Object> args);
}
