package com.zy.demo.pojo;


import java.util.List;

/**
 * 权限表
 */
public class Power {

    private Integer id;
    private String powerId;//权限编号
    private String power;//权限
    private String url;//页面路径
    private String pId;//一级权限id
    private String rId;//角色id
    private List<Power> powerList;//二级权限
    private Role role;//角色
    private Integer roleId;//角色id
    private String roleName;//角色姓名
    private String roleStatus;//状态
    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    private Boolean checked;

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPowerId() {
        return powerId;
    }

    public void setPowerId(String powerId) {
        this.powerId = powerId;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId;
    }

    public List<Power> getPowerList() {
        return powerList;
    }

    public void setPowerList(List<Power> powerList) {
        this.powerList = powerList;
    }

    public String getRoleStatus() {
        return roleStatus;
    }

    public void setRoleStatus(String roleStatus) {
        this.roleStatus = roleStatus;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Power{" +
                "id=" + id +
                ", powerId='" + powerId + '\'' +
                ", power='" + power + '\'' +
                ", url='" + url + '\'' +
                ", pId='" + pId + '\'' +
                ", rId='" + rId + '\'' +
                ", powerList=" + powerList +
                ", roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", roleStatus='" + roleStatus + '\'' +
                ", checked=" + checked +
                '}';
    }
}
