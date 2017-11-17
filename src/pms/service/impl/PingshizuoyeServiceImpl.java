package pms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.dao.PingshizuoyeDao;
import pms.service.PingshizuoyeService;

import java.util.List;
import java.util.Map;

@Transactional(rollbackFor = Exception.class)
@Service
public class PingshizuoyeServiceImpl extends BaseServiceImpl implements PingshizuoyeService {
    @Autowired
    private PingshizuoyeDao pingshizuoyeDao;
    @Override
    public List<Map<String, Object>> PingshizuoyeSearch(Map<String, Object> args){
        // TODO Auto-generated method stub
        List<Map<String, Object>> list=pingshizuoyeDao.PingshizuoyeSearch(args);
        return list;
    }
}
