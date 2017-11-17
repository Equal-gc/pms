package pms.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import pms.model.TableData;

/**
 * Created by user on 2017/5/3.
 */
public interface AssetService extends BaseService {

    /**
     *
     * @Method: queryAlreadyList
     * @Description: 查询待入库、在库的树形列表
     * @param params
     * @return TableData (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:29:32
     */
    List<Map<String, Object>> queryAlrOrWaitList(String F_State);

    /**
     *
     * @Method: getInvSeaPage
     * @Description: 分页查询库存查询列表
     * @param params
     * @return TableData (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:29:55
     */
    TableData getInvSeaPage(Map<String, Object> params);

    /**
     *
     * @Method: queryInvSeaList
     * @Description: 根据Id联合查询资产、入库信息
     * @param F_Id
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:30:05
     */
    Map<String, Object> queryInvSeaList(String F_Id);

    /**
     *
     * @Method: queryListModalList
     * @Description: 根据状态查询缓存列表
     * @param opt
     * @return TableData (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午4:30:05
     */
    List<Map<String, Object>> queryListModalList(String F_Type);

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
     * @Description: 剔除清单
     * @param AssetId
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午3:34:40
     */
    int toRemove(String F_Ids);

    /**
     *
     * @Method: queryProperty
     * @Description: 查看属性
     * @param f_Ids
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月19日 上午10:38:26
     */
    Map<String, Object> queryProperty(String F_Ids);

    void uploadfile(MultipartFile[] file, String F_Ids, String opt, String path);

    /**
     * 
     * @Method: saveOpertionForm
     * @Description: �����嵥
     * @param F_Ids
     * @param opt
     * @param F_ListNum
     * @param F_AddDate
     * @param F_Operator
     * @param F_Approver
     * @param F_Accepter
     * @param F_Keeper
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��22�� ����5:12:13
     */
    int saveOpertionForm(String[] F_Ids, String opt, String F_ListNum, String F_AddDate, String F_Operator, String F_Approver, String F_Accepter,
            String F_Keeper);

    /**
     * 
     * @Method: Edit
     * @Description: ��⡢���⡢����⡢����
     * @param pk
     * @param value
     * @param F_Ids
     * @param opt
     *            void (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��22�� ����3:41:34
     */
    void Edit(String pk, String value, String F_Ids, String opt);
}