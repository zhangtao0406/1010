package com.zy.demo.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 采购表
 */
public class Procurement {

    private Integer id;//采购id
    private String applyNum;//申请编号
    private String applyName;//申请人
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private java.util.Date applyTime;//申请时间
    private String procurementStatus;//状态 草稿0、待审批1、待入库2、已完成3、已驳回4、已撤回5
    private String comment;//备注
    private String approvalName;//审批人
    private Integer goodsId;//物品id
    private Integer approvalId;//审批id
    private String rukuName;//入库人

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getApplyNum() {
        return applyNum;
    }

    public void setApplyNum(String applyNum) {
        this.applyNum = applyNum;
    }

    public String getApplyName() {
        return applyName;
    }

    public void setApplyName(String applyName) {
        this.applyName = applyName;
    }


    public java.util.Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(java.util.Date applyTime) {
        this.applyTime = applyTime;
    }


    public String getProcurementStatus() {
        return procurementStatus;
    }

    public void setProcurementStatus(String procurementStatus) {
        this.procurementStatus = procurementStatus;
    }


    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }


    public String getApprovalName() {
        return approvalName;
    }

    public void setApprovalName(String approvalName) {
        this.approvalName = approvalName;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }


    public Integer getApprovalId() {
        return approvalId;
    }

    public void setApprovalId(Integer approvalId) {
        this.approvalId = approvalId;
    }

    public String getRukuName() {
        return rukuName;
    }

    public void setRukuName(String rukuName) {
        this.rukuName = rukuName;
    }
}
