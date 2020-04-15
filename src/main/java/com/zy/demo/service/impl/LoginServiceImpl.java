package com.zy.demo.service.impl;

import com.zy.demo.mapper.LoginMapper;
import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.User;
import com.zy.demo.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    //依赖注入
    @Resource
    private LoginMapper loginMapper;

    //用户登录
    @Override
    public User indexUser(String loginId, String password) {
        return loginMapper.indexUser (loginId, password);
    }

    //获取用户权限
    @Override
    public List<Power> getPowerById(Integer id) {
        List<Power> powers = loginMapper.getPowerById (id);
        return powers;
    }

    //总用户
    @Override
    public Integer countUserAll() {
        return loginMapper.countUserAll ();
    }

    //临时用户
    @Override
    public Integer countLinShiUserAll() {
        return loginMapper.countLinShiUserAll ();
    }

    //每日新增用户数量
    @Override
    public Integer countXinZengUserAll() {
        return loginMapper.countXinZengUserAll ();
    }

    //查看所有未读取通知
    @Override
    public List<Notice> NoticeWeiDuQuAll() {
        return loginMapper.NoticeWeiDuQuAll ();
    }

    //查看所有通知
    @Override
    public List<Notice> NoticeAll() {
        return loginMapper.NoticeAll();
    }

    //通知管理读取
    @Override
    public int DuQuNotice(Notice notice) {
        return loginMapper.DuQuNotice(notice);
    }


}
