package pms.dao.impl;

import org.springframework.stereotype.Repository;
import pms.dao.UserDao;
import pms.common.response.ResponseBean;

import java.util.List;
import java.util.Map;
/**
 * Created by user on 2017/5/3.
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl implements UserDao {

    @Override
    public List<Map<String, Object>> queryForList( Map<String, Object> args) {
        StringBuffer sql = new StringBuffer();
        sql.append("<script>select * from Sys_User ");
        sql.append("<where> 1=1");
        sql.append("    <if test=\" F_Account != null and F_Account != '' \"> ");
        sql.append("        F_Account = #{F_Account}");
        sql.append("    </if>");
        sql.append("</where></script>");
        return sqlMapper.selectList(sql.toString(),args);
    }

    @Override
    public int login(Map<String, Object> args)
    {
        String pwd=args.get("password").toString();
        pwd= org.apache.commons.codec.digest.DigestUtils.md5Hex(pwd);
        args.put("password",pwd);
        String sql="select count(*) as count from user where user_name = #{username} and user_password = #{password}";
        Map<String, Object> counts=this.selectOneBySql(sql,args);
        return Integer.parseInt(counts.get("count").toString());
    }
    //获取用户个人信息
    @Override
    public ResponseBean<Map<String,Object>> getPersonInfo(Map<String,Object> param)
    {
        String sql="select * from user where user_name =#{username}";
        Map<String, Object> info=this.selectOneBySql(sql,param);
        /*for (String key:info.keySet())
        {
           System.out.println("key= "+key+" and value= "+info.get(key));
        }*/
        ResponseBean<Map<String,Object>> dataresult=new ResponseBean<Map<String,Object>>();
        dataresult.setData(info);
        return dataresult;
    }
    //获取用户上传的文件
    @Override
    public ResponseBean<List<Map<String,Object>>> getUpFile(Map<String,Object> param)
    {
        String sql="select * from updocument where user_name=#{username}";
        List<Map<String,Object>> upfilelist=this.selectListBySql(sql,param);
        ResponseBean<List<Map<String,Object>>> dataresult=new ResponseBean<List<Map<String,Object>>>();
        dataresult.setData(upfilelist);
        return dataresult;
    }
    //获取用户下载的文件
    @Override
    public ResponseBean<List<Map<String,Object>>> getDownFile(Map<String,Object> param)
    {
        String sql="select * from documentrecord where user_name=#{username}";
        List<Map<String,Object>> downfilelist=this.selectListBySql(sql,param);
        ResponseBean<List<Map<String,Object>>> dataresult=new ResponseBean<List<Map<String,Object>>>();
        dataresult.setData(downfilelist);
        return dataresult;
    }
    //判断该用户名是否已被注册
    @Override
    public int isExitUser(Map<String, Object> args)
    {

        String sql="select count(*) as count from user where user_name = #{username}";
        Map<String, Object> counts=this.selectOneBySql(sql,args);
        return Integer.parseInt(counts.get("count").toString());
    }
    //提交注册信息
    @Override
    public int register(Map<String, Object> args)
    {
        java.util.Date now = new java.util.Date();
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currenttime = formatter.format(now);//获取当前时间 2008-06-16 20:54:53
        args.put("user_regist_time",currenttime);
        String pwd=args.get("user_password").toString();
        pwd= org.apache.commons.codec.digest.DigestUtils.md5Hex(pwd);
        args.put("user_password",pwd);
        return this.insert("user",args);
    }
}
