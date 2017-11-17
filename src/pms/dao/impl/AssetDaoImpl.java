package pms.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import pms.dao.AssetDao;

/**
 * Created by user on 2017/5/3.
 */
@Repository
public class AssetDaoImpl extends BaseDaoImpl implements AssetDao {
    @Override
    public List<Map<String, Object>> queryAlrOrWaitList(String F_State) {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from Sys_AssetCode where F_ParentId like '001%' order by F_EnCode ");
        return sqlMapper.selectList(sql.toString());
    }

    @Override
    public Map<String, Object> queryTotalNum(String F_EnCode, String F_State) {
        StringBuffer sql = new StringBuffer();
        sql.append("select min(a.F_State) as F_State, count(0) as total_num from Asset_Attribute a where 1=1");
        if (StringUtils.isNotBlank(F_EnCode)) {
            sql.append(" and a.F_SizeId like '").append(F_EnCode).append("%'");
        }
        if (StringUtils.isNotBlank(F_State)) {
            sql.append(" and a.F_State in (").append(F_State).append(")");
        }
        return sqlMapper.selectOne(sql.toString());
    }

    @Override
    public Map<String, Object> queryListNum(String F_EnCode, String F_State) {
        StringBuffer sql = new StringBuffer();
        sql.append("select count(0) as list_num from Asset_Attribute a, Asset_OpBox b where a.F_Id = b.F_AssetId");
        if (StringUtils.isNotBlank(F_EnCode)) {
            sql.append(" and a.F_SizeId like '").append(F_EnCode).append("%'");
        }
        if (StringUtils.isNotBlank(F_State)) {
            sql.append(" and b.F_Type in (").append(F_State).append(")");
        }
        return sqlMapper.selectOne(sql.toString());
    }

    @Override
    public List<Map<String, Object>> getStockInPage(Map<String, Object> params) {
        StringBuffer sql = new StringBuffer();
        sql.append("<script>select min(a.F_Id) as F_Id, min(a.F_AttributeId) as F_AttributeId, min(a.F_ListNum) as F_ListNum, min(a.F_AddDate) as F_AddDate, "
                + "min(a.F_Operator) as F_Operator,  min(a.F_Approver) as F_Approver,  min(a.F_Accepter) as F_Accepter,  min(a.F_Keeper) as F_Keeper, "
                + "count(a.F_ListNum) as F_ListNum, count(a.F_ListNum) as F_Total, min(b.F_ClassL1Id) as F_ClassL1Id, min(b.F_ClassL2Id) as F_ClassL2Id, min(b.F_KindId) as F_KindId, min(b.F_SizeId) as F_SizeId, min(b.F_State) as F_State  "
                + "from Asset_StockIn a, Asset_Attribute b ");
        sql.append("<where> 1=1 ");
        sql.append("and a.F_AttributeId = b.F_Id");
        sql.append("    <if test=\" F_DestStore != null and F_DestStore != '' \"> ");
        sql.append("        and  b.F_DestStore = #{F_DestStore}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Code != null and F_Code != '' \"> ");
        sql.append("        and  b.F_Code = #{F_Code}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_SizeId != null and F_SizeId != '' \"> ");
        sql.append("        and  b.F_SizeId = #{F_SizeId}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_ListNum != null and F_ListNum != '' \"> ");
        sql.append("        and  a.F_ListNum = #{F_ListNum}");
        sql.append("    </if>");
        sql.append("</where>");
        sql.append(" group by F_ListNum ");
        sql.append("</script>");
        return sqlMapper.selectList(sql.toString(), params);
    }

    @Override
    public int getStockInCount(Map<String, Object> params) {
        return this.getStockInPage(params).size();
    }

