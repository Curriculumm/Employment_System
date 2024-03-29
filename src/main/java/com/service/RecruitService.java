package com.service;

import com.dao.applicationDao.ApplicationDao0403;
import com.dao.applicationDao.ApplicationDaol0403;
import com.dao.jobDao.JobDao0432;
import com.dao.recruitDao.RecruitDao0430;
import com.po.Application0403;
import com.po.Job0432;
import com.po.Recruit0430;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
//阿越

@Service("recruitService")
public class RecruitService {
    @Resource(name = "RecruitDao0430")
    RecruitDao0430 recruitDao0430;
    @Resource(name = "ApplicationDao")
    ApplicationDao0403 applicationDao0403;
    @Resource(name = "JobDao")
    JobDao0432 jobDao0432;
//    查询最近十条信息
    public List<Recruit0430> searchALLRecruit(){
        return recruitDao0430.findALLRecruit();
    }
    //    根据职业名称分类 返回分类后的结果
    public List<Recruit0430> assort(Job0432 job0432){
        return  recruitDao0430.findRecruitByJobName(job0432.getJname());

    }
    //    搜索
    public List<Recruit0430> search(String keyword){
        return recruitDao0430.findRecruitByKeyword(keyword);

    }
    //    发布 （根据Recruit 增加一条Recruit信息）
    public boolean insertRecruit(Recruit0430 recruit0430,String jname){
        Job0432 j = new Job0432();
        j.setJname(jname);
        Job0432 j1 =  jobDao0432.findJobByJName(j);
        recruit0430.setEID(j1.getEID());
        Timestamp t = new Timestamp(new Date().getTime());
        recruit0430.setTime(t);
        return recruitDao0430.add(recruit0430);
    }

    public Recruit0430 selectOneRecruit(Integer pid) {
        Recruit0430 r = new Recruit0430();
        r.setPID(pid);
        Recruit0430 r1 =recruitDao0430.findRecruitByPID(r);
        return r1;
    }
}
