package pms.controllor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.portlet.ModelAndView;
import pms.common.response.ResponseBean;
import pms.common.response.ResponseCode;
import pms.common.response.ResponseMessage;
import pms.service.DocumentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@Controller
@RequestMapping("/pms/document/")
public class DocumentController {
    @Autowired
    private DocumentService documentService;
    /**
     * 用户上传文档
     * @return
     */
    @RequestMapping("/upload")
    @ResponseBody
    public String upload(@RequestParam(value="udoc_name",required=false) MultipartFile f, HttpServletRequest request, HttpServletResponse response)
    {
        response.setContentType("application/json;charset=UTF-8");//防止数据传递乱码
        Map<String,Object> param=new HashMap<String,Object>();
        String udoc_school=request.getParameter("udoc_school");
        String udoc_department=request.getParameter("udoc_department");
        String udoc_major=request.getParameter("udoc_major");
        String udoc_subject=request.getParameter("udoc_subject");
        String udoc_grade=request.getParameter("udoc_grade");
        String udoc_type=request.getParameter("udoc_type");
        String udoc_points=request.getParameter("udoc_points");
        //String udoc_name=request.getParameter("udoc_name");
        String udoc_name=f.getOriginalFilename();
        param.put("udoc_school",udoc_school);
        param.put("udoc_department",udoc_department);
        param.put("udoc_major",udoc_major);
        param.put("udoc_subject",udoc_subject);
        param.put("udoc_grade",udoc_grade);
        param.put("udoc_type",udoc_type);
        param.put("udoc_points",udoc_points);
        param.put("udoc_name",udoc_name);
        ResponseBean<String> datareturn= new ResponseBean<>();
        //得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
        String savePath =request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
        File file = new File(savePath);
        //判断上传文件的保存目录是否存在
        if (!file.exists() && !file.isDirectory()) {
            System.out.println(savePath+"目录不存在，需要创建");
            //创建目录
            file.mkdirs();
        }
        File targetFile = new File(savePath, udoc_name);
        String message="";
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        //保存
        try {
            f.transferTo(targetFile);
            message="Successful！";
        } catch (Exception e) {
            e.printStackTrace();
            message="Fail！";
        }
        int num = documentService.upload(param,savePath);
        return  message;
    }
    /**
     * 用户上传考研专业课
     * @return
     */
    @RequestMapping("/uploadmajor")
    @ResponseBody
    public String uploadMajor(@RequestParam(value="maj_name",required=false) MultipartFile f, HttpServletRequest request, HttpServletResponse response)
    {
        response.setContentType("application/json;charset=UTF-8");//防止数据传递乱码
        Map<String,Object> param=new HashMap<String,Object>();
        String maj_school=request.getParameter("maj_school");
        String maj_department=request.getParameter("maj_department");
        String maj_major=request.getParameter("maj_major");
        String maj_points=request.getParameter("maj_points");
        String maj_name=f.getOriginalFilename();
        param.put("maj_school",maj_school);
        param.put("maj_department",maj_department);
        param.put("maj_major",maj_major);
        param.put("maj_points",maj_points);
        param.put("maj_name",maj_name);
        ResponseBean<String> datareturn= new ResponseBean<>();
        //得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
        String savePath =request.getSession().getServletContext().getRealPath("/WEB-INF/major");
        File file = new File(savePath);
        //判断上传文件的保存目录是否存在
        if (!file.exists() && !file.isDirectory()) {
            System.out.println(savePath+"目录不存在，需要创建");
            //创建目录
            file.mkdirs();
        }
        File targetFile = new File(savePath, maj_name);
        String message="";
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        //保存
        try {
            f.transferTo(targetFile);
            message="Successful！";
        } catch (Exception e) {
            e.printStackTrace();
            message="Fail！";
        }
        int num = documentService.uploadMajor(param,savePath);
        return  message;
    }
}
