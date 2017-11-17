package pms.dao.impl;

import com.ctc.wstx.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import pms.dao.BaseDao;

import java.io.Serializable;
import java.util.*;

/**
 * Created by user on 2017/5/3.
 */
@Repository("baseDao")
public class BaseDaoImpl implements BaseDao {

    @Autowired
    protected SqlMapper sqlMapper;

     public List<Map<String, Object>> selectListBySql(String sql,Object args) {
         if(!sql.startsWith("<script>")){
             return sqlMapper.selectList("<script>"+sql+"</script>",args);
         }else {
             return sqlMapper.selectList(sql,args);
         }
    }
    public Map<String, Object> selectOneBySql(String sql,Object args) {
        if(!sql.startsWith("<script>")){
            return sqlMapper.selectOne("<script>" + sql + "</script>", args);
        }else {
            return sqlMapper.selectOne(sql,args);
        }
    }
    public int insert(String tableName, Map<String, Object> value) {
        Assert.notNull(tableName, "表名不能为空");
        Assert.notEmpty(value, "参数不能为空");
        Set set = value.entrySet();
        int len = set.size();
        StringBuilder sql = new StringBuilder();
        StringBuilder columns = new StringBuilder();
        StringBuilder values = new StringBuilder();

        for(Iterator var10 = set.iterator(); var10.hasNext();) {
            Map.Entry entry = (Map.Entry)var10.next();
            columns.append(((String)entry.getKey()).toLowerCase()).append(" ,");
            values.append("#{" + entry.getKey()+"} ,");
        }

        columns.deleteCharAt(columns.lastIndexOf(","));
        values.deleteCharAt(values.lastIndexOf(","));
        sql.append("insert into ").append(tableName.toLowerCase()).append(" ( ").append(columns).append(" ) values ( ").append(values).append(" )");
        return sqlMapper.insert(sql.toString(), value);
    }
    public int delete(String tableName, String idColumn, Serializable id) {
        Assert.isTrue(StringUtils.hasText(tableName), "传入的表名不能为空");
        Assert.isTrue(StringUtils.hasText(idColumn), "传入的主键列名不能为空");
        Assert.notNull(id, "传入的主键值不能为空");
        if(id instanceof String) {
            Assert.isTrue(StringUtils.hasText((String) id), "传入的主键值不能为空");
        }
        StringBuilder sql = new StringBuilder();
        sql.append("delete from ").append(tableName).append(" where ").append(idColumn).append(" = #{" + idColumn + "} ");
        return sqlMapper.delete(sql.toString(), id);
    }
    public int update(String tableName, String idColumn, Map<String, Object> value) {
        Assert.notNull(tableName, "表名不能为空");
        Assert.notNull(StringUtils.hasText(idColumn) ? idColumn : null, "条件列字段不能为空");
        Assert.notEmpty(value, "参数不能为空");
        Object whereValue = value.get(idColumn);
        Assert.notNull(whereValue, idColumn + "值不能为空");
        Set set = value.entrySet();
        StringBuilder sql = new StringBuilder();
        Iterator var8 = set.iterator();

        while(var8.hasNext()) {
            Map.Entry entry = (Map.Entry)var8.next();
            if(!idColumn.equals(entry.getKey())) {
                sql.append(((String)entry.getKey()).toLowerCase()).append(" = #{" + entry.getKey() + "} ,");
            }
        }
        if(sql.length() == 0) {
            Assert.notNull(StringUtils.hasText(sql.toString()) ? sql : null, "没有可操作的列");
        }
        sql.insert(0, " set ").insert(0, tableName).insert(0, "update ");
        sql.deleteCharAt(sql.lastIndexOf(","));
        sql.append(" where ").append(idColumn).append(" = #{"+idColumn+"} ");
        return sqlMapper.update(sql.toString(), value);
    }
    public List<Map<String, Object>> selectListByTable(String tableName, Map<String, Object> value,String orderBy) {
        Assert.notNull(tableName, "表名不能为空");
 //       Assert.notEmpty(value, "参数不能为空");
        StringBuilder sql = new StringBuilder("select * from "+tableName+ " where  1=1 ");
        if(!CollectionUtils.isEmpty(value)){
            Set set = value.entrySet();
            Iterator var8 = set.iterator();
            while(var8.hasNext()) {
                Map.Entry entry = (Map.Entry)var8.next();
                sql.append(" and "+((String) entry.getKey()).toLowerCase()).append(" = #{" + entry.getKey() + "} ");
            }
        }
        if(StringUtils.hasLength(orderBy)){
            sql.append(orderBy);
        }
        return sqlMapper.selectList(sql.toString(), value);
    }

    public List<Map<String, Object>> selectListPage(String orcSql,Map<String, Object> value){
        int page=Integer.parseInt(value.get("page").toString());
        int paging=Integer.parseInt(value.get("paging").toString());
        int sqlStart=paging*(page-1);
        value.put("sqlStart", sqlStart);
        if(value.get("orderby")==null||!StringUtils.hasText(value.get("orderby").toString())){
            value.put("orderby","F_Id");
        }
        if(value.get("direction")==null||!StringUtils.hasText(value.get("direction").toString())){
            value.put("direction","asc");
        }

        StringBuffer sql = new StringBuffer();
        sql.append("<script>SELECT TOP ${paging} * FROM ( SELECT  row_number() OVER ( order by ${orderby} ${direction} ) AS r  ,* FROM  (");
        sql.append(orcSql + "  ) B  ) A  WHERE r > ${sqlStart} </script>");
        return sqlMapper.selectList(sql.toString(), value);
    }
}
