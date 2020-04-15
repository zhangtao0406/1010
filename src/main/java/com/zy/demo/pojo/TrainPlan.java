package com.zy.demo.pojo;

/**
 * 培训进度表
 */
public class TrainPlan {

    private Integer id;//进度id
    private Integer trainId;//培训id
    private String feedbackStatus;//反馈状态 0未提交 1已提交 2已打回
    private String feedbackContent;//反馈内容
    private String repulseOpinion;//打回意见
    private Integer departmentId;//培训部门  部门id
    private String departmentName;//部门名称
    private String departmentNum;//部门编号英语开头
    private Integer accessoryId;//附件id   附件
    private String accessoryName;//附件名
    private String accessoryUrl;//附件路径
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Integer getTrainId() {
        return trainId;
    }

    public void setTrainId(Integer trainId) {
        this.trainId = trainId;
    }


    public String getFeedbackStatus() {
        return feedbackStatus;
    }

    public void setFeedbackStatus(String feedbackStatus) {
        this.feedbackStatus = feedbackStatus;
    }


    public String getFeedbackContent() {
        return feedbackContent;
    }

    public void setFeedbackContent(String feedbackContent) {
        this.feedbackContent = feedbackContent;
    }


    public String getRepulseOpinion() {
        return repulseOpinion;
    }

    public void setRepulseOpinion(String repulseOpinion) {
        this.repulseOpinion = repulseOpinion;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
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

    public Integer getAccessoryId() {
        return accessoryId;
    }

    public void setAccessoryId(Integer accessoryId) {
        this.accessoryId = accessoryId;
    }

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
}
