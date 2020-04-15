package com.zy.demo.pojo;

/**
 * 考勤统计
 */
public class CheckingStatistics {

    private Integer id;//考勤统计id
    private String checkingNum;//编号
    private String checkingName;//姓名
    private String post;//岗位
    private String turnWork;//出勤
    private String casualLeave;//事假
    private String sickLeave;//病假
    private String absenteeism;//旷工
    private String marriageLeave;//婚假
    private String maternityLeave;//产假
    private String beLate;//迟到/早退
    private String remark;//备注
    private String signature;//签字
    private Integer checkingId;//部门id

    public String getCheckingNum() {
        return checkingNum;
    }

    public void setCheckingNum(String checkingNum) {
        this.checkingNum = checkingNum;
    }

    public Integer getCheckingId() {
        return checkingId;
    }

    public void setCheckingId(Integer checkingId) {
        this.checkingId = checkingId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getCheckingName() {
        return checkingName;
    }

    public void setCheckingName(String checkingName) {
        this.checkingName = checkingName;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getTurnWork() {
        return turnWork;
    }

    public void setTurnWork(String turnWork) {
        this.turnWork = turnWork;
    }

    public String getCasualLeave() {
        return casualLeave;
    }

    public void setCasualLeave(String casualLeave) {
        this.casualLeave = casualLeave;
    }

    public String getSickLeave() {
        return sickLeave;
    }

    public void setSickLeave(String sickLeave) {
        this.sickLeave = sickLeave;
    }

    public String getAbsenteeism() {
        return absenteeism;
    }

    public void setAbsenteeism(String absenteeism) {
        this.absenteeism = absenteeism;
    }

    public String getMarriageLeave() {
        return marriageLeave;
    }

    public void setMarriageLeave(String marriageLeave) {
        this.marriageLeave = marriageLeave;
    }

    public String getMaternityLeave() {
        return maternityLeave;
    }

    public void setMaternityLeave(String maternityLeave) {
        this.maternityLeave = maternityLeave;
    }

    public String getBeLate() {
        return beLate;
    }

    public void setBeLate(String beLate) {
        this.beLate = beLate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }


    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

}
