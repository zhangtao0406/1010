<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        部门考勤统计
    --%>
    <meta charset="utf-8">
    <title>部门考勤统计</title>
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

<!-- ----------------------------以上考勤统计管理详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">考勤数据导入详情:</h4>
                </div>
                <form class="layui-form" id="CheckingById" style="width:750px; margin-left: 60px"
                      enctype="multipart/form-data" enctype="multipart/form-data">
                    <input type="hidden" id="checkingid">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>考勤信息详情</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">年度:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="年度如:(2015，2016...)"
                                                       id="year2" name="year"  readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">月份:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="月份如:(一月，二月...)"
                                                       readonly="readonly"   id="month2" name="month" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">当前操作人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认系统自动生成当前操作人"
                                                           readonly="readonly"  id="userName2" name="userName" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">操作时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认系统自动生成当前时间"
                                                           readonly="readonly" id="operationTime2" name="operationTime"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">选择导入文件:</label>
                                                <div class="layui-input-inline" >
                                                    <input type="text" id="fileName2" name="fileName"  readonly="readonly"   class="layui-input" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">当前部门:</label>
                                                <div class="layui-input-inline" >
                                                    <input type="text" id="departmentName2" name="departmentName"  readonly="readonly"   class="layui-input" >
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
                                                              readonly="readonly"   lay-verify="required" placeholder="备注详情" class="layui-textarea"></textarea>
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
                            <legend>考勤统计表</legend>
                            <div class="layui-field-box">
                                <table id="checkingStatisticsMessageAlltable2" class="table-striped table-hover"></table>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上考勤统计管理详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上考勤统计管理统计的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">考勤数据导入:</h4>
                </div>
                <form class="layui-form" id="updateTongJiChecking" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data" enctype="multipart/form-data">
                    <input type="hidden" id="checkingid2">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>导入考勤信息</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">年度:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="年度如:(2015，2016...)"
                                                       id="year3" name="year"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">月份:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="月份如:(一月，二月...)"
                                                       id="month3" name="month" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">当前操作人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认系统自动生成当前操作人"
                                                           readonly="readonly"  id="userName3" name="userName" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">操作时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认系统自动生成当前时间"
                                                           readonly="readonly" id="operationTime3" name="operationTime"   autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">当前部门:</label>
                                                <div class="layui-input-inline" >
                                                    <input type="text" id="departmentName3" name="departmentName"  readonly="readonly"   class="layui-input" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">审 批 人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="请选择审批人"
                                                            id="approvalName3" name="approvalName" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">备注详情:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment3" name="comment" required
                                                              lay-verify="required" placeholder="备注详情" class="layui-textarea"></textarea>
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
                            <legend>考勤统计表</legend>
                            <div class="layui-field-box">
                                <table id="checkingStatisticsMessageAlltable3" class="table-striped table-hover"></table>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="CheckingTongji()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上考勤统计管理统计的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上采购申请管理选择审批人的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" style="width: 800px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel3">部门用户选择</h4>
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

