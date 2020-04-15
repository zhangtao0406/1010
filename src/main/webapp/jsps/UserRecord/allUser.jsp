<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        正式人员管理
    --%>
    <meta charset="utf-8">
    <title>正式人员管理</title>
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

<!-- ----------------------------以上用户详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel2">人员档案管理</h4>
            </div>
            <form  id="UserRecordAllById" style="width:680px; margin-left: 110px">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>人员基本信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工姓名:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入员工姓名"
                                                   id="userName2" name="userName" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工性别:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入员工姓名"
                                                   id="gender2" name="gender"  readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">出生日期:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入出生日期"
                                                       id="birthday2" name="birthday" readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">员工年龄:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="根据出生日期自动计算"
                                                       id="age2" name="age"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件类型:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text"
                                                       id="userPapers2" name="userPapers"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件号码:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入证件号码"
                                                       id="certificateNumber2" name="certificateNumber" readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">最高学历:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入最高学历"
                                                       id="highestEducation2" name="highestEducation" readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">政治面貌:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入政治面貌"
                                                       id="politicsStatus2" name="politicsStatus" readonly="readonly" autocomplete="off"/>
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
                        <legend>人员部门信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">所属部门:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder=""
                                                   id="departmentName2" name="departmentName" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职务:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职务"
                                                   id="duty2" name="duty" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职称:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职称"
                                                   id="titles2" name="titles" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职级:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职级"
                                                   id="rank2" name="rank" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">入职时间:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" autocomplete="off"
                                                   id="createTime2" readonly="readonly" name="createTime"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工编号:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="员工编号自动生成"
                                                   id="userNum2" name="userNum" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>薪资及劳动保障信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">基本工资:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入基本工资"
                                                   id="basepay2" name="basepay" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">养老保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入养老保险"
                                                   id="oldInsurance2" name="oldInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">医疗保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入医疗保险"
                                                   id="medicalInsurance2" name="medicalInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">失业保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入失业保险"
                                                   id="unemploymentInsurance2" readonly="readonly" name="unemploymentInsurance"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">工伤保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入工伤保险"
                                                   id="workInsurance2" name="workInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">生育保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入生育保险"
                                                   id="accrueInsurance2" name="accrueInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">公积金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入公积金"
                                                   id="reservedFunds2" name="reservedFunds" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">企业年金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入企业年金"
                                                   id="enterpriseAnnuity2" name="enterpriseAnnuity" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>借调信息</legend>
                        <div class="layui-field-box">
                            <table id="secondMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>转岗信息</legend>
                        <div class="layui-field-box">
                            <table id="transferMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="addUserUserRecord()" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户详情的模态框-------------------------分割线----------------------------------结束------------------ ------->


