package pms.controllor;

//import javax.inject.Inject;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pms.common.response.ResponseBean;
import pms.common.response.ResponseCode;
import pms.common.response.ResponseMessage;
import pms.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("/pms/index")
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping("/loginSubmit")
    @ResponseBody
    public ResponseBean<String> loginSubmit(@RequestParam Map<String, Object> params,HttpServletRequest request)
    {
        ResponseBean<String> datareturn= new ResponseBean<>();
        try {
            int num = userService.login(params);
            if (num == 1)
            {
                datareturn.setAllData(ResponseCode.SUCCESS, ResponseMessage.LOGIN_SUCCESS,params.get("username").toString());
                request.getSession().setAttribute("username",params.get("username"));//将用户登陆成功后的用户名设置为session
            }
            else
            {
                datareturn.setAllData(ResponseCode.FAIL, ResponseMessage.LOGIN_FAIL,"用户名或密码错误！");
            }
        } catch (Exception e)
        {
            datareturn.setAllData(ResponseCode.FAIL, ResponseMessage.LOGIN_FAIL,"服务器异常！");
        }
        //String user=request.getSession().getAttribute("username").toString();//从session获取处于登陆状态的用户名
        return datareturn;
    }
    //获取用户个人信息
    @RequestMapping("/getPersonInfo")
    @ResponseBody
    public ResponseBean<Map<String,Object>> getPersonInfo(@RequestParam Map<String, Object> username,HttpServletRequest request)
    {
        //System.out.println("获取个人信息");
       return userService.getPersonInfo(username);
    }
    //获取用户上传的所有文件
    @RequestMapping("/getUpFile")
    @ResponseBody
    public ResponseBean<List<Map<String,Object>>> getUpFile(HttpServletRequest request)
    {
        String username=request.getSession().getAttribute("username").toString();
        Map param=new HashMap();
        param.put("username",username);
        return userService.getUpFile(param);
    }
    //获取用户下载的所有文件
    @RequestMapping("/getDownFile")
    @ResponseBody
    public ResponseBean<List<Map<String,Object>>> getDownFile(HttpServletRequest request)
    {
        String username=request.getSession().getAttribute("username").toString();
        Map param=new HashMap();
        param.put("username",username);
        return userService.getDownFile(param);
    }
    //检查用户名是否已被注册
    @RequestMapping("/isExitUser")
    @ResponseBody
    public ResponseBean<String> isExitUser(@RequestParam Map<String,Object> param,HttpServletRequest request)
    {
        ResponseBean<String> datareturn= new ResponseBean<>();
            int num = userService.isExitUser(param);
            if (num==0)
            {
                datareturn.setAllData(ResponseCode.SUCCESS, ResponseMessage.OPER_SUCCESS,ResponseMessage.REGISTER_SUCCESS);
            }
            else
            {
                datareturn.setAllData(ResponseCode.FAIL, ResponseMessage.OPER_FAIL,ResponseMessage.REGISTER_EXIST);
            }
        return datareturn;
    }
    //注册用户
    @RequestMapping("/register")
    @ResponseBody
    public ResponseBean<String> register(@RequestParam Map<String,Object> param,HttpServletRequest request)
    {
        ResponseBean<String> datareturn= new ResponseBean<>();
        int num = userService.register(param);
        if (num==1)
        {
            datareturn.setAllData(ResponseCode.SUCCESS, ResponseMessage.REGISTER_SUCCESS,param.get("user_name").toString());
        }
        else
        {
            datareturn.setAllData(ResponseCode.FAIL, ResponseMessage.REGISTER_FAIL,ResponseMessage.REGISTER_FAIL);
        }
        return datareturn;
    }

    //根据当前时间获取入学时间--年份信息
    @RequestMapping("/getEntranceTime")
    @ResponseBody
    public List<Map<String, Object>> getEntranceTime(HttpServletRequest request)
    {
        Calendar cal = Calendar.getInstance();
        int day = cal.get(Calendar.DATE);
        int month = cal.get(Calendar.MONTH) + 1;
        int year = cal.get(Calendar.YEAR);
        int dow = cal.get(Calendar.DAY_OF_WEEK);
        int dom = cal.get(Calendar.DAY_OF_MONTH);
        int doy = cal.get(Calendar.DAY_OF_YEAR);

        System.out.println("当期时间: " + cal.getTime());
        System.out.println("日期: " + day);
        System.out.println("月份: " + month);
        System.out.println("年份: " + year);
        System.out.println("一周的第几天: " + dow);  // 星期日为一周的第一天输出为 1，星期一输出为 2，以此类推
        System.out.println("一月中的第几天: " + dom);
        System.out.println("一年的第几天: " + doy);


        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        int tempyear=year;
        int temps=4;
        if(month>7)
        {
            tempyear++;
            temps++;
        }
        for(int i=0;i<temps;i++)
        {
            Map<String, Object> param = new HashedMap();
            param.put("entrancetimeid",(tempyear-i));
            param.put("entrancetime",(tempyear-i));
            list.add(param);
        }
        return list;
    }


    //计算获取第几学期，年级信息
    @RequestMapping("/getMoreInfo")
    @ResponseBody
    public ResponseBean<Map<String,Object>>  getMoreInfo(@RequestParam Map<String,Object> param,HttpServletRequest request)
    {
        ResponseBean<Map<String,Object>> datareturn= new ResponseBean<Map<String,Object>>();
        Map<String, Object> map = new HashedMap();

        for (String key:param.keySet())
        {
            System.out.println("key= "+key+" and value= "+param.get(key));
            int tempyear=Integer.parseInt((String) param.get(key));
            Calendar cal = Calendar.getInstance();
            int month = cal.get(Calendar.MONTH) + 1;
            int year = cal.get(Calendar.YEAR);

            int allmonth=(year-tempyear)*12-9+month;
            int term=allmonth/6+1;
            int grade=allmonth/12+1;

            String curgrade="";
            switch (grade) {
                case 1:
                    curgrade="大一";
                    break;
                case 2:
                    curgrade="大二";
                    break;
                case 3:
                    curgrade="大三";
                    break;
                case 4:
                    curgrade="大四";
                    break;
                default:
                    curgrade="当前所在年级";
                    break;
            }
            String curterm="";
            switch (term) {
                case 1:
                    curterm="第一学期";
                    break;
                case 2:
                    curterm="第二学期";
                    break;
                case 3:
                    curterm="第三学期";
                    break;
                case 4:
                    curterm="第四学期";
                    break;
                case 5:
                    curterm="第五学期";
                    break;
                case 6:
                    curterm="第六学期";
                    break;
                case 7:
                    curterm="第七学期";
                    break;
                case 8:
                    curterm="第八学期";
                    break;
                default:
                    curterm="当前所在学期";
                    break;
            }
            map.put("curgrade",curgrade );
            map.put("curterm", curterm);
        }
        datareturn.setData(map);
        return datareturn;

    }

}