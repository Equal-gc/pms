package pms.controllor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pms.service.PingshizuoyeService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/pms/pingshizuoye/")
public class PingshizuoyeController {
    @Autowired
    private PingshizuoyeService pingshizuoyeService;

    /**
     * 用户上传文档
     *
     * @return
     */
    @RequestMapping("/seach")
    @ResponseBody
    public List<Map<String, Object>> PingshizuoyeSearch(@RequestParam Map<String, Object> params, HttpServletRequest request) {
        return pingshizuoyeService.PingshizuoyeSearch(params);
    }
}