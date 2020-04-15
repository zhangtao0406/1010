package com.zy.demo.service;

import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Facility;
import com.zy.demo.pojo.Infrastructure;

import java.util.List;

public interface InfrastructureService {
    //基础设施档案的模糊
    List<Infrastructure> findInfrastructureAll(Infrastructure infrastructure);

    //基础设施类型
    List<Facility> facilityAll();

    //添加基础设施档案
    int addInfrastructure(Infrastructure infrastructure);

    //添加附件
    int addInfrastructureAndAccessory(Accessory accessory);

    //根据id查询基础设施档案
    Infrastructure InfrastructureById(Integer id);

    //编辑基础设施档案
    int updateInfrastructure(Infrastructure infrastructure);

    //根据id查询基础设施档案图片
    List<Infrastructure> infrastructureAndAccessoryAllById(Integer id);

    //基础设施类型模糊
    List<Facility> findFacilityAll(Facility facility);

    //查看今年基础设施类型 为了生成员工编号
    Integer facilityCode(String year);

    //基础设施类型新增
    int addInFacility(Facility facility);

    //基础设施类型详情
    Facility facilityById(Integer id);

    //编辑基础设施类型
    int updateFacility(Facility facility);
}
