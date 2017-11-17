package pms.service;

import java.util.List;
import java.util.Map;

public interface PingshizuoyeService extends BaseService{
    List<Map<String, Object>> PingshizuoyeSearch(Map<String, Object> args);
}
