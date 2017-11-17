package dwz.web;

//import javax.inject.Inject;
import dwz.persistence.beans.SysUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController2 extends BaseController{

	
	@RequestMapping("")
	@ResponseBody
	public SysUser index() {
		SysUser sysUser=new SysUser();
		sysUser.setId(012);
		return sysUser;
		//return "/index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/login";
	}
}