package com.zy.demo.controller;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.zy.demo.pojo.*;
import com.zy.demo.service.ProcurementService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/ProcurementController")
public class ProcurementController {
    //依赖注入
    @Resource
    private ProcurementService procurementService;


    /**
     * 采购申请管理模糊查询
     *
     * @param procurement
     * @return
     */
    @RequestMapping("/findProcurementAll")
    @ResponseBody
    private List<Procurement> findProcurementAll(Procurement procurement) {

        List<Procurement> procurementList = procurementService.findProcurementAll (procurement);

        return procurementList;
    }

    /**
     * 添加采购申请管理
     *
     * @return
     */
    @RequestMapping("/addProcurement")
    @ResponseBody
    public Boolean addProcurement(Procurement procurement) {
        //—————————————————————————自动生成采购申请管理编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年采购申请管理 为了生成采购申请管理编号
        Integer procurementCode = procurementService.procurementCode (year);
        Integer code = procurementCode + 1;
        //生成采购申请管理编号
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String applyNum = substring + "ZY" + "00" + code;
        procurement.setApplyNum (applyNum);
        //—————————————————————————自动生成采购申请管理编号———————————————————————————
        int i = procurementService.addProcurement (procurement);
        if (i > 0) {
            return true;
        }
        return false;
    }

    /**
     * 添加采购申请管理保存草稿
     *
     * @return
     */
    @RequestMapping("/addBaoCunProcurement")
    @ResponseBody
    public Boolean addBaoCunProcurement(Procurement procurement) {
        //—————————————————————————自动生成采购申请管理编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年采购申请管理 为了生成采购申请管理编号
        Integer procurementCode = procurementService.procurementCode (year);
        Integer code = procurementCode + 1;
        //生成采购申请管理编号
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String applyNum = substring + "ZY" + "00" + code;
        procurement.setApplyNum (applyNum);
        //—————————————————————————自动生成采购申请管理编号———————————————————————————
        int i = procurementService.addBaoCunProcurement (procurement);
        if (i > 0) {
            return true;
        }
        return false;
    }


    /**
     * 采购申请管理详情
     *
     * @param id
     * @return
     */
    @RequestMapping("/procurementAllById")
    @ResponseBody
    private Procurement procurementAllById(Integer id) {

        Procurement procurement = procurementService.procurementAllById (id);

        return procurement;
    }


    /**
     * 采购物品
     *
     * @param id
     * @return
     */
    @RequestMapping("/goodsMessageAll")
    @ResponseBody
    private List<Goods> goodsMessageAll(Integer id) {

        List<Goods> goodsList = procurementService.goodsMessageAll (id);

        return goodsList;
    }

    /**
     * 审批信息
     *
     * @param id
     * @return
     */
    @RequestMapping("/goodSapprovalMessageAll")
    @ResponseBody
    private List<GoodSapproval> goodSapprovalMessageAll(Integer id) {

        List<GoodSapproval> goodSapprovalList = procurementService.goodSapprovalMessageAll (id);

        return goodSapprovalList;
    }


    /**
     * 编辑采购申请管理
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/procurementUpdate")
    public Boolean procurementUpdate(Integer id, String approvalName, String comment) {
        Procurement procurement = new Procurement ();
        procurement.setId (id);
        procurement.setApprovalName (approvalName);
        procurement.setComment (comment);
        int i = procurementService.procurementUpdate (procurement);
        if (i > 0) {
            //修改完为待审批
            int j = procurementService.procurementDaiShenPi (id);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 采购申请管理撤回
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/procurementCheHui")
    public Boolean procurementCheHui(int id) {
        int i = procurementService.procurementCheHui (id);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * 采购申请管理物品信息添加
     *
     * @return
     */
    @RequestMapping("/procurementAndGoods")
    @ResponseBody
    public boolean procurementAndGoods(String[] goodsName, String[] goodsType, String[] goodsUnit, String[] goodsAmount, Integer procurementId) {

        int j = 0;

        if(goodsName.length == goodsType.length && goodsType.length == goodsUnit.length && goodsUnit.length == goodsAmount.length){

            for (int i = 0; i < goodsUnit.length; i++) {

                Goods goods = new Goods ();

                goods.setGoodsName (goodsName[i]);
                goods.setGoodsType (goodsType[i]);
                goods.setGoodsUnit (goodsUnit[i]);
                goods.setGoodsAmount (goodsAmount[i]);
                goods.setProcurementId (procurementId);
                j += procurementService.procurementAndGoods (goods);

            }

            if (j == goodsName.length){

                return true;
            }else {

                return false;
            }

        }else {

            return false;
        }

    }

