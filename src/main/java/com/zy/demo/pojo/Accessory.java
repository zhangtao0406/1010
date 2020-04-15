package com.zy.demo.pojo;


/**
 * 附件表
 */
public class Accessory {

    private Integer id;//附件id
    private Integer trainId;//培训id
    private Integer infrastructureId;//基础设施档案id
    private String accessoryName;//附件名
    private String accessoryUrl;//附件url

    public Integer getTrainId() {
        return trainId;
    }

    public void setTrainId(Integer trainId) {
        this.trainId = trainId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInfrastructureId() {
        return infrastructureId;
    }

    public void setInfrastructureId(Integer infrastructureId) {
        this.infrastructureId = infrastructureId;
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