<!-- ----------------------------以上用户的模糊查询-----------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="userLikeForm">
                <div style="width: 1600px;height: 60px">
                    <div class="form-group" style="margin-left: 200px">
                        <label for="userNum">员工编号:</label>
                        <input type="text" class="form-control" name="userNum" id="userNum" placeholder="员工编号"
                               style="width: 200px;margin-left: 20px">
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="userName">员工姓名:</label>
                        <input type="text" class="form-control" name="userName" id="userName"
                               placeholder="员工姓名"
                               style="width: 200px;margin-left: 20px">
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="departmentName">所属部门:</label>
                        <input type="text" class="form-control" name="departmentName" id="departmentName"
                               placeholder="所属部门名称"
                               style="width: 200px;margin-left: 20px">
                    </div>
                </div>
                <div style="width: 1600px;height: 60px;margin-left: 150px">
                    <div class="form-group" style="margin-left: 50px">
                        <label for="certificateNumber">证件编号:</label>
                        <input type="text" class="form-control" name="certificateNumber" id="certificateNumber"
                               placeholder="证件编号" style="width: 200px; margin-left:20px">
                    </div>
                    <div class="form-group" style="margin-left: 20px">
                        <label for="gender" style="margin-left: 30px">员工性别:</label>
                        <select class="form-control" name="gender" id="gender"
                                style="width: 200px; margin-left:20px">
                            <option value="">请选择</option>
                            <option value="0">男</option>
                            <option value="1">女</option>
                        </select>
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="duty">职务名称:</label>
                        <input type="text" class="form-control" name="duty" id="duty" placeholder="职务名称"
                               style="width: 200px;margin-left: 20px">
                    </div>
                </div>
                <div style="width: 200px;height: 60px;margin-left: 1150px;margin-top: -88px">
                    <div class="form-group" style="margin-left:60px">
                        <button type="button" onclick="userLike()" class="btn btn-primary">提交</button>

                        <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">
                            重置
                        </button>
                    </div>
                </div>
                <div style="width: 300px;height: 60px;margin-top: -70px">

                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上角色模糊查询-----------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="userTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#userLikeForm").get(0).reset();
        $("#userTable").bootstrapTable('destroy')
        userAll();
    }

    //提交模糊查询
    function userLike() {
        $.ajax({
            type: "post",
            data: $('#userLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAllUserStatus0",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#userTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        userAll();
    });

    /*------------------以上所有用户的table表格-------------------------分割线-------------------开始------------------------------*/
    function userAll() {
        $("#userTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAllUserStatus0",
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
                    title: "员工编号",
                    field: 'userNum',
                    align: 'center' // 居中显示
                }, {
                    title: "员工姓名",
                    field: 'userName',
                    align: 'center' // 居中显示
                },{
                    title: "员工性别",
                    field: 'gender',
                    align: 'center' ,// 居中显示
                    formatter: function (value, row, index) {
                        if (row.gender == 0) {
                            return "男";
                        }else if (row.gender == 1){
                            return "女";
                        }
                    }
                },{
                    title: "部门编号",
                    field: 'departmentNum',
                    align: 'center' // 居中显示
                }, {
                    title: "员工部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "员工职务",
                    field: 'duty',
                    align: 'center' // 居中显示
                }, {
                    title: "证件编号",
                    field: 'certificateNumber',
                    align: 'center' // 居中显示
                }, {
                    title: "入职时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "离退休时间",
                    field: 'retirementTime',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'userStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 0) {
                            return "在职";
                        }
                    }
                }, {
                    title: "员工操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 0) {
                            return "<a class='btn btn-primary' onclick='UserRecordAllById(" + row.id + ")' role='button' >查看</a>&nbsp;"
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

    /*------------------以上所有用户的table表格-------------------------分割线-------------------结束------------------------------*/


    /*------------------用户详情------------------ --------------------分割线-------------------开始------------------------------*/

    //用户详情模态框展示
    document.getElementById("UserRecordAllById").reset();
    function UserRecordAllById(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/UserController/userAllById',
            success: function (data) {
                //查看回显
                $("#userName2").val(data.userName);
                if (data.gender == 0) {
                    $("#gender2").val("男");
                } else {
                    $("#gender2").val("女");
                }
                $("#birthday2").val(data.birthday);
                $("#age2").val(data.age);
                if (data.userPapers == 0) {
                    $("#userPapers2").val("身份证");
                } else {
                    $("#userPapers2").val("护照");
                }

                $("#certificateNumber2").val(data.certificateNumber);
                $("#highestEducation2").val(data.highestEducation);
                $("#politicsStatus2").val(data.politicsStatus);
                $("#departmentName2").val(data.departmentName);
                $("#duty2").val(data.duty);
                $("#titles2").val(data.titles);
                $("#rank2").val(data.rank);
                $("#createTime2").val(data.createTime);
                $("#userNum2").val(data.userNum);
                $("#basepay2").val(data.basepay);
                $("#oldInsurance2").val(data.oldInsurance);
                $("#medicalInsurance2").val(data.medicalInsurance);
                $("#unemploymentInsurance2").val(data.unemploymentInsurance);
                $("#workInsurance2").val(data.workInsurance);
                $("#accrueInsurance2").val(data.accrueInsurance);
                $("#reservedFunds2").val(data.reservedFunds);
                $("#enterpriseAnnuity2").val(data.enterpriseAnnuity);
            }
        })
        //借调信息
        secondMessageAll();
        //转岗信息
        transferMessageAll();

    }

    //借调信息
    function secondMessageAll() {
        $("#secondMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#secondMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/secondMessageAll?id="+id,
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
                    title: "所属部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "借调信息",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "借调时间",
                    field: 'secondTime',
                    align: 'center' // 居中显示
                },
                {
                    title: "借调期限（天）",
                    field: 'secondDate',
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
    function transferMessageAll() {
        $("#transferMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#transferMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/transferMessageAll?id="+id,
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
                    title: "原部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗时间",
                    field: 'transferTime',
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


    /*------------------用户详情------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
