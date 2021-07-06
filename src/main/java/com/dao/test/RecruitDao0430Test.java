package com.dao.test;


import com.dao.recruitDao.RecruitDao0430;
import com.po.Recruit0430;

import java.util.Locale;

class RecruitDao0430Test {
    public static void main(String[] args) {
        RecruitDao0430 recruitDao0430 = new RecruitDao0430();
        Recruit0430 recruit = new Recruit0430("2000-11-16 20:18:06", Locale.ENGLISH);
        recruit.setCity("深圳");
        recruit.setRequirement("20k");
        recruit.setEID(2);
        recruit.setUID(2);
        recruit.setSalary("20k-30k");
        recruit.setCompanyname("思维造物");
        recruit.setCompanyInformation("“六险一金，年度体检，氛围好，弹性工作”");

//        System.out.println(recruitDao0430.findALLRecruit());
//        System.out.println(recruitDao0430.findRecruitBycity(recruit));
//        System.out.println(recruitDao0430.findRecruitByEID(recruit));
//        System.out.println(recruitDao0430.findRecruitByrequirement(recruit));
//        System.out.println(recruitDao0430.delete(recruit));
//        System.out.println(recruitDao0430.findRecruitBytime());
        System.out.println(recruitDao0430.add(recruit));
    }
}