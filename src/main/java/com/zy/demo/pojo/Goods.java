package com.zy.demo.pojo;

/**
 * 采购物品表
 */
public class Goods {

  private Integer id;//物品id
  private String goodsName;//物品名称
  private String goodsType;//物品类型
  private String goodsUnit;//计量单位
  private String goodsAmount;//物品数量
  private Integer procurementId;//采购id

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getGoodsName() {
    return goodsName;
  }

  public void setGoodsName(String goodsName) {
    this.goodsName = goodsName;
  }


  public String getGoodsType() {
    return goodsType;
  }

  public void setGoodsType(String goodsType) {
    this.goodsType = goodsType;
  }


  public String getGoodsUnit() {
    return goodsUnit;
  }

  public void setGoodsUnit(String goodsUnit) {
    this.goodsUnit = goodsUnit;
  }


  public String getGoodsAmount() {
    return goodsAmount;
  }

  public void setGoodsAmount(String goodsAmount) {
    this.goodsAmount = goodsAmount;
  }

    public Integer getProcurementId() {
        return procurementId;
    }

    public void setProcurementId(Integer procurementId) {
        this.procurementId = procurementId;
    }
}
