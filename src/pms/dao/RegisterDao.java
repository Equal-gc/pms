package pms.dao;


import pms.model.TableData;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
public interface RegisterDao extends BaseDao {
    TableData getListPage(Map<String,Object> params);

}
