package pms.dao.impl;

import org.springframework.stereotype.Repository;
import pms.dao.DocumentDao;

import java.util.Map;
@Repository
public class DocumentDaoImpl extends BaseDaoImpl implements DocumentDao {
    //文件上传
    @Override
    public int upload(Map<String, Object> args,String savePath)
    {
        java.util.Date now = new java.util.Date();
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currenttime = formatter.format(now);//获取当前时间 2008-06-16 20:54:53
        args.put("udoc_uptime",currenttime);
        args.put("udoc_url",savePath);
        return this.insert("updocument",args);
    }
    //文件上传
    @Override
    public int uploadMajor(Map<String, Object> args,String savePath)
    {
        java.util.Date now = new java.util.Date();
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currenttime = formatter.format(now);//获取当前时间 2008-06-16 20:54:53
        args.put("pub_uptime",currenttime);
        args.put("pub_url",savePath);
        return this.insert("PubMedPublic",args);
    }
}
