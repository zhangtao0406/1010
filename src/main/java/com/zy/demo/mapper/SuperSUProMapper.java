package com.zy.demo.mapper;

import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 权限管理
 */
public interface SuperSUProMapper {
    //查询所有角色信息
    List<Role> findRoleAll(@Param("roleName") String roleName, @Param("roleStatus") String roleStatus);

    //角色添加
    int findRoleAdd(@Param("roleName") String roleName, @Param("roleStatus") String roleStatus);

    //根据id查询角色
    Role findRoleAllById(Integer id);

    //角色修改
    int updateRole(@Param("id") Integer id, @Param("roleName") String roleName, @Param("roleStatus") String roleStatus);

    //查询所有权限
    List<Power> findPowerAll();

    //查询角色名称
    List<Power> findRoleNameById(Integer id);

    //添加角色权限  添加角色需要先删除之前的然后在修改角色
    int findrolePowerAdd(@Param("powerId") String[] powerId, @Param("id") Integer id);

    //查询回显用户角色id
    List<Power> findRoleAllByid(Integer id);

    //查询回显权限
    List<Power> findRoleRoleAllByid(Integer id);


    //删除中间表信息
    int findRolePowerDelete(Integer id);

}