    @Override
    public List<Map<String, Object>> getStockOutPage(Map<String, Object> params) {
        StringBuffer sql = new StringBuffer();
        sql.append("<script>select min(a.F_Id) as F_Id, min(a.F_AttributeId) as F_AttributeId, min(a.F_ListNum) as F_ListNum, min(a.F_AddDate) as F_AddDate, "
                + "min(a.F_Operator) as F_Operator,  min(a.F_Approver) as F_Approver,  min(a.F_Accepter) as F_Accepter,  min(a.F_Keeper) as F_Keeper, "
                + "count(a.F_ListNum) as F_ListNum, count(a.F_ListNum) as F_Total, min(b.F_ClassL1Id) as F_ClassL1Id, min(b.F_ClassL2Id) as F_ClassL2Id, min(b.F_KindId) as F_KindId, min(b.F_SizeId) as F_SizeId, min(b.F_State) as F_State  "
                + "from Asset_StockOut a, Asset_Attribute b ");
        sql.append("<where> 1=1 ");
        sql.append("and a.F_AttributeId = b.F_Id");
        sql.append("    <if test=\" F_DestStore != null and F_DestStore != '' \"> ");
        sql.append("        and  b.F_DestStore = #{F_DestStore}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Code != null and F_Code != '' \"> ");
        sql.append("        and  b.F_Code = #{F_Code}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_SizeId != null and F_SizeId != '' \"> ");
        sql.append("        and  b.F_SizeId = #{F_SizeId}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_ListNum != null and F_ListNum != '' \"> ");
        sql.append("        and  a.F_ListNum = #{F_ListNum}");
        sql.append("    </if>");
        sql.append("</where>");
        sql.append(" group by F_ListNum ");
        sql.append("</script>");
        return sqlMapper.selectList(sql.toString(), params);
    }

    @Override
    public int getStockOutCount(Map<String, Object> params) {
        return this.getStockOutPage(params).size();
    }

    @Override
    public List<Map<String, Object>> getScrapPage(Map<String, Object> params) {
        StringBuffer sql = new StringBuffer();
        sql.append("<script>select min(a.F_Id) as F_Id, min(a.F_AttributeId) as F_AttributeId, min(a.F_ListNum) as F_ListNum, min(a.F_AddDate) as F_AddDate, "
                + "min(a.F_Operator) as F_Operator,  min(a.F_Approver) as F_Approver,  min(a.F_Accepter) as F_Accepter,  min(a.F_Keeper) as F_Keeper, "
                + "count(a.F_ListNum) as F_ListNum, count(a.F_ListNum) as F_Total, min(b.F_ClassL1Id) as F_ClassL1Id, min(b.F_ClassL2Id) as F_ClassL2Id, min(b.F_KindId) as F_KindId, min(b.F_SizeId) as F_SizeId, min(b.F_State) as F_State "
                + "from Asset_Scrap a, Asset_Attribute b ");
        sql.append("<where> 1=1 ");
        sql.append("and a.F_AttributeId = b.F_Id");
        sql.append("    <if test=\" F_DestStore != null and F_DestStore != '' \"> ");
        sql.append("        and  b.F_DestStore = #{F_DestStore}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Code != null and F_Code != '' \"> ");
        sql.append("        and  b.F_Code = #{F_Code}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_SizeId != null and F_SizeId != '' \"> ");
        sql.append("        and  b.F_SizeId = #{F_SizeId}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_ListNum != null and F_ListNum != '' \"> ");
        sql.append("        and  a.F_ListNum = #{F_ListNum}");
        sql.append("    </if>");
        sql.append("</where>");
        sql.append(" group by F_ListNum ");
        sql.append("</script>");
        return sqlMapper.selectList(sql.toString(), params);
    }

    @Override
    public int getScrapCount(Map<String, Object> params) {
        return this.getScrapPage(params).size();
    }

    @Override
    public Map<String, Object> queryInvSeaList(String F_Id) {
        StringBuffer sql = new StringBuffer();
        sql.append("select a.F_AssetState, b.F_StockInPrice, b.F_StockInDate from Asset_Attribute a, Asset_StockIn b where a.F_Id = b.F_AttributeId and b.F_Id = '"
                + F_Id + "'");
        return sqlMapper.selectOne(sql.toString());
    }

