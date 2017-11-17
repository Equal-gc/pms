package pms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.common.response.ResponseBean;
import pms.dao.KaoshitiDao;
import pms.dao.SearchDao;
import pms.service.KaoshitiService;

import java.util.List;
import java.util.Map;

@Transactional(rollbackFor = Exception.class)
@Service
public class KaoshitiServiceImpl extends BaseServiceImpl implements KaoshitiService{

    @Autowired
    private KaoshitiDao kaoshitiDao;

    @Override
    public List<Map<String,Object>>  searchKaoshiti(Map<String, Object> args){

        List<Map<String,Object>>  list=kaoshitiDao.searchKaoshiti(args);
        return list;
    }
    @Override
    public List<Map<String, Object>> getMySchool(Map<String, Object> args) {

        List<Map<String, Object>> list=kaoshitiDao.getMySchool(args);
        return list;
    }

}
