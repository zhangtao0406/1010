<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
       培训执行
    --%>
    <meta charset="utf-8">
    <title>培训执行</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link type="text/css" href="/index/css/bootstrap-table.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/index/css/build.css">
    <link rel="stylesheet" href="/index/layui/css/layui.css">
    <!--引入jquery-->
    <script src="${pageContext.request.contextPath }/index/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!--引入bootstrap.js-->
    <script src="${pageContext.request.contextPath }/index/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table-zh-CN.js"></script>
    <script src="/index/layui/layui.js"></script>


</head>
<body>

<!-- ----------------------------以上培训详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel3">培训管理:</h4>
                </div>
                <form class="layui-form" style="width:680px; margin-left: 110px" enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>任务信息</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">任务编号:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="任务编号自动生成"
                                                       readonly="readonly" id="trainNum4" name="trainNum"  autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">培训标题:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入培训标题"
                                                       id="trainName4" name="trainName"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">发布时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认当前时间"
                                                           readonly="readonly" id="publishTime4" name="publishTime" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">完成时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="achieveTime4" name="achieveTime"  readonly="readonly"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">发布人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认当前登录人"
                                                           id="userName4" name="userName"  readonly="readonly" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">培训部门:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="请输入培训部门"
                                                           id="departmentName4" name="departmentName"  readonly="readonly"
                                                           autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 100px">任务内容:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="trainContent4"  readonly="readonly" name="trainContent" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 100px">备注:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment4" name="comment"  readonly="readonly" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 100px">附件名称:</label>
                                                <div class="layui-input-inline" id="accessoryName4">
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
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上培训详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上培训进度的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel4">培训进度:</h4>
                </div>
                <form class="layui-form" style="width:680px; margin-left: 110px" >
                    <input type="hidden" id="trainId">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>进度情况</legend>
                            <div class="layui-field-box">
                                <table id="trainPlanAlltable" class="table-striped table-hover"></table>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="peiXunZhiXing()" class="btn btn-primary">执行</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上培训进度的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上培训进度详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel5">培训进度详情:</h4>
                </div>

                <form class="layui-form" style="width:680px; margin-left: 110px" >
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>进度详情</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">反馈信息:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="feedbackContent5"  readonly="readonly" name="feedbackContent" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">打回意见:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="repulseOpinion5" name="repulseOpinion"  readonly="readonly" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
<!-- ----------------------------以上培训进度详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上培训进度的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel6">培训进度:</h4>
                </div>
                <form class="layui-form" style="width:680px; margin-left: 110px" >
                    <input type="hidden" id="trainId2">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>进度情况</legend>
                            <div class="layui-field-box">
                                <table id="trainPlanAlltable6" class="table-striped table-hover"></table>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="peiXunFanKui()" class="btn btn-primary">反馈</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上培训进度的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上培训进度详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel7">培训进度详情:</h4>
                </div>

                <form class="layui-form" style="width:680px; margin-left: 110px" >
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>进度详情</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">反馈信息:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="feedbackContent7"  readonly="readonly" name="feedbackContent" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">打回意见:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="repulseOpinion7" name="repulseOpinion"  readonly="readonly" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
<!-- ----------------------------以上培训进度详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上培训模糊查询-----------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="trainLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 120px">

                </div>
                <div class="form-group" style="margin-left: 120px">
                    <label for="trainNum1">任务编号:</label>
                    <input type="text" class="form-control" name="trainNum" id="trainNum1" placeholder="任务编号"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group" style="margin-left: 80px">
                    <label for="trainName1">培训题目:</label>
                    <input type="text" class="form-control" name="trainName" id="trainName1" placeholder="培训题目"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group">
                    <label for="trainStatus1" style="margin-left: 80px">培训状态:</label>
                    <select class="form-control" name="trainStatus" id="trainStatus1"
                            style="width: 200px;margin-left: 20px">
                        <option value="">请选择</option>
                        <option value="1">已驳回</option>
                        <option value="2">待反馈</option>
                        <option value="3">已反馈</option>
                    </select>
                </div>
                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="trainLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上培训模糊查询-----------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="trainTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#trainLikeForm").get(0).reset();
        $("#trainTable").bootstrapTable('destroy')
        trainAll();
    }

    //提交模糊查询
    function trainLike() {
        $.ajax({
            type: "post",
            data: $('#trainLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/TrainController/TrainingPerformedAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#trainTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        trainAll();
    });

    /*------------------以上所有任务的table表格-------------------------分割线-------------------开始------------------------------*/
    function trainAll() {
        $("#trainTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/TrainController/TrainingPerformedAll",
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
                    title: "任务编号",
                    field: 'trainNum',
                    align: 'center' // 居中显示
                }, {
                    title: "培训标题",
                    field: 'trainName',
                    align: 'center' // 居中显示
                },{
                    title: "发布时间",
                    field: 'publishTime',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'trainStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.trainStatus == 1) {
                            return "已驳回";
                        }
                        if (row.trainStatus == 2) {
                            return "待反馈";
                        }
                        if (row.trainStatus == 3) {
                            return "已反馈";
                        }
                    }
                }, {
                    title: "任务操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        if (row.trainStatus == 1) {
                            return "<a class='btn btn-info' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>&nbsp;" +
                                    "<a class='btn btn-success' onclick='peiXunZhiXingMyModal(" + row.id + ")' role='button' >培训执行</a>&nbsp;";
                        }else if (row.trainStatus == 2) {
                            return "<a class='btn btn-info' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>&nbsp;" +
                                    "<a class='btn btn-warning' onclick='peiXunFanKuiMyModal(" + row.id + ")' role='button' >培训反馈</a>&nbsp;";
                        }else if (row.trainStatus == 3) {
                            return "<a class='btn btn-info' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>";
                        }
                    },
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

    /*------------------以上所有任务的table表格-------------------------分割线-------------------结束------------------------------*/

    /*------------------以上培训详情-----------------------------------分割线-------------------开始------------------------------*/
    var num = 0;
    function allTrainMyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/TrainController/trainAllById',
            success: function (data) {
                //查看回显
                $("#trainNum4").val(data.trainNum);
                $("#trainName4").val(data.trainName);
                $("#publishTime4").val(data.publishTime);
                $("#achieveTime4").val(data.achieveTime);
                $("#userName4").val(data.userName);
                $("#departmentName4").val(data.departmentName);
                $("#trainContent4").val(data.trainContent);
                $("#comment4").val(data.comment);

            }
        })

        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/TrainController/trainAndAccessoryAllById',
            success: function (data) {
                $("#accessoryName4").empty();
                for (var a = 0; a < data.length; a++) {
                    $("#accessoryName4").append("<input style='margin-top:5px' type=\"text\" id=\"accessoryName4"+num+"\" readonly=\"readonly\" name=\"accessoryName\" value="+data[a].accessoryName+" placeholder=\"上传附件\" class=\"layui-input\">")
                    num++;
                }
            }
        })
    }


    /*------------------以上培训详情-----------------------------------分割线-------------------结束------------------------------*/
    /*------------------以上进度跟踪培训执行-----------------------------------分割线-------------------开始------------------------------*/

    function peiXunZhiXingMyModal(id) {
        $("#myModal4").modal("show");
        $("#trainId").val(id);
        $("#trainPlanAlltable").bootstrapTable('destroy');
        $("#trainPlanAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/TrainController/TrainPlanById?id="+id,
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
                    title: "接受部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "反馈状态",
                    field: 'feedbackStatus',
                    align: 'center' ,// 居中显示
                    formatter: function (value, row, index) {
                        if (row.feedbackStatus == 0) {
                            return "未提交";
                        }
                        if (row.feedbackStatus == 1) {
                            return "已提交";
                        }
                        if (row.feedbackStatus == 2) {
                            return "已打回";
                        }
                    }
                }, {
                    title: "反馈内容",
                    field: 'id',
                    formatter: function (value, row, index) {
                        if (row.feedbackStatus == 0) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal(" + row.id + ")' role='button' >详情</a>";
                        }else if (row.feedbackStatus == 1) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal(" + row.id + ")' role='button' >详情</a>";
                        }else if (row.feedbackStatus == 2) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal(" + row.id + ")' role='button' >详情</a>";
                        }
                    },
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

    var num = 0;
    //进度情况详情
    function trainPlanMyModal(id) {
        $("#myModal5").modal("show");
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/TrainController/TrainPlanMessageById',
            success: function (data) {
                //查看回显
                $("#feedbackContent5").val(data.feedbackContent);
                $("#repulseOpinion5").val(data.repulseOpinion);
                $("#accessoryName5").val(data.accessoryName);
            }
        })

    }
    
    //培训执行
    function peiXunZhiXing() {
        var id = $("#trainId").val();
        if (window.confirm("是否确认执行?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/peiXunZhiXing?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("培训已执行！！")
                        window.location.reload();
                    } else {
                        alert("执行失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }


    }

    /*------------------以上进度跟踪培训执行-----------------------------------分割线-------------------结束------------------------------*/


    /*------------------以上进度跟踪培训反馈-----------------------------------分割线-------------------开始------------------------------*/

    function peiXunFanKuiMyModal(id) {
        $("#myModal6").modal("show");
        $("#trainId2").val(id);
        $("#trainPlanAlltable6").bootstrapTable('destroy');
        $("#trainPlanAlltable6").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/TrainController/TrainPlanById?id="+id,
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
                    title: "接受部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "反馈状态",
                    field: 'feedbackStatus',
                    align: 'center' ,// 居中显示
                    formatter: function (value, row, index) {
                        if (row.feedbackStatus == 0) {
                            return "未提交";
                        }
                        if (row.feedbackStatus == 1) {
                            return "已提交";
                        }
                        if (row.feedbackStatus == 2) {
                            return "已打回";
                        }
                    }
                }, {
                    title: "反馈内容",
                    field: 'id',
                    formatter: function (value, row, index) {
                        if (row.feedbackStatus == 0) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal1(" + row.id + ")' role='button' >详情</a>";
                        }else if (row.feedbackStatus == 1) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal1(" + row.id + ")' role='button' >详情</a>";
                        }else if (row.feedbackStatus == 2) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal1(" + row.id + ")' role='button' >详情</a>";
                        }
                    },
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



    var num = 0;
    //进度情况详情
    function trainPlanMyModal1(id) {
        $("#myModal7").modal("show");
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/TrainController/TrainPlanMessageById',
            success: function (data) {
                //查看回显
                $("#feedbackContent7").val(data.feedbackContent);
                $("#repulseOpinion7").val(data.repulseOpinion);
                $("#accessoryName7").val(data.accessoryName);
            }
        })

    }



    //培训反馈
    function peiXunFanKui() {
        var id = $("#trainId2").val();
        if (window.confirm("是否确认反馈?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/peiXunFanKui?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("培训已反馈！！")
                        window.location.reload();
                    } else {
                        alert("反馈失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
/*------------------以上进度跟踪培训反馈-----------------------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
