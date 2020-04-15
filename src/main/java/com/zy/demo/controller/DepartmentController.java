package com.zy.demo.controller;

import com.zy.demo.pojo.Department;
import com.zy.demo.pojo.Role;
import com.zy.demo.service.DepartmentService;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/DepartmentController")
public class DepartmentController {
    //依赖注入
    @Resource
    private DepartmentService departmentService;

    /**
     * 查询所有总部门信息
     * @return
     */
    @RequestMapping("/findDepartmentAll")
    @ResponseBody
    private List<Department> findDepartmentAll() {
        List<Department> list = departmentService.findDepartmentAll();
        return list;
    }

    /**
     * 根据父级查询对应的子级部门信息详情
     * @param id
     * @return
     */
    @RequestMapping("/findDepartmentFatherById")
    @ResponseBody
    private List<Department> findDepartmentFatherById(Integer id) {
        List<Department> list = departmentService.findDepartmentFatherById(id);
        return list;
    }


    /**
     * 根据父级查询对应的子级部门信息详情进行修改，数据回显
     * @param id
     * @return
     */
    @RequestMapping("/updateDepartmentFatherById")
    @ResponseBody
    private Department updateDepartmentFatherById(Integer id) {
        Department department = departmentService.updateDepartmentFatherById(id);
        department.setDepartmentFatherName (department.getDepartmentName ());
        return department;
    }

    /**
     * 根据父级查询对应的子级部门信息详情进行修改
     * @param department
     * @return
     */
    @RequestMapping("/updateDepartmentFather")
    @ResponseBody
    private Boolean updateDepartmentFather(Department department) {
        int i = departmentService.updateDepartmentFather(department);
        if(i>0){
            return true;
        }
            return false;
    }

    /**
     * 给父级部门添加子集
     * @param department
     * @param id
     * @return
     */
    @RequestMapping("/addDepartmentSon")
    @ResponseBody
    private Boolean addDepartmentSon(Department department,Integer id) {
        department.setDId (id);
        int i = departmentService.addDepartmentSon(department);
        if(i>0){
            return true;
        }
        return false;
    }
    /**
     * 根据子集查询对应的父级
     * @param id
     * @return
     */
    @RequestMapping("/findDepartmentSonById")
    @ResponseBody
    private List <Department> findDepartmentSonById(Integer id) {
        //查出子集
        List<Department> departmentSon = departmentService.findDepartmentSonById(id);
        for (Department department : departmentSon) {
            Integer dId = department.getDId ();
            //根据子集对应的父级查出子集
            Department departmentFather = departmentService.findDepartmentFatherAndSonById(dId);
            department.setDepartmentFatherName (departmentFather.getDepartmentName ());
            department.setDepartmentFatherNum (departmentFather.getDepartmentNum ());
            department.setDepartmentFatherStatus (departmentFather.getDepartmentStatus ());
        }
        return departmentSon;
    }
    /**
     * 子级部门信息详情进行修改、数据回显
     * @return
     */
    @RequestMapping("/updateDepartmentSon")
    @ResponseBody
    private Boolean updateDepartmentSon(Department department) {
        int i = departmentService.updateDepartmentSon(department);
        if(i>0){
            return true;
        }
        return false;
    }
    /**
     * 查询所有部门 用来做部门人员角色修改
     * @return
     */
    @RequestMapping("/findDepartmentUserAll")
    @ResponseBody
    private List <Department> findDepartmentUserAll() {
        List<Department> departmentList = departmentService.findDepartmentUserAll();
        return departmentList;
    }

    /**
     * 根据权限id查看部门员工
     * @param id
     * @return
     */
    @RequestMapping("/findDepartmentUserById")
    @ResponseBody
    public List<Department> findDepartmentUserById(Integer id) {
        return departmentService.findDepartmentUserById (id);
    }

}
