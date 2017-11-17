package pms.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import pms.dao.AssetDao;
import pms.dao.RegisterDao;
import pms.model.TableData;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
@Repository
public class RegisterDaoImpl extends BaseDaoImpl implements RegisterDao {


    @Override
    public TableData getListPage(Map<String, Object> params) {
        TableData td=new TableData();
        Calendar calendar=Calendar.getInstance();
        if(params.containsKey("searchDate")&&StringUtils.hasText(params.get("searchDate").toString())){
            String dateType=params.get("searchDate").toString();
            if("thDays".equals(dateType)){
                calendar.add(Calendar.DATE,-3);
                params.put("startDate",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
            }else if("week".equals(dateType)){
                calendar.add(Calendar.DATE,-7);
                params.put("startDate",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
            }else if("month".equals(dateType)){
                calendar.add(Calendar.MONTH,-1);
                params.put("startDate",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
            }else if("thMonths".equals(dateType)){
                calendar.add(Calendar.MONTH,-3);
                params.put("startDate",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
            }
        }else{
            calendar.add(Calendar.DATE,-7);
            params.put("startDate",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
        }

        StringBuffer sql = new StringBuffer();
        sql.append("select * from Asset_Register ");
        sql.append("<where> 1=1 ");
        sql.append("    <if test=\" F_ContractId != null and F_ContractId != '' \"> ");
        sql.append("      and  F_ContractId = #{F_ContractId}");
        sql.append("    </if>");
        sql.append("    <if test=\" startDate != null and startDate != '' \"> ");
        sql.append("      and  F_AddDate >= #{startDate}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Operator != null and F_Operator != '' \"> ");
        sql.append("      and  F_Operator = #{F_Operator}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Approver != null and F_Approver != '' \"> ");
        sql.append("      and  F_Approver = #{F_Approver}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Accepter != null and F_Accepter != '' \"> ");
        sql.append("      and  F_Accepter = #{F_Accepter}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_Keeper != null and F_Keeper != '' \"> ");
        sql.append("      and  F_Keeper = #{F_Keeper}");
        sql.append("    </if>");
        sql.append("    <if test=\" F_PurchaseDate != null and F_PurchaseDate != '' \"> ");
        sql.append("      and  F_PurchaseDate = #{F_PurchaseDate}");
        sql.append("    </if>");
        sql.append("</where> ");
        td.setData(this.selectListPage(sql.toString(), params));
        td.setTotal(this.selectListBySql(sql.toString(),params).size());
        return td;
    }
}
