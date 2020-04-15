package com.zy.demo.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 用户表
 */
public class User {

    private Integer id;//主键 用户id
    private String userNum;//用户编号
    private String loginId;//登录账号
    private String password;//用户密码
    private String userName;//用户名称
    private String userPapers;//证件类型  0身份证  1护照
    private Integer gender;//性别 (0男、1女)
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private java.util.Date birthday;//出生日期
    private Long age;//年龄
    private String certificateNumber;//证件编号
    private String highestEducation;//最高学历
    private String userPhone;//联系电话
    private String userEmail;//电子邮箱
    private String politicsStatus;//政治面貌
    private String comment;//备注
    private String duty;//职务
    private String titles;//职称
    private String rank;//职级
    private Integer departmentId;//（部门id）所属部门
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private java.util.Date createTime;//入职时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private java.util.Date retireTime;//退休时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private java.util.Date retirementTime;//退休时间算出来
    private String activatedStatus;//用户激活状态:  0激活 1不激活
    private String userStatus;//用户状态 0在职  1离职  2退休 3临时在职
    private double basepay;//基本工资
    private double oldInsurance;//养老保险
    private double medicalInsurance;//医疗保险
    private double unemploymentInsurance;//失业保险
    private double workInsurance;//工伤保险
    private double accrueInsurance;//生育保险
    private double reservedFunds;//公积金
    private double enterpriseAnnuity;//企业年金
    private Integer roleid;//角色id
    private String roleName;//角色名称
    private String departmentid;//部门id
    private String departmentName;//部门名称
    private String departmentNum;//部门编号英语开头

    public Long getAge() {
        return age;
    }

    public void setAge(Long age) {
        this.age = age;
    }

    public String getCertificateNumber() {
        return certificateNumber;
    }

    public void setCertificateNumber(String certificateNumber) {
        this.certificateNumber = certificateNumber;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }


    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getUserPapers() {
        return userPapers;
    }

    public void setUserPapers(String userPapers) {
        this.userPapers = userPapers;
    }


    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }


    public String getHighestEducation() {
        return highestEducation;
    }

    public void setHighestEducation(String highestEducation) {
        this.highestEducation = highestEducation;
    }


    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }


    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }


    public String getPoliticsStatus() {
        return politicsStatus;
    }

    public void setPoliticsStatus(String politicsStatus) {
        this.politicsStatus = politicsStatus;
    }


    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }


    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }


    public String getTitles() {
        return titles;
    }

    public void setTitles(String titles) {
        this.titles = titles;
    }


    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }


    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }


    public java.util.Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }


    public java.util.Date getRetireTime() {
        return retireTime;
    }

    public void setRetireTime(java.util.Date retireTime) {
        this.retireTime = retireTime;
    }


    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }


    public double getBasepay() {
        return basepay;
    }

    public void setBasepay(double basepay) {
        this.basepay = basepay;
    }


    public double getOldInsurance() {
        return oldInsurance;
    }

    public void setOldInsurance(double oldInsurance) {
        this.oldInsurance = oldInsurance;
    }


    public double getMedicalInsurance() {
        return medicalInsurance;
    }

    public void setMedicalInsurance(double medicalInsurance) {
        this.medicalInsurance = medicalInsurance;
    }


    public double getUnemploymentInsurance() {
        return unemploymentInsurance;
    }

    public void setUnemploymentInsurance(double unemploymentInsurance) {
        this.unemploymentInsurance = unemploymentInsurance;
    }


    public double getWorkInsurance() {
        return workInsurance;
    }

    public void setWorkInsurance(double workInsurance) {
        this.workInsurance = workInsurance;
    }


    public double getAccrueInsurance() {
        return accrueInsurance;
    }

    public void setAccrueInsurance(double accrueInsurance) {
        this.accrueInsurance = accrueInsurance;
    }


    public double getReservedFunds() {
        return reservedFunds;
    }

    public void setReservedFunds(double reservedFunds) {
        this.reservedFunds = reservedFunds;
    }


    public double getEnterpriseAnnuity() {
        return enterpriseAnnuity;
    }

    public void setEnterpriseAnnuity(double enterpriseAnnuity) {
        this.enterpriseAnnuity = enterpriseAnnuity;
    }

    public String getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(String departmentid) {
        this.departmentid = departmentid;
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

    public String getActivatedStatus() {
        return activatedStatus;
    }

    public void setActivatedStatus(String activatedStatus) {
        this.activatedStatus = activatedStatus;
    }

    public Date getRetirementTime() {
        return retirementTime;
    }

    public void setRetirementTime(Date retirementTime) {
        this.retirementTime = retirementTime;
    }
}
