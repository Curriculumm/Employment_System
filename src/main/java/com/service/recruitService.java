package com.service;

import com.dao.applicationDao.ApplicationDao0403;
import com.dao.applicationDao.ApplicationDaol0403;
import com.dao.recruitDao.RecruitDao0430;
import com.po.Application0403;
import com.po.Job0432;
import com.po.Recruit0430;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("recruitService")
public class recruitService {
    @Resource(name = "RecruitDao0430")
    RecruitDao0430 recruitDao0430;
    @Resource(name = "ApplicationDao")
    ApplicationDao0403 applicationDao0403;
//    根据职业ID分类 返回分类后的结果
    public List<Recruit0430> assort(Job0432 job0432){
        return null;
    }
//    搜索 (暂时不用)
    public List<Recruit0430> search(String keyword){
        return null;
    }
//    发布 （根据Recruit 增加一条Recruit信息）
    public boolean insertRecruit(Recruit0430 recruit0430){
        return false;
    }

}