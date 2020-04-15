package com.zy.demo.service.impl;

import com.zy.demo.mapper.ProcurementMapper;
import com.zy.demo.pojo.GoodSapproval;
import com.zy.demo.pojo.Goods;
import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Procurement;
import com.zy.demo.service.ProcurementService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProcurementServiceImpl implements ProcurementService {
    //依赖注入
    @Resource
    private ProcurementMapper procurementMapper;

    //采购申请管理模糊查询
    @Override
    public List<Procurement> findProcurementAll(Procurement procurement) {
        return procurementMapper.findProcurementAll (procurement);
    }

    //查看今年采购申请管理 为了生成采购申请管理编号
    @Override
    public Integer procurementCode(String year) {
        return procurementMapper.procurementCode (year);
    }

    //添加采购申请管理待审批
    @Override
    public int addProcurement(Procurement procurement) {
        return procurementMapper.addProcurement (procurement);
    }

    //添加采购申请管理保存草稿
    @Override
    public int addBaoCunProcurement(Procurement procurement) {
        return procurementMapper.addBaoCunProcurement (procurement);
    }

    //采购申请管理详情
    @Override
    public Procurement procurementAllById(Integer id) {
        return procurementMapper.procurementAllById (id);
    }

    //采购物品
    @Override
    public List<Goods> goodsMessageAll(Integer id) {
        return procurementMapper.goodsMessageAll (id);
    }

    //采购物品
    @Override
    public List<GoodSapproval> goodSapprovalMessageAll(Integer id) {
        return procurementMapper.goodSapprovalMessageAll (id);
    }

    //编辑采购申请管理
    @Override
    public int procurementUpdate(Procurement procurement) {
        return procurementMapper.procurementUpdate (procurement);
    }

    //修改完为待审批
    @Override
    public int procurementDaiShenPi(Integer id) {
        return procurementMapper.procurementDaiShenPi (id);
    }

    //采购申请管理撤回
    @Override
    public int procurementCheHui(int id) {
        return procurementMapper.procurementCheHui (id);
    }

    //采购申请管理物品信息添加
    @Override
    public int procurementAndGoods(Goods goods) {
        return procurementMapper.procurementAndGoods (goods);
    }

    //采购申请审批模糊查询
    @Override
    public List<Procurement> findProcurementShenPiAll(Procurement procurement) {
        return procurementMapper.findProcurementShenPiAll (procurement);
    }

    //审批通过返回申请人
    @Override
    public int procurementTongGuo(GoodSapproval goodSapproval) {
        return procurementMapper.procurementTongGuo (goodSapproval);
    }

    //通知表添加信息
    @Override
    public int addNotice(Notice notice) {
        return procurementMapper.addNotice (notice);
    }

    //审批通过改为待入库
    @Override
    public int TongGuo(Integer procurementId) {
        return procurementMapper.TongGuo (procurementId);
    }

    //审批审批不通过改为已驳回
    @Override
    public int BuTongGuo(Integer procurementId) {
        return procurementMapper.BuTongGuo (procurementId);
    }

    //审批不通过信息填写
    @Override
    public int procurementBuTongGuo(GoodSapproval goodSapproval) {
        return procurementMapper.procurementBuTongGuo (goodSapproval);
    }

    //采购入库模糊查询
    @Override
    public List<Procurement> findProcurementRuKuAll(Procurement procurement) {
        return procurementMapper.findProcurementRuKuAll (procurement);
    }

    //采购入库并添加入库人
    @Override
    public int ProcurementRuKu(Integer id, String rukuName) {
        return procurementMapper.ProcurementRuKu(id,rukuName);
    }

}
