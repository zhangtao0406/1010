package com.zy.demo.pojo;

/**
 * 部门表
 */
public class Department {

    private Integer id;//部门id
    private String departmentName;//部门名称
    private String departmentFatherName;//父级部门名称
    private String departmentFatherNum;//父级部门编号
    private String departmentFatherStatus;//父级状态
    private String departmentNum;//部门编号英语开头
    private String departmentStatus;//状态  0激活、1不激活
    private String comment;//备注
    private Integer dId;//父权限id
    private Integer userId;//用户id
    private String userName;//用户名称

    public String getDepartmentFatherName() {
        return departmentFatherName;
    }

    public void setDepartmentFatherName(String departmentFatherName) {
        this.departmentFatherName = departmentFatherName;
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }


    public String getDepartmentNum() {
        return departmentNum;
    }

    public void setDepartmentNum(String departmentNum) {
        this.departmentNum = departmentNum;
    }


    public String getDepartmentStatus() {
        return departmentStatus;
    }

    public void setDepartmentStatus(String departmentStatus) {
        this.departmentStatus = departmentStatus;
    }


    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }


    public Integer getDId() {
        return dId;
    }

    public void setDId(Integer dId) {
        this.dId = dId;
    }

    public String getDepartmentFatherNum() {
        return departmentFatherNum;
    }

    public void setDepartmentFatherNum(String departmentFatherNum) {
        this.departmentFatherNum = departmentFatherNum;
    }

    public String getDepartmentFatherStatus() {
        return departmentFatherStatus;
    }

    public void setDepartmentFatherStatus(String departmentFatherStatus) {
        this.departmentFatherStatus = departmentFatherStatus;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
