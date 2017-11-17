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
     * @Description: ��ѯ����⡢�ڿ�������б�
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:25:25
     */
    List<Map<String, Object>> queryAlrOrWaitList(String F_State);

    /**
     * 
     * @Method: queryTotal
     * @Description: ����״̬��id��ѯ�嵥����
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:25:25
     */
    Map<String, Object> queryTotalNum(String F_EnCode, String F_State);

    /**
     * 
     * @Method: queryListNum
     * @Description: ����״̬��id��ѯ�嵥����
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:25:25
     */
    Map<String, Object> queryListNum(String F_EnCode, String F_State);

    /**
     * 
     * @Method: getStockInPage
     * @Description: ��ѯ����б�
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:25:56
     */
    List<Map<String, Object>> getStockInPage(Map<String, Object> params);

    /**
     * 
     * @Method: getStockInCount
     * @Description: ��ѯ�������
     * @param params
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:26:31
     */
    int getStockInCount(Map<String, Object> params);

    /**
     * 
     * @Method: getStockOutPage
     * @Description: ��ѯ�����б�
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:27:09
     */
    List<Map<String, Object>> getStockOutPage(Map<String, Object> params);

    /**
     * 
     * @Method: getStockOutCount
     * @Description: ��ѯ��������
     * @param params
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:27:22
     */
    int getStockOutCount(Map<String, Object> params);

    /**
     * 
     * @Method: getScrapPage
     * @Description: ��ѯ�����б�
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:27:32
     */
    List<Map<String, Object>> getScrapPage(Map<String, Object> params);

    /**
     * 
     * @Method: getScrapCount
     * @Description: ��ѯ��������
     * @param params
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:27:43
     */
    int getScrapCount(Map<String, Object> params);

    /**
     * 
     * @Method: queryInvSeaList
     * @Description: ����Id���ϲ�ѯ�ʲ��������Ϣ
     * @param F_Id
     * @return Map<String,Object> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:28:53
     */
    Map<String, Object> queryInvSeaList(String F_Id);

    /**
     * 
     * @Method: queryListModalList
     * @Description: ����״̬��ѯ�����б�
     * @param opt
     * @return Map<String,Object> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:30:05
     */
    List<Map<String, Object>> queryListModalList(String F_Type);

    /**
     * 
     * @Method: queryNameByCode
     * @Description: ����code��ѯ����
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����4:25:25
     */
    Map<String, Object> queryNameByCode(String code);

    /**
     * 
     * @Method: queryNameByIds
     * @Description: ����code��ѯids
     * @param F_SizeIds
     * @return Map<String,Object> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����4:19:37
     */
    List<Map<String, Object>> queryNameByIds(String F_SizeIds);

    /**
     * 
     * @Method: queryModalList
     * @Description: �鿴ѡ�������ʲ��б�
     * @param F_Ids
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����5:23:12
     */
    List<Map<String, Object>> queryModalList(String F_Ids);

    /**
     * 
     * @Method: toRemove
     * @Description: �߳��嵥
     * @param AssetId
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����3:35:01
     */
    int toRemove(String F_Ids);

    /**
     * 
     * @Method: updateAssetByState
     * @Description: �޸��ʲ�״̬
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��22�� ����5:41:25
     */
    void updateAssetByState(String F_Ids, String F_State);

    /**
     * 
     * @Method: uploadfile
     * @Description: �ϴ�ͼƬ
     * @param fileName
     * @param F_Ids
     * @param opt
     *            void (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��22�� ����5:34:57
     */
    void uploadfile(String fileName, String F_Ids, String opt);

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
     * @CreateDate : 2017��5��22�� ����5:12:33
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
