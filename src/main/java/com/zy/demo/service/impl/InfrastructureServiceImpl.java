package com.zy.demo.service.impl;

import com.zy.demo.mapper.InfrastructureMapper;
import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Facility;
import com.zy.demo.pojo.Infrastructure;
import com.zy.demo.service.InfrastructureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InfrastructureServiceImpl implements InfrastructureService {
    //依赖注入
    @Resource
    private InfrastructureMapper infrastructureMapper;

    //基础设施档案的模糊
    @Override
    public List<Infrastructure> findInfrastructureAll(Infrastructure infrastructure) {
        return infrastructureMapper.findInfrastructureAll (infrastructure);
    }

    //基础设施类型
    @Override
    public List<Facility> facilityAll() {
        return infrastructureMapper.facilityAll ();
    }

    //添加基础设施档案
    @Override
    public int addInfrastructure(Infrastructure infrastructure) {
        return infrastructureMapper.addInfrastructure (infrastructure);
    }

    //添加附件
    @Override
    public int addInfrastructureAndAccessory(Accessory accessory) {
        return infrastructureMapper.addInfrastructureAndAccessory (accessory);
    }

    //根据id查询基础设施档案
    @Override
    public Infrastructure InfrastructureById(Integer id) {
        return infrastructureMapper.InfrastructureById (id);
    }

    //编辑基础设施档案
    @Override
    public int updateInfrastructure(Infrastructure infrastructure) {
        return infrastructureMapper.updateInfrastructure (infrastructure);
    }

    //根据id查询基础设施档案图片
    @Override
    public List<Infrastructure> infrastructureAndAccessoryAllById(Integer id) {
        return infrastructureMapper.infrastructureAndAccessoryAllById (id);
    }

    //基础设施类型模糊
    @Override
    public List<Facility> findFacilityAll(Facility facility) {
        return infrastructureMapper.findFacilityAll (facility);
    }

    //查看今年基础设施类型 为了生成员工编号
    @Override
    public Integer facilityCode(String year) {
        return infrastructureMapper.facilityCode (year);
    }

    //基础设施类型新增
    @Override
    public int addInFacility(Facility facility) {
        return infrastructureMapper.addInFacility (facility);
    }

    //基础设施类型详情
    @Override
    public Facility facilityById(Integer id) {
        return infrastructureMapper.facilityById (id);
    }

    //编辑基础设施类型
    @Override
    public int updateFacility(Facility facility) {
        return infrastructureMapper.updateFacility(facility);
    }
}
