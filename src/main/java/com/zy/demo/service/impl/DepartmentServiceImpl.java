package com.zy.demo.service.impl;

import com.zy.demo.mapper.DepartmentMapper;
import com.zy.demo.pojo.Department;
import com.zy.demo.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    //依赖注入
    @Resource
    private DepartmentMapper departmentMapper;
    //查询所有总部门信息
    @Override
    public List<Department> findDepartmentAll() {
        return departmentMapper.findDepartmentAll();
    }
    //根据父级查询对应的子级部门信息详情
    @Override
    public List<Department> findDepartmentFatherById(Integer id) {
        return departmentMapper.findDepartmentFatherById(id);
    }
    //根据父级查询对应的子级部门信息详情进行修改，数据回显
    @Override
    public Department updateDepartmentFatherById(Integer id) {
        return departmentMapper.updateDepartmentFatherById(id);
    }
    //根据父级查询对应的子级部门信息详情进行修改
    @Override
    public int updateDepartmentFather(Department department) {
        return departmentMapper.updateDepartmentFather(department);
    }
    //给父级部门添加子集
    @Override
    public int addDepartmentSon(Department department) {
        return departmentMapper.addDepartmentSon(department);
    }
    //查出子集
    @Override
    public List<Department> findDepartmentSonById(Integer id) {
        return departmentMapper.findDepartmentSonById(id);
    }
    //根据子集对应的父级查出子集
    @Override
    public Department findDepartmentFatherAndSonById(Integer dId) {
        return departmentMapper.findDepartmentFatherAndSonById(dId);
    }

    //子级部门信息详情进行修改、数据回显
    @Override
    public int updateDepartmentSon(Department department) {
        return departmentMapper.updateDepartmentSon(department);
    }
    //查询所有部门 用来做部门人员角色修改
    @Override
    public List<Department> findDepartmentUserAll() {
        return departmentMapper.findDepartmentUserAll();
    }
    //根据权限id查看部门员工
    @Override
    public List<Department> findDepartmentUserById(Integer id) {
        return departmentMapper.findDepartmentUserById(id);
    }


}
