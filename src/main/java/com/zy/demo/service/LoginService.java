package com.zy.demo.service;


import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.User;

import java.util.List;

public interface LoginService {
    //用户登录
    User indexUser(String loginId, String password);

    //获取用户权限
    List<Power> getPowerById(Integer id);

    //总用户
    Integer countUserAll();

    //临时用户
    Integer countLinShiUserAll();

    //每日新增用户数量
    Integer countXinZengUserAll();

    //查看所有未读取通知
    List<Notice> NoticeWeiDuQuAll();

    //查看所有通知
    List<Notice> NoticeAll();

    //通知管理读取
    int DuQuNotice(Notice notice);
}
