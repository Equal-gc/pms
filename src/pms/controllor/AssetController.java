package pms.controllor;

//import javax.inject.Inject;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pms.common.response.ResponseBean;
import pms.service.AssetService;

@Controller
@RequestMapping("/pms/asset")
public class AssetController  {

    /**
     * 
     * @Method: openFixedManage
     * @Description: �򿪹̶��ʲ�ҳ��
     * @return String (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:50:39
     */
    @RequestMapping("/openFixedManage")
    public String openFixedManage() {
        return "/asset/fixed_manage";
    }

    /**
     * 
     * @Method: openNonManage
     * @Description: �򿪷ǹ̶��ʲ�ҳ��
     * @return String (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:50:57
     */
    @RequestMapping("/openNonManage")
    public String openNonManage() {
        return "/asset/non_manage";
    }

    /**
     * 
     * @Method: openSearch
     * @Description: �򿪿���ѯҳ��
     * @return String (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:50:57
     */
    @RequestMapping("/openSearch")
    public String openSearch() {
        return "/asset/search";
    }

    /**
     * 
     * @Method: queryForList
     * @Description: ��ѯ�б�
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:11
     */
    @RequestMapping("/queryForList.json")
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> queryForList() {
        return null;
    }

    /**
     * 
     * @Method: insert
     * @Description: ���
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:22
     */
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> insert() {
        return null;
    }

    /**
     * 
     * @Method: update
     * @Description: �޸�
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:32
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> update() {
        return null;
    }

    /**
     * 
     * @Method: delete
     * @Description: ɾ��
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:40
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> delete() {
        return null;
    }

    /**
     * 
     * @Method: queryById
     * @Description: ����ID��ȡʵ��
     * @return Map<String,Object> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:51:49
     */
    @RequestMapping(value = "/queryById", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> queryById() {
        return null;
    }

    /**
     * 
     * @Method: updateState
     * @Description: �޸Ŀ����ת״̬
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:52:45
     */
    @RequestMapping(value = "/updateState", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> updateState() {
        return null;
    }

    /**
     * 
     * @Method: findListByState
     * @Description: ������ת״̬��ѯ����б�
     * @return ResponseBean<List<Map<String,Object>>> (������������)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017��5��8�� ����2:53:24
     */
    @RequestMapping(value = "/findListByState", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> findListByState() {
        return null;
    }

    @Autowired
    private AssetService assetService;
}