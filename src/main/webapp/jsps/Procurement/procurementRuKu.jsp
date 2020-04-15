<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        采购入库管理
    --%>
    <meta charset="utf-8">
    <title>采购入库管理</title>
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

<!-- ----------------------------以上采购申请管理模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="ProcurementLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 80px">

                </div>
                <div class="form-group" style="margin-left: 180px">
                    <label for="applyNum1">采购申请单编号:</label>
                    <input type="text" class="form-control" name="applyNum" id="applyNum1" placeholder="采购申请单编号"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 100px">
                    <label for="procurementStatus1">培训状态:</label>
                    <select class="form-control" name="procurementStatus" id="procurementStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="2">待入库</option>
                        <option value="3">已完成</option>
                    </select>
                </div>

                <div class="form-group" style="margin-left:80px">
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
            url: "${pageContext.request.contextPath}/ProcurementController/findProcurementRuKuAll",
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

    });

    /*------------------以上所有以上采购申请管理的table表格-------------------------分割线-------------------开始------------------------------*/
    function InfrastructureAll() {
        $("#ProcurementTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/ProcurementController/findProcurementRuKuAll",
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
                    title: "入库人",
                    field: 'rukuName',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'procurementStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.procurementStatus == 2) {
                            return "待入库";
                        }
                        if (row.procurementStatus == 3) {
                            return "已完成";
                        }
                    }
                }, {
                    title: "采购申请管理操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.procurementStatus == 2) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>&nbsp;" +
                                "<a class='btn btn-success' onclick='ProcurementRuKuMyModal(" + row.id + ")' role='button' >采购入库</a>";
                        } else if (row.procurementStatus == 3) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看采购</a>";
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
    /*------------------采购入库------------------ --------------------分割线-------------------开始------------------------------*/
    //采购入库
    function ProcurementRuKuMyModal(id) {
        if (window.confirm("是否对本次审批商品入库?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/ProcurementController/ProcurementRuKu?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data > 0) {
                        alert("商品入库成功！！")
                        window.location.reload();
                    } else {
                        alert("商品入库失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------采购入库------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
