<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        采购申请管理
    --%>
    <meta charset="utf-8">
    <title>采购申请管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link type="text/css" href="/index/css/bootstrap-table.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/index/css/build.css">
    <link rel="stylesheet" href="/index/layui/css/layui.css">
    <link rel="stylesheet" href="/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <!--引入jquery-->
    <script src="${pageContext.request.contextPath }/index/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!--引入bootstrap.js-->
    <script src="${pageContext.request.contextPath }/index/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table-zh-CN.js"></script>
    <script src="/index/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.exedit.js"></script>


</head>
<body>

<!-- ----------------------------以上采购申请管理添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">采购申请:</h4>
                </div>
                <form class="layui-form" id="addProcurement" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>添加申请信息</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">采购编号:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="系统自动生成"
                                                       readonly="readonly" id="applyNum2" name="applyNum"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">申请时间:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="默认系统自动生成当前时间"
                                                       readonly="readonly"  autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">申 请 人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="申请人"
                                                           id="applyName2" name="applyName" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">审 批 人:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline">
                                                        <input class="layui-input" type="text" placeholder="审批人"
                                                               id="approvalName2" name="approvalName"
                                                               autocomplete="off"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">备注详情:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment2" name="comment" required
                                                              lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="addProcurement()" class="btn btn-primary">提交申请</button>
                    <button type="button" onclick="addBaoCunProcurement()" class="btn btn-success">保存草稿</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上采购申请管理添加的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上采购申请管理选择审批人的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" style="width: 800px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">部门用户选择</h4>
                </div>
                <form role="from" class="form-horizontal">
                    <div class="modal-body" style="width: 800px">
                        <div class="form-group" style="margin-left: 60px">
                            <div style="width: 400px; height: 200px;">
                                <div class="container">
                                    <div class="row clearfix">
                                        <div class="col-md-8 column">
                                            <div class="row clearfix">
                                                <div class="col-md-4 column">
                                                    <div class="panel panel-primary">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">
                                                                部门选择
                                                            </h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <!--基板-->
                                                            <ul id="treeDemo" class="ztree"></ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 column">
                                                    <div class="panel panel-primary">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">
                                                                <span id="departmentAll">部门人员详细信息</span>
                                                            </h3>
                                                        </div>
                                                        <div class="panel-body">

                                                            <%--bootstraptable的基板--%>
                                                            <table id="tableUserAll"></table>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" onclick="userRoleXuanZe()" class="btn btn-primary">确定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上采购申请管理选择审批人的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上采购申请管理详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel3">采购申请详情</h4>
            </div>
            <form  id="ProcurementAllByIdMyModal" style="width:680px; margin-left: 110px">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>添加申请信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">采购编号:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="系统自动生成"
                                                   readonly="readonly" id="applyNum3" name="applyNum"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">申请时间:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="默认系统自动生成当前时间"
                                                   readonly="readonly"  id="applyTime3" name="applyTime" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">申 请 人:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="申请人"
                                                       readonly="readonly" id="applyName3" name="applyName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">审 批 人:</label>
                                            <div class="layui-input-inline">
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="审批人"
                                                           readonly="readonly"  id="approvalName3" name="approvalName"
                                                           autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">备注详情:</label>
                                            <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment3" name="comment" required
                                                              readonly="readonly"  lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>物品信息</legend>
                        <div class="layui-field-box">
                            <table id="goodsMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>审批信息</legend>
                        <div class="layui-field-box">
                            <table id="goodSapprovalMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上采购申请管理详情的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上采购申请管理编辑的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel4">采购申请编辑</h4>
            </div>
            <form  id="procurementUpdate" style="width:680px; margin-left: 110px">
                <input type="hidden" id="Procurementid">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>添加申请编辑</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">采购编号:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="系统自动生成"
                                                   readonly="readonly" id="applyNum4" name="applyNum"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">申请时间:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="默认系统自动生成当前时间"
                                                   readonly="readonly"  id="applyTime4" name="applyTime" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">申 请 人:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="申请人"
                                                       readonly="readonly" id="applyName4" name="applyName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">审 批 人:</label>
                                            <div class="layui-input-inline">
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="审批人"
                                                           id="approvalName4" name="approvalName"
                                                           autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">备注详情:</label>
                                            <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment4" name="comment" required
                                                                lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>物品信息</legend>
                        <div class="layui-field-box">
                            <table id="goodsMessageAlltable2" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>审批信息</legend>
                        <div class="layui-field-box">

                            <table id="goodSapprovalMessageAlltable2" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="procurementUpdate()" class="btn btn-primary">提交申请</button>
                <button type="button"  class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上采购申请管理编辑的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上采购申请管理选择审批人的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" style="width: 800px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel5">部门用户选择</h4>
                </div>
                <form role="from" class="form-horizontal">
                    <div class="modal-body" style="width: 800px">
                        <div class="form-group" style="margin-left: 60px">

                            <div style="width: 400px; height: 200px;">
                                <div class="container">
                                    <div class="row clearfix">
                                        <div class="col-md-8 column">
                                            <div class="row clearfix">
                                                <div class="col-md-4 column">
                                                    <div class="panel panel-primary">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">
                                                                部门选择
                                                            </h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <!--基板-->
                                                            <ul id="treeDemo2" class="ztree"></ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 column">
                                                    <div class="panel panel-primary">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">
                                                                <span id="departmentAll2">部门人员详细信息</span>
                                                            </h3>
                                                        </div>
                                                        <div class="panel-body">

                                                            <%--bootstraptable的基板--%>
                                                            <table id="tableUserAll2"></table>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" onclick="userRoleXuanZe2()" class="btn btn-primary">确定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上采购申请管理选择审批人的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上采购申请管理物品信息添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel6" style="font-size: 20px">采购申请编辑</h4>
                <button type="button" onclick="goodsExpand()" class="btn btn-success" style="margin-left: 740px;margin-top: -40px;font-size: 16px">物品拓展</button>
            </div>
            <form id="procurementAndGoods" style="width:680px; margin-left: 110px">
                <input type="hidden" id="GoodsAddMyModalid">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>添加申请编辑</legend>
                        <div class="layui-field-box">
                            <div>
                                <div class="layui-row">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">物品名称:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="物品名称如:(A4纸,签字笔...)"
                                                   id="goodsName6" name="goodsName"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">物品类型:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="物品类型如:(办公用品...)"
                                                   id="goodsType6" name="goodsType" autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">计量单位:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="计量单位如:(盒,箱,台...)"
                                                   id="goodsUnit6" name="goodsUnit" autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">物品数量:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="物品数量如:(1,2,3...)"
                                                   id="goodsAmount6" name="goodsAmount" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div id="goodsExpand">

                            </div>
                        </div>


                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="goodsAdd()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上采购申请管理物品信息添加的模态框-------------------------分割线----------------------------------结束------------------ ------->


