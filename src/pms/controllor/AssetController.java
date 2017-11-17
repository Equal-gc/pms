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
     * @Description: 打开固定资产页面
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:50:39
     */
    @RequestMapping("/openFixedManage")
    public String openFixedManage() {
        return "/asset/fixed_manage";
    }

    /**
     * 
     * @Method: openNonManage
     * @Description: 打开非固定资产页面
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:50:57
     */
    @RequestMapping("/openNonManage")
    public String openNonManage() {
        return "/asset/non_manage";
    }

    /**
     * 
     * @Method: openSearch
     * @Description: 打开库存查询页面
     * @return String (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:50:57
     */
    @RequestMapping("/openSearch")
    public String openSearch() {
        return "/asset/search";
    }

    /**
     * 
     * @Method: queryForList
     * @Description: 查询列表
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:11
     */
    @RequestMapping("/queryForList.json")
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> queryForList() {
        return null;
    }

    /**
     * 
     * @Method: insert
     * @Description: 添加
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:22
     */
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> insert() {
        return null;
    }

    /**
     * 
     * @Method: update
     * @Description: 修改
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:32
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> update() {
        return null;
    }

    /**
     * 
     * @Method: delete
     * @Description: 删除
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:40
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> delete() {
        return null;
    }

    /**
     * 
     * @Method: queryById
     * @Description: 根据ID获取实体
     * @return Map<String,Object> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:51:49
     */
    @RequestMapping(value = "/queryById", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> queryById() {
        return null;
    }

    /**
     * 
     * @Method: updateState
     * @Description: 修改库存流转状态
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:52:45
     */
    @RequestMapping(value = "/updateState", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> updateState() {
        return null;
    }

    /**
     * 
     * @Method: findListByState
     * @Description: 根据流转状态查询库存列表
     * @return ResponseBean<List<Map<String,Object>>> (返回类型描述)
     * @throws
     * @author : renyangyang
     * @CreateDate : 2017年5月8日 下午2:53:24
     */
    @RequestMapping(value = "/findListByState", method = RequestMethod.POST)
    @ResponseBody
    public ResponseBean<List<Map<String, Object>>> findListByState() {
        return null;
    }

    @Autowired
    private AssetService assetService;
}