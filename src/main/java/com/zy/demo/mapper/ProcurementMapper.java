package com.zy.demo.mapper;

import com.zy.demo.pojo.GoodSapproval;
import com.zy.demo.pojo.Goods;
import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Procurement;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProcurementMapper {

    //采购申请管理模糊查询
    List<Procurement> findProcurementAll(Procurement procurement);

    //查看今年采购申请管理 为了生成采购申请管理编号
    Integer procurementCode(String year);

    //添加采购申请管理待审批
    int addProcurement(Procurement procurement);

    //添加采购申请管理保存草稿
    int addBaoCunProcurement(Procurement procurement);

    //采购申请管理详情
    Procurement procurementAllById(Integer id);

    //采购物品
    List<Goods> goodsMessageAll(Integer id);

    //审批信息
    List<GoodSapproval> goodSapprovalMessageAll(Integer id);

    //编辑采购申请管理
    int procurementUpdate(Procurement procurement);

    //修改完为待审批
    int procurementDaiShenPi(Integer id);

    //采购申请管理撤回
    int procurementCheHui(int id);

    //采购申请管理物品信息添加
    int procurementAndGoods(Goods goods);

    //采购申请审批模糊查询
    List<Procurement> findProcurementShenPiAll(Procurement procurement);

    //审批通过返回申请人
    int procurementTongGuo(GoodSapproval goodSapproval);

    //通知表添加信息
    int addNotice(Notice notice);

    //审批通过改为待入库
    int TongGuo(Integer procurementId);

    //审批审批不通过改为已驳回
    int BuTongGuo(Integer procurementId);

    //审批不通过信息填写
    int procurementBuTongGuo(GoodSapproval goodSapproval);

    //采购入库模糊查询
    List<Procurement> findProcurementRuKuAll(Procurement procurement);

    //采购入库并添加入库人
    int ProcurementRuKu(@Param ("id") Integer id, @Param ("rukuName") String rukuName);
}
