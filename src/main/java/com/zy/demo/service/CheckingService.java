package com.zy.demo.service;

import com.zy.demo.pojo.Checking;
import com.zy.demo.pojo.CheckingStatistics;
import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Procurement;

import java.util.List;

public interface CheckingService {
    //考勤数据导入模糊查询
    List<Checking> findCheckingAll(Checking checking);
    //考勤
    int addChecking(Checking checking);
    //考勤统计数据
    int addCheckingStatistics(CheckingStatistics checkingStatistics);
    //考勤数据导入详情
    Checking CheckingById(Integer id);
    //考勤数据导入待统计
    List<Checking> findCheckingTongJiAll(Checking checking);
    //根据考勤统计查询考勤数据
    List<CheckingStatistics> checkingStatisticsMessageAllById(Integer id);
    //考勤统计管理,统计
    int updateTongJiChecking(Checking checking);
    //修改完为已统计
    int checkingYiTongJi(Integer id);
    //考勤统计管理撤回
    int checkingCheHui(int id);
    //考勤数据考勤审批
    List<Checking> findCheckingShenPiAll(Checking checking);
    //修改完为已统计
    int checkingWanChen(Integer id);
    //通知表添加信息
    int addCheckingNotice(Notice notice);
    //修改完为已驳回
    int checkingBoHui(Integer id);
}
