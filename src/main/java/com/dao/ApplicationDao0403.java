package com.dao;

import com.po.Application0403;
import com.po.User;
import com.tools.sqlSessionFactory;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ApplicationDao0403 implements ApplicationDaol0403{
    SqlSessionFactory factory = sqlSessionFactory.getSqlSessionFactory();
    SqlSession session;
    @Override
    public boolean deleteByUID(User user) {
        session = factory.openSession();
        return session.delete("deleteByUID",user)>0;

    }

    @Override
    public List<Application0403> selectApplicationByTime() {
        session = factory.openSession();
        return session.selectList("selectApplicationByTime");
    }
}
