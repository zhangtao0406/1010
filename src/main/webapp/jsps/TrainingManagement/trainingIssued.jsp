<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
       培训下达
    --%>
    <meta charset="utf-8">
    <title>培训下达</title>
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

<!-- ----------------------------以上培训添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">培训新增:</h4>
                </div>
                <form class="layui-form" id="addTrainAndAccessory" style="width:680px; margin-left: 110px" enctype="multipart/form-data">
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
                                                       readonly="readonly" id="trainNum2" name="trainNum" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">培训标题:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入培训标题"
                                                       id="trainName2" name="trainName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">发布时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="默认当前时间"
                                                           readonly="readonly" id="publishTime2" name="publishTime" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">完成时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="date"
                                                           id="achieveTime2" name="achieveTimeString"  autocomplete="off"/>
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
                                                           id="userName2" name="userName"  readonly="readonly" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:100px;">培训部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="departmentId1_ZG" name="departmentId" lay-verify=""
                                                                lay-filter="gname">
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 100px">任务内容:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="trainContent2" name="trainContent" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 100px">备注:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment2" name="comment" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 100px">添加附件:</label>
                                                <div class="layui-input-inline">
                                                    <input type="file" name="pictureFile" placeholder="上传附件" class="layui-input" multiple="multiple" >
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
                    <button type="button" onclick="addTrain()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上培训添加的模态框-------------------------分割线----------------------------------结束------------------ ------->

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
                    <button type="button" onclick="boHuiTrain()" class="btn btn-info">驳回</button>
                    <button type="button" onclick="banJieTrain()" class="btn btn-success">办结</button>
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
                    <div class="form-group" style="margin-left:10px;margin-top: 20px">
                        <button type="button" onclick="addJinDuTrainMyModal()" class="btn btn-primary">新增进度</button>
                    </div>
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
<!-- ----------------------------以上培训进度详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel6">新增进度任务:</h4>
                </div>

                <form class="layui-form" id="addJinDu" style="width:680px; margin-left: 110px" >
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>新增进度任务</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">反馈状态:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="默认未提交"
                                                       id="feedbackStatus" name="feedbackStatus"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">培训部门:</label>
                                            <div class="layui-input-inline">
                                                <div class="layui-input-inline" style="width: 190px">
                                                    <select id="jinDuDepartment" name="departmentId" lay-verify=""
                                                            lay-filter="gname">
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">反馈信息:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="feedbackContent6" name="feedbackContent" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md12">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width: 100px">打回意见:</label>
                                            <div class="layui-input-inline">
                                                <textarea style="width: 515px" id="repulseOpinion6" name="repulseOpinion" required lay-verify="required" class="layui-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="addJinDu()" class="btn btn-primary">添加进度</button>
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
                    <button type="button" onclick="addTrainMyModal()" class="btn btn-primary btn-lg">培训新增</button>
                </div>
                <div class="form-group" style="margin-left: 120px">
                    <label for="trainName1">培训标题:</label>
                    <input type="text" class="form-control" name="trainName" id="trainName1" placeholder="培训标题"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group" style="margin-left: 80px">
                    <label for="departmentName1">培训部门:</label>
                    <input type="text" class="form-control" name="departmentName" id="departmentName1" placeholder="培训部门"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group">
                    <label for="trainStatus1" style="margin-left: 80px">培训状态:</label>
                    <select class="form-control" name="trainStatus" id="trainStatus1"
                            style="width: 200px;margin-left: 20px">
                        <option value="">请选择</option>
                        <option value="0">已发布</option>
                        <option value="3">已反馈</option>
                        <option value="4">已完结</option>
                        <option value="5">已终止</option>
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
            url: "${pageContext.request.contextPath}/TrainController/findTrainAll",
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
            url: "${pageContext.request.contextPath}/TrainController/findTrainAll",
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
                    title: "培训部门",
                    field: 'departmentName',
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
                        if (row.trainStatus == 0) {
                            return "已发布";
                        }
                        if (row.trainStatus == 3) {
                            return "部分反馈";
                        }
                        if (row.trainStatus == 4) {
                            return "已完结";
                        }
                        if (row.trainStatus == 5) {
                            return "已终止";
                        }
                    }
                }, {
                    title: "任务操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        if (row.trainStatus == 0) {
                            return "<a class='btn btn-primary' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>&nbsp;" +
                                   "<a class='btn btn-success' onclick='jinDuGenZongMyModal(" + row.id + ")' role='button' >进度跟踪</a>&nbsp;" +
                                   "<a class='btn btn-info'  onclick='trainingToTerminate(" + row.id + ")' role='button' >培训终止</a>&nbsp;";
                        }else if (row.trainStatus == 3) {
                            return "<a class='btn btn-primary' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>&nbsp;" +
                                   "<a class='btn btn-success' onclick='jinDuGenZongMyModal(" + row.id + ")' role='button' >进度跟踪</a>&nbsp;" +
                                   "<a class='btn btn-info'  onclick='trainingToTerminate(" + row.id + ")' role='button' >培训终止</a>&nbsp;";
                        }else if (row.trainStatus == 4) {
                            return "<a class='btn btn-primary' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>;";
                        }else if (row.trainStatus == 5) {
                            return "<a class='btn btn-primary' onclick='allTrainMyModal(" + row.id + ")' role='button' >培训详情</a>;";
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
    /*------------------以上任务添加-----------------------------------分割线-------------------开始------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });
    //添加角色模态框展示
    function addTrainMyModal() {
        $("#myModal1").modal("show");
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId1_ZG").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    };
                    $("#departmentId1_ZG").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }

    //添加培训
    function addTrain() {
        var achieveTimeString = $("#achieveTime2").val();
        var form = new FormData(document.getElementById("addTrainAndAccessory"));
            $.ajax({
                url:"${pageContext.request.contextPath}/TrainController/addTrainAndAccessory", //要处理的页面
                data: form, //要传过去的数据$('#addTrainAndAccessory').serialize()
                type: "POST", //提交方式
                processData: false,
                contentType: false,
                dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
                success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                    if(data) {
                        alert("添加成功");
                        document.getElementById("addTrainAndAccessory").reset();
                        window.location.reload();
                    } else {
                        alert("添加失败");
                    }
                }
            });
    }

    /*------------------以上任务添加-----------------------------------分割线-------------------结束------------------------------*/

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
    //驳回
    function boHuiTrain() {
        var id = $("#id").val();
        if (window.confirm("是否确认驳回培训?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/boHuiTrain?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("培训已驳回！！")
                        window.location.reload();
                    } else {
                        alert("驳回失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    //办结
    function banJieTrain() {
        var id = $("#id").val();
        if (window.confirm("是否确认办结培训?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/banJieTrain?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("培训已办结！！")
                        window.location.reload();
                    } else {
                        alert("办结失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }


    /*------------------以上培训详情-----------------------------------分割线-------------------结束------------------------------*/
    /*------------------以上进度跟踪-----------------------------------分割线-------------------开始------------------------------*/
   function addJinDuTrainMyModal() {
       $("#myModal6").modal("show");
       $("#id").val(id);
       var id = $("#id").val();
       $.ajax({
           type: "post",
           url: "${pageContext.request.contextPath}/UserController/departmentAll",
           dataType: "json",
           success: function (data) { // ajax提交成功调用success方法
               if (data.length > 0) {
                   $("#jinDuDepartment").empty();
                   var options = "<option value='0' checked>-请选择-</option>";
                   for (var i = 0; i < data.length; i++) {
                       options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                   };
                   $("#jinDuDepartment").append(options);
                   layui.form.render('select');
               } else {
                   alert("查询部门失败")
               }
           }
       })
   }
   //添加进度
    function addJinDu() {
        var id = $("#trainId").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/TrainController/addJinDu?trainId="+id,
            data: $('#addJinDu').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("进度任务添加成功！！")
                    $("#myModal6").modal("hide");
                    document.getElementById("addJinDu").reset();
                    jinDuGenZongMyModal(id);
                } else {
                    alert("进度任务添加失败（查看填写信息是否有误）！！")
                }
            }
        })
    }


    //进度详情展示teble表格
    function jinDuGenZongMyModal(id) {
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
                            return "<a class='btn btn-info' onclick='trainPlanMyModal(" + row.id + ")' role='button' >详情</a>&nbsp;"+
                                    "<a class='btn btn-success' onclick='jinDuTiJiao(" + row.id + ")' role='button' >提交</a>&nbsp;"+
                                    "<a class='btn btn-warning' onclick='jinDuDaHui(" + row.id + ")' role='button' >打回</a>";
                        }else if (row.feedbackStatus == 1) {
                            return "<a class='btn btn-info' onclick='trainPlanMyModal(" + row.id + ")' role='button' >详情</a>&nbsp;"+
                                "<a class='btn btn-warning' onclick='jinDuDaHui(" + row.id + ")' role='button' >打回</a>";
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

    //进度提交
    function jinDuTiJiao(id) {
        var trainId = $("#trainId").val();
        if (window.confirm("是否确认提交进度?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/jinDuTiJiao?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("提交成功！！");
                        jinDuGenZongMyModal(trainId);
                    } else {
                        alert("提交失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    //进度打回
    function jinDuDaHui(id) {
        var trainId = $("#trainId").val();
        if (window.confirm("是否确认打回进度?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/jinDuDaHui?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("进度打回成功！！")
                        jinDuGenZongMyModal(trainId);
                    } else {
                        alert("进度打回失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    var num = 0;
    //进度情况详情
    function trainPlanMyModal(id) {
        $("#myModal5").modal("show");
        $("#id").val(id);
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
    /*------------------以上进度跟踪-----------------------------------分割线-------------------结束------------------------------*/

    /*------------------以上终止详情-----------------------------------分割线-------------------开始------------------------------*/
    //终止
    function trainingToTerminate(id) {
        $("#id").val(id);
        if (window.confirm("是否确认终止培训?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/TrainController/trainingToTerminate?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("培训已终止！！")
                        window.location.reload();
                    } else {
                        alert("终止失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------以上终止详情-----------------------------------分割线-------------------结束------------------------------*/


</script>
<input type="hidden" id="id">
</body>
</html>
