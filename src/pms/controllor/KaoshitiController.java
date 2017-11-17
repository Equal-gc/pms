package pms.controllor;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pms.common.response.ResponseBean;
import pms.service.KaoshitiService;
import pms.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/pms/kaoshiti")
public class KaoshitiController {

    @Autowired
    private KaoshitiService kaoshitiService;
    @Autowired
    private UserService userService;

    @RequestMapping("/searchKaoshiti")
    @ResponseBody
    public List<Map<String,Object>> searchKaoshiti(@RequestParam Map<String, Object> params, HttpServletRequest request)
    {
        return  kaoshitiService.searchKaoshiti(params);
    }

    @RequestMapping("/getPersonInfo")
    @ResponseBody
    public  ResponseBean<Map<String,Object>>  getPersonInfo(HttpServletRequest request)
    {
        String username=request.getSession().getAttribute("username").toString();
        Map param=new HashMap();
        param.put("username",username);
        return userService.getPersonInfo(param);
    }

    @RequestMapping("/getMySchool")
    @ResponseBody
    public List<Map<String, Object>> getMySchool(@RequestParam Map<String, Object> params, HttpServletRequest request) {

        System.out.println("");;
        return kaoshitiService.getMySchool(params);
    }
}
