package pms.controllor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pms.service.ManageService;
import pms.service.SearchService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/pms/manage/")
public class ManageController {
    @Autowired
    private ManageService ManageService;
    /**
     * 获取所有学校
     * @return
     */
    @RequestMapping("/userlist")
    @ResponseBody
    public List<Map<String, Object>> userlist() {
        //System.out.println("yyyy");
        return ManageService.userlist();
    }
    /**
     * 根据学校获取学院
     * @return
     */
//    @RequestMapping("/department")
//    @ResponseBody
//    public List<Map<String, Object>> findAllDepartment(@RequestParam Map<String, Object> params,HttpServletRequest request) {
//        return searchService.findAllDepartment(params);
//    }
//    /**
//     * 根据学院获取专业
//     * @return
//     */
//    @RequestMapping("/major")
//    @ResponseBody
//    public List<Map<String, Object>> findAllMajor(@RequestParam Map<String, Object> params,HttpServletRequest request) {
//        return searchService.findAllMajor(params);
//    }
//    /**
//     * 根据专业获取科目
//     * @return
//     */
//    @RequestMapping("/subject")
//    @ResponseBody
//    public List<Map<String, Object>> findAllSubject(@RequestParam Map<String, Object> params,HttpServletRequest request) {
//        return searchService.findAllSubject(params);
//    }
}
