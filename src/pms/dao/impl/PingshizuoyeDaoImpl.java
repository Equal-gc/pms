package pms.dao.impl;


import org.springframework.stereotype.Repository;
import pms.dao.PingshizuoyeDao;

import java.util.List;
import java.util.Map;

@Repository
public class PingshizuoyeDaoImpl extends BaseDaoImpl implements PingshizuoyeDao {
    @Override
    public List<Map<String, Object>> PingshizuoyeSearch(Map<String, Object> args) {
        StringBuffer sql = new StringBuffer();
        String a="0";
        args.put("udoc_type","平时作业");
        sql.append("<script>select udoc_id,udoc_name,udoc_url from updocument");
        sql.append("<where> 1=1");
        sql.append("    <if test=\" udoc_school!=a \"> ");
        sql.append("   and udoc_school = #{udoc_school}");
        sql.append("    </if>");
        sql.append("    <if test=\" udoc_department != a \"> ");
        sql.append("      and  udoc_department = #{udoc_department}");
        sql.append("    </if>");
        sql.append("    <if test=\" udoc_major != a \"> ");
        sql.append("      and  udoc_major = #{udoc_major}");
        sql.append("    </if>");
        sql.append("    <if test=\" udoc_subject != a \"> ");
        sql.append("      and  udoc_subject = #{udoc_subject}");
        sql.append("    </if>");
        sql.append("    <if test=\" udoc_grade != a \"> ");
        sql.append("      and  udoc_grade = #{udoc_grade}");
        sql.append("    </if>");
        sql.append("      and  udoc_type=#{udoc_type}");
        sql.append("</where></script>");
        return sqlMapper.selectList(sql.toString(),args);
    }
}
