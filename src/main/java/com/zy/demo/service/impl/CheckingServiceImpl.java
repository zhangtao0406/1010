package com.zy.demo.service.impl;

import com.zy.demo.mapper.CheckingMapper;
import com.zy.demo.pojo.Checking;
import com.zy.demo.pojo.CheckingStatistics;
import com.zy.demo.pojo.Notice;
import com.zy.demo.service.CheckingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CheckingServiceImpl implements CheckingService {

    //依赖注入
    @Resource
    private CheckingMapper checkingMapper;

    //考勤数据导入模糊查询
    @Override
    public List<Checking> findCheckingAll(Checking checking) {
        return checkingMapper.findCheckingAll (checking);
    }

    //考勤
    @Override
    public int addChecking(Checking checking) {
        return checkingMapper.addChecking (checking);
    }

    //考勤统计数据
    @Override
    public int addCheckingStatistics(CheckingStatistics checkingStatistics) {
        return checkingMapper.addCheckingStatistics (checkingStatistics);
    }

    //考勤数据导入详情
    @Override
    public Checking CheckingById(Integer id) {
        return checkingMapper.CheckingById (id);
    }

    //考勤数据导入待统计
    @Override
    public List<Checking> findCheckingTongJiAll(Checking checking) {
        return checkingMapper.findCheckingTongJiAll (checking);
    }

    //根据考勤统计查询考勤数据
    @Override
    public List<CheckingStatistics> checkingStatisticsMessageAllById(Integer id) {
        return checkingMapper.checkingStatisticsMessageAllById (id);
    }

    //考勤统计管理,统计
    @Override
    public int updateTongJiChecking(Checking checking) {
        return checkingMapper.updateTongJiChecking (checking);
    }

    //修改完为已统计
    @Override
    public int checkingYiTongJi(Integer id) {
        return checkingMapper.checkingYiTongJi (id);
    }

    //考勤统计管理撤回
    @Override
    public int checkingCheHui(int id) {
        return checkingMapper.checkingCheHui (id);
    }

    //考勤数据考勤审批
    @Override
    public List<Checking> findCheckingShenPiAll(Checking checking) {
        return checkingMapper.findCheckingShenPiAll (checking);
    }

    //修改完为已统计
    @Override
    public int checkingWanChen(Integer id) {
        return checkingMapper.checkingWanChen (id);
    }

    //通知表添加信息
    @Override
    public int addCheckingNotice(Notice notice) {
        return checkingMapper.addCheckingNotice (notice);
    }
    //修改完为已驳回
    @Override
    public int checkingBoHui(Integer id) {
        return checkingMapper.checkingBoHui(id);
    }


}