<!-- ----------------------------以上考勤数据导入模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="CheckingLikeForm">
                <div class="form-group" style="margin-left: 180px">
                </div>
                <div class="form-group" style="margin-left: 160px">
                    <label for="year1">考勤年度:</label>
                    <input type="text" class="form-control" name="year" id="year1" placeholder="年  度"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 50px">
                    <label for="checkingStatus1">考勤状态:</label>
                    <select class="form-control" name="checkingStatus" id="checkingStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="0">待统计</option>
                        <option value="1">已统计</option>
                        <option value="4">已撤回</option>
                    </select>
                </div>
                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="CheckingLike()" class="btn btn-primary">提交</button>
                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上考勤数据导入模糊查询---------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="CheckingTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#CheckingLikeForm").get(0).reset();
        $("#CheckingTable").bootstrapTable('destroy')
        CheckingAll();
    }

    //提交模糊查询
    function CheckingLike() {
        $.ajax({
            type: "post",
            data: $('#CheckingLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/CheckingController/findCheckingTongJiAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#CheckingTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        CheckingAll();
    });

    /*------------------以上考勤数据导入的table表格-------------------------分割线-------------------开始------------------------------*/
    function CheckingAll() {
        $("#CheckingTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/CheckingController/findCheckingTongJiAll",
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
                    title: "年度",
                    field: 'year',
                    align: 'center' // 居中显示
                }, {
                    title: "月份",
                    field: 'month',
                    align: 'center' // 居中显示
                }, {
                    title: "部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                },{
                    title: "操作时间",
                    field: 'operationTime',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'checkingStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.checkingStatus == 0) {
                            return "待统计";
                        }
                        if (row.checkingStatus == 1) {
                            return "已统计";
                        }
                        if (row.checkingStatus == 4) {
                            return "已撤回";
                        }

                    }
                }, {
                    title: "操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.checkingStatus == 0) {
                            return "<a class='btn btn-info' onclick='CheckingAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;"+
                                    "<a class='btn btn-success' onclick='CheckingTongJiMyModal(" + row.id + ")' role='button' >统计</a>";
                        } else if (row.checkingStatus == 1) {
                            return "<a class='btn btn-info' onclick='CheckingAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;"+
                                    "<a class='btn btn-danger' onclick='CheckingCheHuiMyModal(" + row.id + ")' role='button' >撤回</a>";
                        } else if (row.checkingStatus == 4) {
                            return "<a class='btn btn-info' onclick='CheckingAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
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

    /*------------------以上考勤数据导入的table表格-------------------------分割线-------------------结束------------------------------*/
 /*------------------以上考勤数据导入详情-----------------------------------分割线-------------------开始------------------------------*/
    function CheckingAllByIdMyModal(id) {
        $("#myModal1").modal("show");
        $("#checkingid").val(id);
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/CheckingController/CheckingById?id=" + id,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    $("#year2").val(data.year)
                    $("#month2").val(data.month)
                    $("#userName2").val(data.userName)
                    $("#operationTime2").val(data.operationTime)
                    $("#comment2").val(data.comment)
                    $("#fileName2").val(data.fileName)
                    $("#departmentName2").val(data.departmentName)
                } else {
                    alert("查询失败")
                }
            }
        })
        checkingStatisticsMessageAlltable2();
    }

    //考勤统计表
    function checkingStatisticsMessageAlltable2() {
        $("#checkingStatisticsMessageAlltable2").bootstrapTable('destroy');
        var id =  $("#checkingid").val();

        $("#checkingStatisticsMessageAlltable2").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/CheckingController/checkingStatisticsMessageAllById?id="+id,
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
                    title: "编号",
                    field: 'checkingNum',
                    align: 'center' // 居中显示
                }, {
                    title: "姓名",
                    field: 'checkingName',
                    align: 'center' // 居中显示
                }, {
                    title: "岗位",
                    field: 'post',
                    align: 'center' // 居中显示
                },{
                    title: "出勤",
                    field: 'turnWork',
                    align: 'center' // 居中显示
                },  {
                    title: "事假",
                    field: 'casualLeave',
                    align: 'center' // 居中显示
                },  {
                    title: "病假",
                    field: 'sickLeave',
                    align: 'center' // 居中显示
                },  {
                    title: "旷工",
                    field: 'absenteeism',
                    align: 'center' // 居中显示
                },  {
                    title: "婚假",
                    field: 'marriageLeave',
                    align: 'center' // 居中显示
                }, {
                    title: "产假",
                    field: 'maternityLeave',
                    align: 'center' // 居中显示
                }, {
                    title: "迟到/早退",
                    field: 'beLate',
                    align: 'center' // 居中显示
                },{
                    title: "备注",
                    field: 'remark',
                    align: 'center' // 居中显示
                },{
                    title: "签字",
                    field: 'signature',
                    align: 'center' // 居中显示
                },
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    /*------------------以上考勤数据导入详情-----------------------------------分割线-------------------结束------------------------------*/

    /*------------------以上考勤数据导入统计详情-----------------------------------分割线-------------------开始------------------------------*/
    function CheckingTongJiMyModal(id) {
        $("#myModal2").modal("show");
        $("#checkingid2").val(id);
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/CheckingController/CheckingById?id=" + id,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    $("#year3").val(data.year)
                    $("#month3").val(data.month)
                    $("#userName3").val(data.userName)
                    $("#operationTime3").val(data.operationTime)
                    $("#comment3").val(data.comment)
                    $("#approvalName3").val(data.approvalName)
                    $("#departmentName3").val(data.departmentName)
                } else {
                    alert("查询失败")
                }
            }
        })
        checkingStatisticsMessageAlltable3();
    }

    //根据id查询角色回显到页面
    $("#approvalName3").blur(function () {
        $("#myModal3").modal("show");
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
        $("#approvalName3").val(name[0].userName);
        $("#myModal3").modal("hide");
    }


    //提交按钮
    function CheckingTongji() {
        var id = $("#checkingid2").val();
        var approvalName = $("#approvalName3").val();
        var comment = $("#comment3").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/CheckingController/updateTongJiChecking", //要处理的页面
            data: {id:id,approvalName:approvalName,comment:comment}, //要传过去的数据$('#addInfrastructure').serialize()
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if(data) {
                    alert("统计成功");
                    document.getElementById("updateTongJiChecking").reset();
                    window.location.reload();
                } else {
                    alert("统计失败");
                }
            }
        });
    }


    //考勤统计表
    function checkingStatisticsMessageAlltable3() {
        $("#checkingStatisticsMessageAlltable3").bootstrapTable('destroy');
        var id =  $("#checkingid2").val();

        $("#checkingStatisticsMessageAlltable3").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/CheckingController/checkingStatisticsMessageAllById?id="+id,
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
                    title: "编号",
                    field: 'checkingNum',
                    align: 'center' // 居中显示
                }, {
                    title: "姓名",
                    field: 'checkingName',
                    align: 'center' // 居中显示
                }, {
                    title: "岗位",
                    field: 'post',
                    align: 'center' // 居中显示
                },{
                    title: "出勤",
                    field: 'turnWork',
                    align: 'center' // 居中显示
                },  {
                    title: "事假",
                    field: 'casualLeave',
                    align: 'center' // 居中显示
                },  {
                    title: "病假",
                    field: 'sickLeave',
                    align: 'center' // 居中显示
                },  {
                    title: "旷工",
                    field: 'absenteeism',
                    align: 'center' // 居中显示
                },  {
                    title: "婚假",
                    field: 'marriageLeave',
                    align: 'center' // 居中显示
                }, {
                    title: "产假",
                    field: 'maternityLeave',
                    align: 'center' // 居中显示
                }, {
                    title: "迟到/早退",
                    field: 'beLate',
                    align: 'center' // 居中显示
                },{
                    title: "备注",
                    field: 'remark',
                    align: 'center' // 居中显示
                },{
                    title: "签字",
                    field: 'signature',
                    align: 'center' // 居中显示
                },
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    /*------------------以上考勤数据导入统计详情-----------------------------------分割线-------------------结束------------------------------*/

    /*------------------采购申请管理撤回------------------ --------------------分割线-------------------开始------------------------------*/
    //考勤统计管理撤回
    function CheckingCheHuiMyModal(id) {
        $("#id").val(id);
        if (window.confirm("是否确认撤回考勤统计?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/CheckingController/checkingCheHui?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("考勤统计已撤回！！")
                        window.location.reload();
                    } else {
                        alert("撤回失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------采购申请管理撤回------------------ --------------------分割线-------------------结束------------------------------*/


</script>
<input type="hidden" id="id">
</body>
</html>
