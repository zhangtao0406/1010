package com.zy.demo.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 基础设施表
 */
public class Infrastructure {

    private Integer id;//设施id
    private String infrastructureName;//设施名称
    private String infrastructureStatus;//状态(0使用中，1维护中，2停用，3报废)
    private double price;//价格
    private Integer departmentId;//负责人部门   部门id
    private String principal;//负责人
    private String principalPhone;//负责人电话
    private String location;//设备位置
    private String longitude;//经度
    private String dimension;//纬度
    private String maintainPeriod;//维护周期
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private java.util.Date nextMaintain;//维护周期
    private Integer facilityId;//设施类型  设备类型id
    private String facilityName;//设施类型名称
    private String announcements;//注意事项
    private Integer accessoryId;//附件id    图片
    private String departmentName;//部门名称
    private String departmentNum;//部门编号英语开头
    private String accessoryName;//附件名
    private String accessoryUrl;//附件路径

    public String getAccessoryName() {
        return accessoryName;
    }

    public void setAccessoryName(String accessoryName) {
        this.accessoryName = accessoryName;
    }

    public String getAccessoryUrl() {
        return accessoryUrl;
    }

    public void setAccessoryUrl(String accessoryUrl) {
        this.accessoryUrl = accessoryUrl;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getInfrastructureName() {
        return infrastructureName;
    }

    public void setInfrastructureName(String infrastructureName) {
        this.infrastructureName = infrastructureName;
    }


    public String getInfrastructureStatus() {
        return infrastructureStatus;
    }

    public void setInfrastructureStatus(String infrastructureStatus) {
        this.infrastructureStatus = infrastructureStatus;
    }

    public String getPrincipalPhone() {
        return principalPhone;
    }

    public void setPrincipalPhone(String principalPhone) {
        this.principalPhone = principalPhone;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }


    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }


    public String getMaintainPeriod() {
        return maintainPeriod;
    }

    public void setMaintainPeriod(String maintainPeriod) {
        this.maintainPeriod = maintainPeriod;
    }


    public java.util.Date getNextMaintain() {
        return nextMaintain;
    }

    public void setNextMaintain_(java.util.Date nextMaintain) {
        this.nextMaintain = nextMaintain;
    }


    public Integer getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(Integer facilityId) {
        this.facilityId = facilityId;
    }


    public String getAnnouncements() {
        return announcements;
    }

    public void setAnnouncements(String announcements) {
        this.announcements = announcements;
    }


    public Integer getAccessoryId() {
        return accessoryId;
    }

    public void setAccessoryId(Integer accessoryId) {
        this.accessoryId = accessoryId;
    }

    public void setNextMaintain(Date nextMaintain) {
        this.nextMaintain = nextMaintain;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public String getDepartmentNum() {
        return departmentNum;
    }

    public void setDepartmentNum(String departmentNum) {
        this.departmentNum = departmentNum;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
}