<!-- ----------------------------以上采购申请管理模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="ProcurementLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 80px">
                    <button type="button" onclick="addProcurementMyModal()" class="btn btn-primary btn-lg">添加采购</button>
                </div>
                <div class="form-group" style="margin-left: 80px">
                    <label for="applyNum1">采购申请单编号:</label>
                    <input type="text" class="form-control" name="applyNum" id="applyNum1" placeholder="采购申请单编号"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="applyName">申请人:</label>
                    <input type="text" class="form-control" name="applyName" id="applyName"
                           placeholder="申请人"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="procurementStatus1">培训状态:</label>
                    <select class="form-control" name="procurementStatus" id="procurementStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="0">草稿</option>
                        <option value="1">待审批</option>
                        <option value="2">待入库</option>
                        <option value="3">已完成</option>
                        <option value="4">已驳回</option>
                        <option value="5">已撤回</option>
                    </select>
                </div>

                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="ProcurementLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上采购申请管理模糊查询---------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="ProcurementTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#ProcurementLikeForm").get(0).reset();
        $("#ProcurementTable").bootstrapTable('destroy')
        InfrastructureAll();
    }

    //提交模糊查询
    function ProcurementLike() {
        $.ajax({
            type: "post",
            data: $('#ProcurementLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/ProcurementController/findProcurementAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#ProcurementTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        InfrastructureAll();
        /*facilityAll();*/
    });

    /*------------------以上所有以上采购申请管理的table表格-------------------------分割线-------------------开始------------------------------*/
    function InfrastructureAll() {
        $("#ProcurementTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/findProcurementAll",
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "序号",
                    field: 'id',
                    align: 'center' // 居中显示
                }, {
                    title: "申请编号",
                    field: 'applyNum',
                    align: 'center' // 居中显示
                }, {
                    title: "申请人",
                    field: 'applyName',
                    align: 'center' // 居中显示
                }, {
                    title: "申请时间",
                    field: 'applyTime',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'procurementStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.procurementStatus == 0) {
                            return "草稿";
                        }
                        if (row.procurementStatus == 1) {
                            return "待审批";
                        }
                        if (row.procurementStatus == 2) {
                            return "待入库";
                        }
                        if (row.procurementStatus == 3) {
                            return "已完成";
                        }
                        if (row.procurementStatus == 4) {
                            return "已驳回";
                        }
                        if (row.procurementStatus == 5) {
                            return "已撤回";
                        }
                    }
                }, {
                    title: "采购申请管理操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.procurementStatus == 0) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;" +
                                "<a class='btn btn-warning' onclick='ProcurementUpdateMyModal(" + row.id + ")' role='button' >修改采购</a>&nbsp;" +
                                "<a class='btn btn-success' onclick='GoodsAddMyModal(" + row.id + ")' role='button' >添加采购物品</a>";
                        } else if (row.procurementStatus == 1) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;" +
                                "<a class='btn btn-danger' onclick='ProcurementCheHuiMyModal(" + row.id + ")' role='button' >采购撤回</a>&nbsp;" +
                                "<a class='btn btn-success' onclick='GoodsAddMyModal(" + row.id + ")' role='button' >添加采购物品</a>";
                        } else if (row.procurementStatus == 2) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>";
                        } else if (row.procurementStatus == 3) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;";
                        } else if (row.procurementStatus == 4) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;" +
                                   "<a class='btn btn-warning' onclick='ProcurementUpdateMyModal(" + row.id + ")' role='button' >修改采购</a>&nbsp;";
                        } else if (row.procurementStatus == 5) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;" +
                                   "<a class='btn btn-warning' onclick='ProcurementUpdateMyModal(" + row.id + ")' role='button' >修改采购</a>&nbsp;";
                        }
                    }
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }

    /*------------------以上所有以上采购申请管理的table表格-------------------------分割线-------------------结束------------------------------*/
    /*------------------采购申请管理添加------------------ --------------------分割线-------------------开始------------------------------*/

    //添加基础设施档案模态框展示
    function addProcurementMyModal() {
        $("#myModal1").modal("show");
    }


    //根据id查询角色回显到页面
    $("#approvalName2").blur(function () {
        $("#myModal2").modal("show");
        $.ajax({
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentUserAll",
            type: "post",
            dateType: "json",
            success: function (data) {//成功
                console.log(data)
                /*ztree的初始化方法需要三个参数     1.获得基板对象  2.配置文件 3.节点信息  */
                var tree = $.fn.zTree.init($("#treeDemo"), setting1, data);
            },
            error: function (data) {
                alert("对不起，操作有误");
            }
        })
    });

    var mid;//函数
    //配置信息
    var setting1 = {

        async: {
            enable: true //是否开启异步加载
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "dId"
            },
            key: {
                name: "departmentName"
            }
        },

        callback: {
            befoureClick: befourClickMethod,  //单机节点之前的回调函数
            onClick: zTreeOnClick,//用于捕获节点被点击的事件回调函数
        }
    };

    function befourClickMethod() {//单机节点之前的回调函数
    }


    function zTreeOnClick(event, treeId, treeNode) {//用于捕获节点被点击的事件回调函数
        var departmentName = treeNode.departmentName;//var departmentName 树名  treeNode.departmentName 找出ztree节点的name
        //在JS中，lastIndexOf负责搜索特定字符（串），并返回它的位
        var lastIndex = departmentName.lastIndexOf("[");
        departmentName = treeNode.departmentName.substring(0, lastIndex);
        $("#tableUserAll").bootstrapTable('destroy');//destroy  销毁
        tableInfo(treeNode.id);//tableInfo  定义表信息；表类型
        $("#departmentAll").html(departmentName);
    };

    var userId;

    function tableInfo(id) {
        userId = id;
        $("#tableUserAll").bootstrapTable({
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentUserById?id=" + id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'userId', // 要排序的字段
            singleSelect: true, //开启单选
            sortOrder: 'asc', // 排序规则
            columns: [	//列参数
                {checkbox: true},	//复选框
                {field: "userName", title: "名字", align: 'center'},
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        });
    }

    function userRoleXuanZe() {
        var name = $('#tableUserAll').bootstrapTable('getSelections');
        $("#approvalName2").val(name[0].userName);
        $("#myModal2").modal("hide");
    }


    //添加采购申请管理提交申请
    function addProcurement() {
        $.ajax({
            url: "${pageContext.request.contextPath}/ProcurementController/addProcurement", //要处理的页面
            data: $('#addProcurement').serialize(), //要传过去的数据
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function (data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if (data) {
                    alert("采购申请添加成功");
                    document.getElementById("addProcurement").reset();
                    window.location.reload();
                } else {
                    alert("采购申请添加失败");
                    document.getElementById("addProcurement").reset();
                }
            }
        });
    }

    //添加采购申请管理保存草稿
    function addBaoCunProcurement() {
        $.ajax({
            url: "${pageContext.request.contextPath}/ProcurementController/addBaoCunProcurement", //要处理的页面
            data: $('#addProcurement').serialize(), //要传过去的数据
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function (data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if (data) {
                    alert("采购申请管理保存草稿成功");
                    document.getElementById("addProcurement").reset();
                    window.location.reload();
                } else {
                    alert("采购申请管理保存草稿失败");
                    document.getElementById("addProcurement").reset();
                }
            }
        });
    }
    /*------------------采购申请管理添加------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------采购申请管理详情------------------ --------------------分割线-------------------开始------------------------------*/

    //用户详情模态框展示
    document.getElementById("ProcurementAllByIdMyModal").reset();
    function ProcurementAllByIdMyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/ProcurementController/procurementAllById',
            success: function (data) {
                //查看回显
                $("#applyNum3").val(data.applyNum);
                $("#applyTime3").val(data.applyTime);
                $("#applyName3").val(data.applyName);
                $("#approvalName3").val(data.approvalName);
                $("#comment3").val(data.comment);
            }
        })
        //借调信息
        goodsMessageAll();
        //转岗信息
        goodSapprovalMessageAll();

    }

    //采购物品
    function goodsMessageAll() {
        $("#goodsMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#goodsMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/goodsMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "物品名称",
                    field: 'goodsName',
                    align: 'center' // 居中显示
                }, {
                    title: "申请数量",
                    field: 'goodsAmount',
                    align: 'center' // 居中显示
                }, {
                    title: "物品类型",
                    field: 'goodsType',
                    align: 'center' // 居中显示
                },
                {
                    title: "计量单位",
                    field: 'goodsUnit',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    //转岗信息
    function goodSapprovalMessageAll() {
        $("#goodSapprovalMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#goodSapprovalMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/goodSapprovalMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "审批人",
                    field: 'approvalName',
                    align: 'center' // 居中显示
                }, {
                    title: "审批时间",
                    field: 'approvalTime',
                    align: 'center' // 居中显示
                }, {
                    title: "审批结果",
                    field: 'approvalResult',
                    align: 'center' // 居中显示
                },{
                    title: "审批意见",
                    field: 'approvalOpinion',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    /*------------------采购申请管理详情------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------采购申请管理修改------------------ --------------------分割线-------------------开始------------------------------*/
    //采购申请管理修改
    function ProcurementUpdateMyModal(id) {
        $("#myModal4").modal("show")
        $("#Procurementid").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/ProcurementController/procurementAllById',
            success: function (data) {
                //查看回显
                $("#applyNum4").val(data.applyNum);
                $("#applyTime4").val(data.applyTime);
                $("#applyName4").val(data.applyName);
                $("#approvalName4").val(data.approvalName);
                $("#comment4").val(data.comment);
            }
        })
        //借调信息
        goodsMessageAll2();
        //转岗信息
        goodSapprovalMessageAll2();


    }
    //采购物品
    function goodsMessageAll2() {
        $("#goodsMessageAlltable2").bootstrapTable('destroy');
        var id = $("#Procurementid").val();
        $("#goodsMessageAlltable2").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/goodsMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "物品名称",
                    field: 'goodsName',
                    align: 'center' // 居中显示
                }, {
                    title: "申请数量",
                    field: 'goodsAmount',
                    align: 'center' // 居中显示
                }, {
                    title: "物品类型",
                    field: 'goodsType',
                    align: 'center' // 居中显示
                },
                {
                    title: "计量单位",
                    field: 'goodsUnit',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    //转岗信息
    function goodSapprovalMessageAll2() {
        $("#goodSapprovalMessageAlltable2").bootstrapTable('destroy');
        var id = $("#Procurementid").val();
        $("#goodSapprovalMessageAlltable2").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/goodSapprovalMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "审批人",
                    field: 'approvalName',
                    align: 'center' // 居中显示
                }, {
                    title: "审批时间",
                    field: 'approvalTime',
                    align: 'center' // 居中显示
                }, {
                    title: "审批结果",
                    field: 'approvalResult',
                    align: 'center' // 居中显示
                },{
                    title: "审批意见",
                    field: 'approvalOpinion',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }

    //根据id查询角色回显到页面
    $("#approvalName4").blur(function () {
        $("#myModal5").modal("show");
        $.ajax({
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentUserAll",
            type: "post",
            dateType: "json",
            success: function (data) {//成功
                console.log(data)
                /*ztree的初始化方法需要三个参数     1.获得基板对象  2.配置文件 3.节点信息  */
                var tree = $.fn.zTree.init($("#treeDemo2"), setting2, data);
            },
            error: function (data) {
                alert("对不起，操作有误");
            }
        })
    });

    var mid;//函数
    //配置信息
    var setting2 = {

        async: {
            enable: true //是否开启异步加载
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "dId"
            },
            key: {
                name: "departmentName"
            }
        },

        callback: {
            befoureClick: befourClickMethod2,  //单机节点之前的回调函数
            onClick: zTreeOnClick2,//用于捕获节点被点击的事件回调函数
        }
    };

    function befourClickMethod2() {//单机节点之前的回调函数
    }


    function zTreeOnClick2(event, treeId, treeNode) {//用于捕获节点被点击的事件回调函数
        var departmentName = treeNode.departmentName;//var departmentName 树名  treeNode.departmentName 找出ztree节点的name
        //在JS中，lastIndexOf负责搜索特定字符（串），并返回它的位
        var lastIndex = departmentName.lastIndexOf("[");
        departmentName = treeNode.departmentName.substring(0, lastIndex);
        $("#tableUserAll2").bootstrapTable('destroy');//destroy  销毁
        tableInfo2(treeNode.id);//tableInfo  定义表信息；表类型
        $("#departmentAll2").html(departmentName);
    };

    var userId;

    function tableInfo2(id) {
        userId = id;
        $("#tableUserAll2").bootstrapTable({
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentUserById?id=" + id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'userId', // 要排序的字段
            singleSelect: true, //开启单选
            sortOrder: 'asc', // 排序规则
            columns: [	//列参数
                {checkbox: true},	//复选框
                {field: "userName", title: "名字", align: 'center'},
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        });
    }

    function userRoleXuanZe2() {
        var name = $('#tableUserAll2').bootstrapTable('getSelections');
        $("#approvalName4").val(name[0].userName);
        $("#myModal5").modal("hide");
    }


    //编辑采购申请管理
    function procurementUpdate() {
        var id = $("#Procurementid").val();
        var approvalName = $("#approvalName4").val();
        var comment = $("#comment4").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/ProcurementController/procurementUpdate", //要处理的页面
            data: {id:id,approvalName:approvalName,comment:comment}, //要传过去的数据$('#addInfrastructure').serialize()
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if(data) {
                    alert("修改成功");
                    document.getElementById("procurementUpdate").reset();
                    window.location.reload();
                } else {
                    alert("修改失败");
                }
            }
        });
    }

    /*------------------采购申请管理修改------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------采购申请管理撤回------------------ --------------------分割线-------------------开始------------------------------*/
    //采购申请管理撤回
    function ProcurementCheHuiMyModal(id) {
        $("#id").val(id);
        if (window.confirm("是否确认撤回采购申请?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/ProcurementController/procurementCheHui?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("采购申请已撤回！！")
                        window.location.reload();
                    } else {
                        alert("撤回失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------采购申请管理撤回------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------采购申请管理物品信息添加------------------ --------------------分割线-------------------开始------------------------------*/
    //采购申请管理物品信息添加
    function GoodsAddMyModal(id) {
        $("#GoodsAddMyModalid").val(id);
        $("#myModal6").modal("show");
        $("#goodsExpand").empty();





    }


    function goodsExpand() {
        var goodsExpand = $("#goodsExpand");
        var div = " <div style=\"width: 600px;margin-left: 20px\">\n" +
            "\n" +
            "                                    <hr class=\"layui-bg-blue\"></hr>\n" +
            "                                </div><div class=\"layui-row\">\n" +
            "                                    <div class=\"layui-inline\">\n" +
            "                                        <label class=\"layui-form-label\" style=\"width:100px;\">物品名称:</label>\n" +
            "                                        <div class=\"layui-input-inline\">\n" +
            "                                            <input class=\"layui-input\" type=\"text\" placeholder=\"物品名称如:(A4纸,签字笔...)\"\n" +
            "                                                   id=\"goodsName6\" name=\"goodsName\"\n" +
            "                                                   autocomplete=\"off\"/>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <div class=\"layui-inline\">\n" +
            "                                        <label class=\"layui-form-label\" style=\"width:100px;\">物品类型:</label>\n" +
            "                                        <div class=\"layui-input-inline\">\n" +
            "                                            <input class=\"layui-input\" type=\"text\" placeholder=\"物品类型如:(办公用品...)\"\n" +
            "                                                   id=\"goodsType6\" name=\"goodsType\" autocomplete=\"off\"/>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <div class=\"layui-inline\">\n" +
            "                                        <label class=\"layui-form-label\" style=\"width:100px;\">计量单位:</label>\n" +
            "                                        <div class=\"layui-input-inline\">\n" +
            "                                            <input class=\"layui-input\" type=\"text\" placeholder=\"计量单位如:(盒,箱,台...)\"\n" +
            "                                                   id=\"goodsUnit6\" name=\"goodsUnit\" autocomplete=\"off\"/>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <div class=\"layui-inline\">\n" +
            "                                        <label class=\"layui-form-label\" style=\"width:100px;\">物品数量:</label>\n" +
            "                                        <div class=\"layui-input-inline\">\n" +
            "                                            <input class=\"layui-input\" type=\"text\" placeholder=\"物品数量如:(1,2,3...)\"\n" +
            "                                                   id=\"goodsAmount6\" name=\"goodsAmount\" autocomplete=\"off\"/>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                </div>";
        goodsExpand.append(div);
    }

    //采购申请管理物品信息添加
    function goodsAdd() {
        var  procurementId = $("#GoodsAddMyModalid").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/ProcurementController/procurementAndGoods?procurementId="+procurementId, //要处理的页面
            data: $('#procurementAndGoods').serialize(), //要传过去的数据
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function (data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if (data) {
                    alert("采购物品信息添加成功");
                    document.getElementById("procurementAndGoods").reset();
                    window.location.reload();
                } else {
                    alert("采购物品信息添加失败");
                    document.getElementById("procurementAndGoods").reset();
                }
            }
        });
    }


    /*------------------采购申请管理物品信息添加------------------ --------------------分割线-------------------结束------------------------------*/


</script>
<input type="hidden" id="id">
</body>
</html>
