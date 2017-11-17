package pms.controllor;

//import javax.inject.Inject;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pms.model.TableData;
import pms.service.AssetService;

@Controller
@RequestMapping("/pms/inventory")
public class InventoryController {

    /**
     * 
     * @Method: openAssetManage
     * @Description: 打开库存管理页面
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:50:39
     */
    @RequestMapping("/openManage")
    public String openAssetManage() {
        return "/inventory/manage";
    }

    /**
     * 
     * @Method: openAssetSerch
     * @Description: 打开库存查询页面
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:50:57
     */
    @RequestMapping("/openSearch")
    public String openAssetSerch() {
        return "/inventory/search";
    }

    /**
     * 
     * @Method: queryAlreadyList
     * @Description: 查询待入库、在库的树形列表
     * @param params
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月15日 上午11:32:54
     */
    @RequestMapping("/queryAlrOrWaitList.json")
    @ResponseBody
    public List<Map<String, Object>> queryAlrOrWaitList(HttpServletRequest request) {
        String F_State = request.getParameter("F_State");
        return assetService.queryAlrOrWaitList(F_State);
    }

    /**
     * 
     * @Method: queryInvSeaList
     * @Description: 查询列表
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:11
     */
    @RequestMapping("/queryInvSeaList.json")
    @ResponseBody
    public TableData queryInvSeaList(@RequestParam
    Map<String, Object> params) {
        return assetService.getInvSeaPage(params);
    }

    /**
     * 
     * @Method: queryInvSeaList
     * @Description: 查询资产详细信息
     * @param request
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月12日 下午3:47:46
     */
    @RequestMapping("/queryInvDetail.json")
    @ResponseBody
    public Map<String, Object> queryInvSeaList(HttpServletRequest request) {
        String F_Id = request.getParameter("F_Id");
        return assetService.queryInvSeaList(F_Id);
    }

    /**
     * 
     * @Method: queryListModalList
     * @Description: 根据状态查询缓存列表
     * @param request
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月17日 上午10:37:04
     */
    @RequestMapping("/queryListModalList.json")
    @ResponseBody
    public List<Map<String, Object>> queryListModalList(HttpServletRequest request) {
        String F_Type = request.getParameter("F_Type");
        return assetService.queryListModalList(F_Type);
    }

    /**
     * 
     * @Method: toStockIn
     * @Description: 入库
     * @param request
     * @return List<Map<String,Object>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午3:34:03
     */
    @RequestMapping("/toStockIn.json")
    @ResponseBody
    public List<Map<String, Object>> toStockIn(HttpServletRequest request) {
        String F_Type = request.getParameter("F_Type");
        return assetService.queryListModalList(F_Type);
    }

    /**
     * 
     * @Method: toRemove
     * @Description: 查看选中类别的资产列表
     * @param request
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午3:34:12
     */
    @RequestMapping("/queryModalList.json")
    @ResponseBody
    public List<Map<String, Object>> queryModalList(HttpServletRequest request) {
        String F_Ids = request.getParameter("F_Ids");
        return assetService.queryModalList(F_Ids);
    }

    /**
     * 
     * @Method: toRemove
     * @Description: 剔除清单
     * @param request
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月18日 下午3:34:12
     */
    @RequestMapping("/toRemove.json")
    @ResponseBody
    public int toRemove(HttpServletRequest request) {
        String F_Ids = request.getParameter("F_Ids");
        return assetService.toRemove(F_Ids);
    }

    /**
     * 
     * @Method: queryProperty
     * @Description: 查看属性
     * @param request
     * @return int (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月19日 上午10:37:39
     */
    @RequestMapping("/queryProperty.json")
    @ResponseBody
    public Map<String, Object> queryProperty(HttpServletRequest request) {
        String F_Ids = request.getParameter("F_Ids");
        return assetService.queryProperty(F_Ids);
    }

    /**
     * 
     * @Method: uploadfile
     * @Description: 上传图片
     * @param request
     * @param file
     * @param F_Ids
     * @param opt
     * @throws Exception
     *             void (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月22日 下午5:12:54
     */
    @RequestMapping("/uploadfile")
    @ResponseBody
    public void uploadfile(HttpServletRequest request, @RequestParam("files")
    MultipartFile[] file, String F_Ids, String opt) throws Exception {
        String path = request.getServletContext().getRealPath("files");
        assetService.uploadfile(file, F_Ids, opt, path);
    }

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
     * @CreateDate : 2017年5月22日 下午5:12:46
     */
    @RequestMapping("/saveOpertionForm")
    @ResponseBody
    public int saveOpertionForm(String[] F_Ids, String opt, String F_ListNum, String F_AddDate, String F_Operator, String F_Approver,
            String F_Accepter, String F_Keeper) {
        return assetService.saveOpertionForm(F_Ids, opt, F_ListNum, F_AddDate, F_Operator, F_Approver, F_Accepter, F_Keeper);
    }

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
    @RequestMapping("/Edit")
    @ResponseBody
    public void Edit(String pk, String value, String F_Ids, String opt) {
        assetService.Edit(pk, value, F_Ids, opt);
    }

    @Autowired
    private AssetService assetService;
}