package com.zy.demo.service.impl;

import com.zy.demo.mapper.SuperSUProMapper;
import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.Role;
import com.zy.demo.service.SuperSUProService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SuperSUProServiceImpl implements SuperSUProService {

    //依赖注入
    @Resource
    private SuperSUProMapper superSUProMapper;

    //查询所有角色信息
    @Override
    public List<Role> findRoleAll(String roleName, String roleStatus) {
        return superSUProMapper.findRoleAll(roleName,roleStatus);
    }

    //角色添加
    @Override
    public int findRoleAdd(String roleName, String roleStatus) {
        return superSUProMapper.findRoleAdd(roleName,roleStatus);
    }
    //根据id查询角色
    @Override
    public Role findRoleAllById(Integer id) {
        return superSUProMapper.findRoleAllById(id);
    }

    //角色修改
    @Override
    public int updateRole(Integer id, String roleName, String roleStatus) {
        return superSUProMapper.updateRole(id,roleName,roleStatus);
    }
    //查询所有权限
    @Override
    public List<Power> findPowerAll() {
        return superSUProMapper.findPowerAll();
    }
    //查询角色名称
    @Override
    public List<Power> findRoleNameById(Integer id) {
        return superSUProMapper.findRoleNameById(id);
    }

    //添加角色权限
    @Override
    public int findrolePowerAdd(String[] powerId, Integer id) {
        return superSUProMapper.findrolePowerAdd(powerId,id);
    }
    //查询回显权限   添加角色需要先删除之前的然后在修改角色
    @Override
    public List<Power> findRoleAllByid(Integer id) {
        return superSUProMapper.findRoleAllByid(id);
    }
    //查询回显权限
    @Override
    public List<Power> findRoleRoleAllByid(Integer id) {
        return superSUProMapper.findRoleRoleAllByid(id);
    }

    //删除中间表信息
    @Override
    public int findRolePowerDelete(Integer id) {
        return superSUProMapper.findRolePowerDelete(id);
    }


}
