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
     * @Description: �򿪿�����ҳ��
     * @return String (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:50:39
     */
    @RequestMapping("/openManage")
    public String openAssetManage() {
        return "/inventory/manage";
    }

    /**
     * 
     * @Method: openAssetSerch
     * @Description: �򿪿���ѯҳ��
     * @return String (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:50:57
     */
    @RequestMapping("/openSearch")
    public String openAssetSerch() {
        return "/inventory/search";
    }

    /**
     * 
     * @Method: queryAlreadyList
     * @Description: ��ѯ����⡢�ڿ�������б�
     * @param params
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��15�� ����11:32:54
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
     * @Description: ��ѯ�б�
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:11
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
     * @Description: ��ѯ�ʲ���ϸ��Ϣ
     * @param request
     * @return Map<String,Object> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��12�� ����3:47:46
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
     * @Description: ����״̬��ѯ�����б�
     * @param request
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��17�� ����10:37:04
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
     * @Description: ���
     * @param request
     * @return List<Map<String,Object>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����3:34:03
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
     * @Description: �鿴ѡ�������ʲ��б�
     * @param request
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����3:34:12
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
     * @Description: �޳��嵥
     * @param request
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��18�� ����3:34:12
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
     * @Description: �鿴����
     * @param request
     * @return int (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��19�� ����10:37:39
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
     * @Description: �ϴ�ͼƬ
     * @param request
     * @param file
     * @param F_Ids
     * @param opt
     * @throws Exception
     *             void (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��22�� ����5:12:54
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
     * @CreateDate : 2017��5��22�� ����5:12:46
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
    @RequestMapping("/Edit")
    @ResponseBody
    public void Edit(String pk, String value, String F_Ids, String opt) {
        assetService.Edit(pk, value, F_Ids, opt);
    }

    @Autowired
    private AssetService assetService;
}