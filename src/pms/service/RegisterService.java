package pms.service;


import pms.model.TableData;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
public interface RegisterService extends BaseService {

    List<Map<String, Object>> getOperator();
    List<Map<String, Object>> getApprover();
    List<Map<String, Object>> getAccepter();
    List<Map<String, Object>> getKeeper();
    TableData getPage(Map<String,Object> params);

}