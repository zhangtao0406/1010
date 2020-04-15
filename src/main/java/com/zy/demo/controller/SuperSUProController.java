package com.zy.demo.controller;

import com.alibaba.fastjson.JSONArray;
import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.Role;
import com.zy.demo.pojo.RolePower;
import com.zy.demo.service.SuperSUProService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/superSUProController")
public class SuperSUProController {

    //依赖注入
    @Resource
    private SuperSUProService superSUProService;

    /**
     * 查询所有角色信息
     * @param roleName
     * @param roleStatus
     * @return
     */
    @RequestMapping("/findRoleAll")
    @ResponseBody
    private List<Role> findRoleAll(String roleName,String roleStatus) {
        List<Role> list = superSUProService.findRoleAll(roleName,roleStatus);
        return list;
    }

    /**
     * 角色添加
     * @param roleName
     * @param roleStatus
     * @return
     */
    @RequestMapping("/findRoleAdd")
    @ResponseBody
    private boolean findRoleAdd(String roleName,String roleStatus) {
        int i = superSUProService.findRoleAdd(roleName,roleStatus);
        if(i>0){
            return true;
        }
        return false;
    }

    /**
     *  根据id查询角色
     * @param id
     * @return
     */
    @RequestMapping("/findRoleAllById")
    @ResponseBody
    private Role findRoleAllById(Integer id) {
        Role role = superSUProService.findRoleAllById(id);
        return role;
    }


    /**
     *角色修改
     * @param id
     * @param roleName
     * @param roleStatus
     * @return
     */
    @RequestMapping("/updateRole")
    @ResponseBody
    private boolean updateRole(Integer id,String roleName,String roleStatus) {
        int i = superSUProService.updateRole(id,roleName,roleStatus);
        if(i>0){
            return true;
        }
        return false;
    }

    /**
     * 查询所有权限 没用到
     *
     * @return
     */
    @RequestMapping("/findPowerAll")
    @ResponseBody
    private List<Power> findPowerAll() {
        List<Power> list = superSUProService.findPowerAll ();
        return list;
    }
    /**
     * 添加角色权限  没用到
     *
     * @param powerId
     * @param id
     * @return
     */
    @RequestMapping("/findrolePowerAdd")
    @ResponseBody
    public boolean findrolePowerAdd(String[] powerId,Integer id) {
        //添加权限
        int i = superSUProService.findrolePowerAdd (powerId,id);

        if (i > 0) {
            return true;
        }
        return false;
    }

    /**
     * 查找添加的ztree、修改时查询回显的id
     *
     * @param id
     * @return
     */
    @RequestMapping("/findRoleAllByid")
    @ResponseBody
    public Map<String, List<Power>> findRoleAllByid(Integer id) {
        Map<String, List<Power>> map = new HashMap<> ();
        //查询角色名称
        List<Power> role = superSUProService.findRoleNameById(id);
        //查询所有权限
        List<Power> allList = superSUProService.findPowerAll ();
        //查询回显用户角色id
        List<Power> list = superSUProService.findRoleAllByid (id);
        //查询回显权限
        List<Power> listall = superSUProService.findRoleRoleAllByid (id);
        System.out.println (list);
        map.put ("role",role);
        map.put ("allList", allList);
        map.put ("resList", list);
        map.put ("listall", listall);
        return map;
    }





    /**
     * 修改，先修改role的role_name的值，然后删除关联表的内容，然后重新添加，一共调用了三个方法
     *
     * @param powerId
     * @param role
     * @param id
     * @return
     */
    @RequestMapping("/findRoleAddIsUpdate")
    @ResponseBody
    public boolean findRoleAddIsUpdate(String[] powerId, Role role, Integer id) {
        System.out.println (powerId);

        //删除中间表信息
        int b = superSUProService.findRolePowerDelete (id);
        //添加权限     添加角色需要先删除之前的然后在修改角色
        int c = superSUProService.findrolePowerAdd (powerId, role.getId ());

        if (c > 0) {
            return true;
        }
        return false;
    }

}
