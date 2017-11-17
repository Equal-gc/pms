package pms.dao.impl;

import org.springframework.stereotype.Repository;
import pms.dao.ManageDao;
import pms.dao.SearchDao;

import java.util.List;
import java.util.Map;

@Repository
public class ManageDaoImpl extends BaseDaoImpl implements ManageDao {
    @Override
    public List<Map<String, Object>> userlist() {
        StringBuffer sql = new StringBuffer();
        sql.append("select user_real_name,user_points,user_role from user ");
        return sqlMapper.selectList(sql.toString());
    }
//    @Override
//    public List<Map<String, Object>> findAllDepartment(Map<String, Object> args) {
//        StringBuffer sql = new StringBuffer();
//        sql.append("select depart_id,depart_name from department where school_id=#{schoolId}");
//        return sqlMapper.selectList(sql.toString(),args);
//    }
//    @Override
//    public List<Map<String, Object>> findAllMajor(Map<String, Object> args) {
//        StringBuffer sql = new StringBuffer();
//        sql.append("select major_id,major_name from major where depart_id=#{departId}");
//        return sqlMapper.selectList(sql.toString(),args);
//    }
//    @Override
//    public List<Map<String, Object>> findAllSubject(Map<String, Object> args) {
//        StringBuffer sql = new StringBuffer();
//        sql.append("select subject_id,subject_name from subject where major_id=#{majorId}");
//        return sqlMapper.selectList(sql.toString(),args);
//    }
}
