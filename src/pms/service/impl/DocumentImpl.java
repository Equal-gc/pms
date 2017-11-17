package pms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pms.dao.DocumentDao;
import pms.service.DocumentService;

import java.util.Map;

@Transactional(rollbackFor = Exception.class)
@Service
public class DocumentImpl extends BaseServiceImpl implements DocumentService {
    @Autowired
    private DocumentDao documentDao;
    //提交注册信息
    @Override
    public int upload(Map<String, Object> args,String savePath)
    {
        return documentDao.upload(args,savePath);
    }
    @Override
    public int uploadMajor(Map<String, Object> args,String savePath)
    {
        return documentDao.uploadMajor(args,savePath);
    }
}
