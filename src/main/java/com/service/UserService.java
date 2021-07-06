package com.service;

import com.dao.personalInformation.PersonalInformationDaol0308;
import com.dao.userDao.UserDao;
import com.po.PersonalInformation0308;
import com.po.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.rmi.server.UID;

@Service("UserService")
public class UserService {
    @Resource(name = "UserDao")
    UserDao userDao;
    @Resource(name = "PersonalInformationDao")
    PersonalInformationDaol0308 personalInformationDaol0308;


    //    登陆 成功返回true 不成功返回false
    public boolean login (String accout,String password){
        User user = userDao.findUserByAccountNumber(accout);
        if ( user.getAccountNumber().equals(accout)&&user.getPassword().equals(password))
            return true;
        else
            return false;

    }
    //    注册 成功返回true 不成功返回false 注册成功的同时增加一条主键为
    //     user的UID的个人信息
    public boolean register(String accout,String password){
        User user=userDao.findUserByAccountNumber(accout);
        if(user.getAccountNumber()==null||user.getPassword()==null||user.getAccountNumber().equals(accout))
            return false;
        else {
            User u = new User();
            u.setAccountNumber(accout);
            u.setPassword(password);
            return userDao.addUser(u);
        }

    }
//    修改Information 成功true 失败false

    public boolean updateUser(PersonalInformation0308 personalInformation0308) {
        return personalInformationDaol0308.updateInformationBYUID(personalInformation0308);
    }
}
