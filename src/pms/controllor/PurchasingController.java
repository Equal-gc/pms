package pms.controllor;

//import javax.inject.Inject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pms.common.response.ResponseBean;
import pms.common.response.ResponseCode;
import pms.common.response.ResponseMessage;
import pms.model.TableData;
import pms.service.AssetService;
import pms.service.RegisterService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/pms/purchasing")
public class PurchasingController {

	@Autowired
	private AssetService assetService;
	@Autowired
	private RegisterService registerService;

	@RequestMapping("/register")
	public String register() {
		/*ResponseBean<List<Map<String, Object>>> response = new ResponseBean<>();
		Map<String, Object> args=new HashMap<>();
		args.put("F_Account","1");
		List<Map<String, Object>> re=userService.queryForList(args);
		response.setAllData(ResponseCode.SUCCESS, ResponseMessage.QUERY_SUCCESS, re);*/
		return "purchasing/register";
		//return "/index";
	}
	@RequestMapping("/list")
	public String list(Model model) {
		/*ResponseBean<List<Map<String, Object>>> response = new ResponseBean<>();
		Map<String, Object> args=new HashMap<>();
		args.put("F_Account","1");
		List<Map<String, Object>> re=userService.queryForList(args);
		response.setAllData(ResponseCode.SUCCESS, ResponseMessage.QUERY_SUCCESS, re);*/
		model.addAttribute("Operators", registerService.getOperator());
		model.addAttribute("Accepters", registerService.getAccepter());
		model.addAttribute("Approvers", registerService.getApprover());
		model.addAttribute("Keepers", registerService.getKeeper());
		return "purchasing/list";
		//return "/index";
	}

	@RequestMapping("/getRegisters.json")
	@ResponseBody
	public TableData getRegisters(@RequestParam Map<String,Object> params) {

		return registerService.getPage(params);
	}
	@RequestMapping("/addRegisters.json")
	@ResponseBody
	public ResponseBean<String> addRegisters(@RequestParam Map<String,Object> params) {

		ResponseBean<String> responseBean=new ResponseBean<>();
		try {
			registerService.insert("Asset_Register", params);
			responseBean.setAllData(ResponseCode.SUCCESS,ResponseMessage.ADD_SUCCESS,null);
			return  responseBean;
		}catch (Exception ex){
			responseBean.setAllData(ResponseCode.FAIL,ResponseMessage.ADD_FAIL,null);
			return  responseBean;
		}
	}

	@RequestMapping("/test")
	public String test() {
		/*ResponseBean<List<Map<String, Object>>> response = new ResponseBean<>();
		Map<String, Object> args=new HashMap<>();
		args.put("F_Account","1");
		List<Map<String, Object>> re=userService.queryForList(args);
		response.setAllData(ResponseCode.SUCCESS, ResponseMessage.QUERY_SUCCESS, re);*/
		return "/purchasing/test";
		//return "/index";
	}
}