    /**
     * 采购申请审批模糊查询
     *
     * @param procurement
     * @return
     */
    @RequestMapping("/findProcurementShenPiAll")
    @ResponseBody
    private List<Procurement> findProcurementShenPiAll(Procurement procurement) {

        List<Procurement> procurementList = procurementService.findProcurementShenPiAll (procurement);

        return procurementList;
    }


    /**
     * 审批通过返回申请人
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/procurementTongGuo")
    public Boolean procurementTongGuo(Integer procurementId, String approvalOpinion, HttpSession session) {
        //审批通过改为待入库
        int l = procurementService.TongGuo (procurementId);
        if (l > 0) {
            //创建审批信息对象
            GoodSapproval goodSapproval = new GoodSapproval ();
            User user = (User) session.getAttribute ("userSession");
            String approvalName = user.getUserName ();
            goodSapproval.setApprovalName (approvalName);
            goodSapproval.setProcurementId (procurementId);
            goodSapproval.setApprovalOpinion (approvalOpinion);
            goodSapproval.setApprovalResult ("通过");
            int i = procurementService.procurementTongGuo (goodSapproval);
            //创建通知表对象
            Notice notice = new Notice ();
            notice.setNoticeName ("采购审批通过");//通知标题
            notice.setInitiator (user.getUserName ());//发起人
            //通知表添加信息
            int j = procurementService.addNotice (notice);
            return true;
        } else {
            return false;
        }
    }


    /**
     * 审批不通过
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/procurementBuTongGuo")
    public Boolean procurementBuTongGuo(Integer procurementId, String approvalOpinion, HttpSession session) {
        //审批审批不通过改为已驳回
        int l = procurementService.BuTongGuo (procurementId);
        if (l > 0) {
            //创建审批信息对象
            GoodSapproval goodSapproval = new GoodSapproval ();
            User user = (User) session.getAttribute ("userSession");
            String approvalName = user.getUserName ();
            goodSapproval.setApprovalName (approvalName);
            goodSapproval.setProcurementId (procurementId);
            goodSapproval.setApprovalOpinion (approvalOpinion);
            goodSapproval.setApprovalResult ("不通过");
            int i = procurementService.procurementBuTongGuo (goodSapproval);
            //创建通知表对象
            Notice notice = new Notice ();
            notice.setNoticeName ("采购审批未通过");//通知标题
            notice.setInitiator (user.getUserName ());//发起人
            //通知表添加信息
            int j = procurementService.addNotice (notice);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 采购入库模糊查询
     *
     * @param procurement
     * @return
     */
    @RequestMapping("/findProcurementRuKuAll")
    @ResponseBody
    private List<Procurement> findProcurementRuKuAll(Procurement procurement) {

        List<Procurement> procurementList = procurementService.findProcurementRuKuAll (procurement);

        return procurementList;
    }

    /**
     * 采购入库
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/ProcurementRuKu")
    public Boolean ProcurementRuKu(Integer id, HttpSession session) {
        User user = (User) session.getAttribute ("userSession");
        String rukuName = user.getUserName ();
        //采购入库并添加入库人
        int i = procurementService.ProcurementRuKu (id,rukuName);

        if (i >0){

            return true;
        } else{
            return false;
        }
    }

}
