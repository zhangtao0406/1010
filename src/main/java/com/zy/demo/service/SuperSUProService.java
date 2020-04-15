package com.zy.demo.service;

import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.Role;

import java.util.List;

public interface SuperSUProService {
    //查询所有角色信息
    List<Role> findRoleAll(String roleName, String roleStatus);

    //角色添加
    int findRoleAdd(String roleName, String roleStatus);

    //根据id查询角色
    Role findRoleAllById(Integer id);

    //角色修改
    int updateRole(Integer id, String roleName, String roleStatus);
    //查询所有权限
    List<Power> findPowerAll();
    //查询角色名称
    List<Power> findRoleNameById(Integer id);
    //添加角色权限
    int findrolePowerAdd(String[] powerId, Integer id);
    //查询回显用户角色id
    List<Power> findRoleAllByid(Integer id);
    //查询回显权限
    List<Power> findRoleRoleAllByid(Integer id);

    //删除中间表信息
    int findRolePowerDelete(Integer id);


}
