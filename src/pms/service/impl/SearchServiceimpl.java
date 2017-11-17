package pms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.common.response.ResponseBean;
import pms.dao.SearchDao;
import pms.service.SearchService;

import java.util.List;
import java.util.Map;

@Transactional(rollbackFor = Exception.class)
@Service
public class SearchServiceimpl extends BaseServiceImpl implements SearchService {
    @Autowired
    private SearchDao searchDao;
    @Override
    public List<Map<String, Object>> findAllSchool() {
        // TODO Auto-generated method stub
        List<Map<String, Object>> list=searchDao.findAllSchool();
        return list;
    }
    @Override
    public List<Map<String, Object>> findAllDepartment(Map<String, Object> args){
        // TODO Auto-generated method stub
        List<Map<String, Object>> list=searchDao.findAllDepartment(args);
        return list;
    }
    @Override
    public List<Map<String, Object>> findAllMajor(Map<String, Object> args){
        // TODO Auto-generated method stub
        List<Map<String, Object>> list=searchDao.findAllMajor(args);
        return list;
    }
    @Override
    public List<Map<String, Object>> findAllSubject(Map<String, Object> args){
        // TODO Auto-generated method stub
        List<Map<String, Object>> list=searchDao.findAllSubject(args);
        return list;
    }
}
