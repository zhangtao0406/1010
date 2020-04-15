package com.zy.demo.service;

import com.zy.demo.pojo.Department;

import java.util.List;

public interface DepartmentService {
    //查询所有总部门信息
    List<Department> findDepartmentAll();

    //根据父级查询对应的子级部门信息详情
    List<Department> findDepartmentFatherById(Integer id);

    // 根据父级查询对应的子级部门信息详情进行修改，数据回显
    Department updateDepartmentFatherById(Integer id);

    //根据父级查询对应的子级部门信息详情进行修改
    int updateDepartmentFather(Department department);

    //给父级部门添加子集
    int addDepartmentSon(Department department);
    //查出子集
    List<Department> findDepartmentSonById(Integer id);
    //根据子集对应的父级查出子集
    Department findDepartmentFatherAndSonById(Integer dId);

    //子级部门信息详情进行修改、数据回显
    int updateDepartmentSon(Department department);
    //查询所有部门 用来做部门人员角色修改
    List<Department> findDepartmentUserAll();
    //根据权限id查看部门员工
    List<Department> findDepartmentUserById(Integer id);
}