    @Override
    public List<Map<String, Object>> queryListModalList(String F_Type) {
        StringBuffer sql = new StringBuffer();
        sql.append("select b.F_ClassL1Id, b.F_ClassL2Id, b.F_KindId, b.F_SizeId, count(0) as total from Asset_OpBox a, Asset_Attribute b where 1=1 ");
        if (StringUtils.isNotBlank(F_Type)) {
            sql.append("and a.F_AssetId = b.F_Id and a.F_Type = '").append(F_Type).append("'");
        }
        sql.append(" group by b.F_ClassL1Id, b.F_ClassL2Id, b.F_KindId, b.F_SizeId ");
        return sqlMapper.selectList(sql.toString());
    }

    @Override
    public Map<String, Object> queryNameByCode(String code) {
        StringBuffer sql = new StringBuffer();
        sql.append("select F_Name from Sys_AssetCode where 1=1 ");
        if (StringUtils.isNotBlank(code)) {
            sql.append("and F_EnCode = '").append(code).append("'");
        }
        return sqlMapper.selectOne(sql.toString());
    }

    @Override
    public List<Map<String, Object>> queryNameByIds(String F_SizeIds) {
        StringBuffer sql = new StringBuffer();
        sql.append("select b.F_Id from Asset_OpBox a, Asset_Attribute b where 1=1 ");
        if (StringUtils.isNotBlank(F_SizeIds)) {
            sql.append("and a.F_AssetId = b.F_Id and b.F_SizeId in (").append(F_SizeIds).append(")");
        }
        return sqlMapper.selectList(sql.toString());
    }

    @Override
    public List<Map<String, Object>> queryModalList(String F_Ids) {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from Asset_Attribute where 1=1 ");
        if (StringUtils.isNotBlank(F_Ids)) {
            sql.append("and F_Id in (").append(F_Ids).append(")");
        }

        return sqlMapper.selectList(sql.toString());
    }

    @Override
    public int toRemove(String F_Ids) {
        StringBuffer sql = new StringBuffer();
        sql.append("delete from Asset_OpBox where F_AssetId in (").append(F_Ids).append(")");
        return sqlMapper.delete(sql.toString());
    }

    @Override
    public void updateAssetByState(String F_Ids, String F_State) {
        StringBuffer sql = new StringBuffer();
        sql.append("update Asset_Attribute set F_State = '" + F_State + "' where F_Id in (" + F_Ids + ")");
        sqlMapper.update(sql.toString());
    }

    @Override
    public void uploadfile(String fileName, String F_Ids, String opt) {
        StringBuffer sql = new StringBuffer();
        sql.append("update " + opt + " set F_Images = '" + fileName + "' where F_AttributeId in (" + F_Ids + ")");
        sqlMapper.update(sql.toString());
    }

    @Override
    public int saveOpertionForm(String[] F_Ids, String opt, String F_ListNum, String F_AddDate, String F_Operator, String F_Approver,
            String F_Accepter, String F_Keeper) {
        StringBuffer sql = new StringBuffer();
        sql.append("insert into " + opt + " (F_AttributeId, F_ListNum, F_AddDate, F_Operator, F_Approver, F_Accepter, F_Keeper) values ");
        for (int i = 0; i < F_Ids.length; i++) {
            sql.append("('").append(F_Ids[i]).append("', '").append(F_ListNum).append("', '").append(F_AddDate).append("', '").append(F_Operator)
                    .append("', '").append(F_Approver).append("', '").append(F_Accepter).append("', '").append(F_Keeper).append("')");
            if (i < F_Ids.length - 1) {
                sql.append(",");
            }
        }
        return sqlMapper.insert(sql.toString());
    }

    @Override
    public void Edit(String pk, String value, String F_Ids, String opt) {
        StringBuffer sql = new StringBuffer();
        sql.append("update " + opt + " set " + pk + " = '" + value + "' where F_AttributeId in (" + F_Ids + ")");
        sqlMapper.update(sql.toString());
    }
}
