package pms.service.impl;

import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import pms.dao.AssetDao;
import pms.model.TableData;
import pms.service.AssetService;

/**
 * Created by user on 2017/5/3.
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class AssetServiceImpl extends BaseServiceImpl implements AssetService {

    @Override
    public List<Map<String, Object>> queryAlrOrWaitList(String F_State) {
        List<Map<String, Object>> list = assetDao.queryAlrOrWaitList(F_State);

        for (Map<String, Object> alrOrWaitMap : list) {
            Map<String, Object> totalMap = assetDao.queryTotalNum(alrOrWaitMap.get("F_EnCode").toString(), F_State);
            alrOrWaitMap.put("total_num", totalMap.get("total_num"));
            alrOrWaitMap.put("F_State", totalMap.get("F_State"));

            Map<String, Object> listMap = assetDao.queryListNum(alrOrWaitMap.get("F_EnCode").toString(), F_State);
            alrOrWaitMap.put("list_num", listMap.get("list_num"));
        }
        return list;
    }

    @Override
    public TableData getInvSeaPage(Map<String, Object> params) {
        TableData tableData = new TableData();
        List<Map<String, Object>> returnList = new LinkedList<>();

        List<Map<String, Object>> stockInPage = assetDao.getStockInPage(params);
        int stockInCount = assetDao.getStockInCount(params);
        if (stockInPage != null)
            returnList.addAll(stockInPage);

        List<Map<String, Object>> stockOutPage = assetDao.getStockOutPage(params);
        int stockOutCount = assetDao.getStockOutCount(params);
        if (stockOutPage != null)
            returnList.addAll(stockOutPage);

        List<Map<String, Object>> scrapPage = assetDao.getScrapPage(params);
        int scrapCount = assetDao.getScrapCount(params);
        if (scrapPage != null)
            returnList.addAll(scrapPage);

        queryNameByCode(returnList);

        tableData.setData(returnList);
        tableData.setTotal(stockInCount + stockOutCount + scrapCount);
        return tableData;
    }

    @Override
    public Map<String, Object> queryInvSeaList(String F_Id) {
        return assetDao.queryInvSeaList(F_Id);
    }

    @Override
    public List<Map<String, Object>> queryListModalList(String F_Type) {
        List<Map<String, Object>> list = assetDao.queryListModalList(F_Type);
        queryNameByIds(list);
        return list;
    }

    @Override
    public List<Map<String, Object>> queryModalList(String F_Ids) {
        List<Map<String, Object>> list = assetDao.queryModalList(F_Ids);
        queryNameByCode(list);
        return list;
    }

    @Override
    public int toRemove(String F_Ids) {
        return assetDao.toRemove(F_Ids);
    }

    /**
     * 
     * @Method: queryNameByCode
     * @Description: 鏍规嵁code鏌ヨ鍚嶇О
     * @param list
     *            void (杩斿洖绫诲瀷鎻忚堪)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017骞�5鏈�18鏃� 涓嬪崍3:43:11
     */
    private void queryNameByCode(List<Map<String, Object>> list) {
        for (Map<String, Object> listMap : list) {
            Map<String, Object> F_ClassL1Id = assetDao.queryNameByCode(listMap.get("F_ClassL1Id").toString());
            listMap.put("F_ClassL1Id", F_ClassL1Id.get("F_Name"));
            Map<String, Object> F_ClassL2Id = assetDao.queryNameByCode(listMap.get("F_ClassL2Id").toString());
            listMap.put("F_ClassL2Id", F_ClassL2Id.get("F_Name"));
            Map<String, Object> F_KindId = assetDao.queryNameByCode(listMap.get("F_KindId").toString());
            listMap.put("F_KindId", F_KindId.get("F_Name"));
            Map<String, Object> F_SizeId = assetDao.queryNameByCode(listMap.get("F_SizeId").toString());
            listMap.put("F_SizeId", F_SizeId.get("F_Name"));
        }
    }

    /**
     * 
     * @Method: queryNameByIds
     * @Description: 鏍规嵁code鏌ヨIds
     * @param list
     *            void (杩斿洖绫诲瀷鎻忚堪)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017骞�5鏈�18鏃� 涓嬪崍5:24:06
     */
    private void queryNameByIds(List<Map<String, Object>> list) {
        for (Map<String, Object> listMap : list) {
            List<Map<String, Object>> F_Ids_List = assetDao.queryNameByIds(listMap.get("F_SizeId").toString());
            StringBuffer F_Ids = new StringBuffer();
            for (int i = 0; i < F_Ids_List.size(); i++) {
                if (i == 0) {
                    F_Ids.append(F_Ids_List.get(0).get("F_Id"));
                } else {
                    F_Ids.append(",").append(F_Ids_List.get(i).get("F_Id"));
                }
            }
            listMap.put("F_Ids", F_Ids);
        }

        queryNameByCode(list);
    }

    @Override
    public Map<String, Object> queryProperty(String F_Ids) {
        List<Map<String, Object>> list = assetDao.queryModalList(F_Ids);
        queryNameByCode(list);
        return list.get(0);
    }

    @Override
    public void uploadfile(MultipartFile[] file, String F_Ids, String opt, String path) {
        StringBuffer fileName = new StringBuffer();
        for (int i = 0; i < file.length; i++) {
            saveFile(file[i], path);
            fileName.append(file[i].getOriginalFilename());
            if (i != file.length - 1) {
                fileName.append(";");
            }
        }
        assetDao.uploadfile(fileName.toString(), F_Ids, opt);
    }

    /**
     * 
     * @Method: saveFile
     * @Description: 上传图片
     * @param file
     * @param path
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 上午10:18:16
     */
    private static String saveFile(MultipartFile file, String path) {
        String fileName = null;
        // 判断文件是否存在或没有上传图片
        if (file != null && StringUtils.isNotBlank(file.getOriginalFilename())) {
            try {
                // 获得文件名称
                fileName = file.getOriginalFilename();
                File saveFile = new File(path, fileName);
                if (!saveFile.exists()) {
                    // 保存文件
                    file.transferTo(saveFile);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return fileName;
    }

    @Override
    public int saveOpertionForm(String[] F_Ids, String opt, String F_ListNum, String F_AddDate, String F_Operator, String F_Approver,
            String F_Accepter, String F_Keeper) {
        String F_IdStr = StringUtils.join(F_Ids, ",");
        String F_State = "";
        // 删除Asset_OpBox相关数据
        assetDao.toRemove(F_IdStr);

        // 设置Asset_Attribute相关数据状态值
        if (opt.equals("Asset_StockIn")) {
            F_State = "2";
        } else if (opt.equals("Asset_StockOut")) {
            F_State = "3";
        } else if (opt.equals("Asset_Changes")) {
            F_State = "4";
        } else {
            F_State = "5";
        }
        assetDao.updateAssetByState(F_IdStr, F_State);

        return assetDao.saveOpertionForm(F_Ids, opt, F_ListNum, F_AddDate, F_Operator, F_Approver, F_Accepter, F_Keeper);
    }

    @Override
    public void Edit(String pk, String value, String F_Ids, String opt) {
        assetDao.Edit(pk, value, F_Ids, opt);
    }

    @Autowired
    private AssetDao assetDao;

}