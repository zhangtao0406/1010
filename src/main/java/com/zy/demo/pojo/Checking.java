package com.zy.demo.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 考勤表
 */
public class Checking {

    private Integer id;//考勤id
    private String year;//年度
    private String month;//月份
    private String userName;//操作人
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private java.util.Date operationTime;//操作时间
    private String comment;//备注
    private String fileName;//文件名
    private String fileUrl;//文件路径
    private Integer checkingStatus;//考勤状态 待统计 0、待审批 1、待汇总 2、已完成 3、已驳回 4、已统计 5、已完结 6、已撤回 7、已完成 8、已办结 9
    //0 待统计  1 待审批 2 已完成 3 已驳回 4 已撤回 5 已完成
    private Integer departmentId;//部门id
    private String approvalName;//审批人
    private String departmentName;//部门名称
    private String departmentNum;//部门编号英语开头

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

    public String getApprovalName() {
        return approvalName;
    }

    public void setApprovalName(String approvalName) {
        this.approvalName = approvalName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }


    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public java.util.Date getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(java.util.Date operationTime) {
        this.operationTime = operationTime;
    }


    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }


    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }


    public String getFileUrl() {
        return fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }


    public Integer getCheckingStatus() {
        return checkingStatus;
    }

    public void setCheckingStatus(Integer checkingStatus) {
        this.checkingStatus = checkingStatus;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

}
