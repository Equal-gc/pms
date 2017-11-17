package pms.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/3.
 */
public interface AssetDao extends BaseDao {

    /**
     * 
     * @Method: queryAlreadyList
     * @Description: 查询待入库、在库的树形列表
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:25:25
     */
    List<Map<String, Object>> queryAlrOrWaitList(String F_State);

    /**
     * 
     * @Method: queryTotal
     * @Description: 根据状态和id查询清单数量
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:25:25
     */
    Map<String, Object> queryTotalNum(String F_EnCode, String F_State);

    /**
     * 
     * @Method: queryListNum
     * @Description: 根据状态和id查询清单数量
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:25:25
     */
    Map<String, Object> queryListNum(String F_EnCode, String F_State);

    /**
     * 
     * @Method: getStockInPage
     * @Description: 查询入库列表
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:25:56
     */
    List<Map<String, Object>> getStockInPage(Map<String, Object> params);

    /**
     * 
     * @Method: getStockInCount
     * @Description: 查询入库数量
     * @param params
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:26:31
     */
    int getStockInCount(Map<String, Object> params);

    /**
     * 
     * @Method: getStockOutPage
     * @Description: 查询出库列表
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:27:09
     */
    List<Map<String, Object>> getStockOutPage(Map<String, Object> params);

    /**
     * 
     * @Method: getStockOutCount
     * @Description: 查询出库数量
     * @param params
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:27:22
     */
    int getStockOutCount(Map<String, Object> params);

    /**
     * 
     * @Method: getScrapPage
     * @Description: 查询报废列表
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:27:32
     */
    List<Map<String, Object>> getScrapPage(Map<String, Object> params);

    /**
     * 
     * @Method: getScrapCount
     * @Description: 查询报废数量
     * @param params
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:27:43
     */
    int getScrapCount(Map<String, Object> params);

    /**
     * 
     * @Method: queryInvSeaList
     * @Description: 根据Id联合查询资产、入库信息
     * @param F_Id
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:28:53
     */
    Map<String, Object> queryInvSeaList(String F_Id);

    /**
     * 
     * @Method: queryListModalList
     * @Description: 根据状态查询缓存列表
     * @param opt
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:30:05
     */
    List<Map<String, Object>> queryListModalList(String F_Type);

    /**
     * 
     * @Method: queryNameByCode
     * @Description: 根据code查询名称
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:25:25
     */
    Map<String, Object> queryNameByCode(String code);

    /**
     * 
     * @Method: queryNameByIds
     * @Description: 根据code查询ids
     * @param F_SizeIds
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午4:19:37
     */
    List<Map<String, Object>> queryNameByIds(String F_SizeIds);

    /**
     * 
     * @Method: queryModalList
     * @Description: 查看选中类别的资产列表
     * @param F_Ids
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午5:23:12
     */
    List<Map<String, Object>> queryModalList(String F_Ids);

    /**
     * 
     * @Method: toRemove
     * @Description: 踢出清单
     * @param AssetId
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午3:35:01
     */
    int toRemove(String F_Ids);

    /**
     * 
     * @Method: updateAssetByState
     * @Description: 修改资产状态
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 下午5:41:25
     */
    void updateAssetByState(String F_Ids, String F_State);

    /**
     * 
     * @Method: uploadfile
     * @Description: 上传图片
     * @param fileName
     * @param F_Ids
     * @param opt
     *            void (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 下午5:34:57
     */
    void uploadfile(String fileName, String F_Ids, String opt);

    /**
     * 
     * @Method: saveOpertionForm
     * @Description: 保存清单
     * @param F_Ids
     * @param opt
     * @param F_ListNum
     * @param F_AddDate
     * @param F_Operator
     * @param F_Approver
     * @param F_Accepter
     * @param F_Keeper
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 下午5:12:33
     */
    int saveOpertionForm(String[] F_Ids, String opt, String F_ListNum, String F_AddDate, String F_Operator, String F_Approver, String F_Accepter,
            String F_Keeper);

    /**
     * 
     * @Method: Edit
     * @Description: 入库、出库、再入库、报废
     * @param pk
     * @param value
     * @param F_Ids
     * @param opt
     *            void (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 下午3:41:34
     */
    void Edit(String pk, String value, String F_Ids, String opt);

}
