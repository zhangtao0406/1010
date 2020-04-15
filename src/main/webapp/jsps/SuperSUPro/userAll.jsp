<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        角色管理
    --%>
    <meta charset="utf-8">
    <title>角色管理</title>
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

<!-- ----------------------------以上用户添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1">新增用户</h4>
            </div>

            <form id="addUser" class="layui-form" action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户姓名:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userName2" name="userName" required lay-verify="required"
                                   placeholder="请输入用户姓名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>登陆账号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="loginId2" name="loginId" required lay-verify="required"
                                   placeholder="请输入登陆账号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>联系电话:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userPhone2" name="userPhone" required lay-verify="required"
                                   placeholder="请输入联系电话" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>所属部门:</b></label>
                        <div class="layui-input-inline" style="width: 158px">
                            <select id="departmentId2" name="departmentId" lay-verify="" lay-filter="gname">
                            </select>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>电子邮箱:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userEmail2" name="userEmail" required lay-verify="required"
                                   placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="radio" name="activatedStatus" value="0" title="激活">
                            <input type="radio" name="activatedStatus" value="1" title="不激活" checked>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注提醒:</b></label>
                            <div class="layui-input-inline">
                                <textarea placeholder="请留言您的备注" class="layui-textarea" id="comment2" name="comment"
                                          style="width: 400px"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <button type="button" onclick="addUser()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户添加的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上用户详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">用户详情</h4>
            </div>

            <form id="userAllById" class="layui-form" action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户编号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userNum3" name="userNum" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户名称:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userName3" name="userName" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>登录账号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="loginId3" name="loginId" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户密码:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="password3" name="password3" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>联系电话:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userPhone3" name="userPhone" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>所属部门:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName3" name="departmentName" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>电子邮箱:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userEmail3" name="userEmail3" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>入职时间:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="createTime3" name="createTime" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userStatus3" name="userStatus" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>激活状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="activatedStatus3" name="activatedStatus" required
                                   lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注提醒:</b></label>
                            <div class="layui-input-inline">
                                <textarea placeholder="为输入备注信息" class="layui-textarea" id="comment3" name="comment"
                                          readonly="readonly" style="width: 400px"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上分配角色的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                </button>
                <h4 class="modal-title" id="myModalLabel3">用户修改</h4>
            </div>
            <form id="assignRole" class="layui-form" action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6" style="margin-left: 150px">
                        <label class="layui-form-label" style="width: 120px"><b>用户姓名:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="userName4" name="userName" required lay-verify="required"
                                   autocomplete="off" class="layui-input" style="width: 220px" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6" style="margin-left: 150px">
                        <label class="layui-form-label" style="width: 120px"><b>角色信息:</b></label>
                        <div class="layui-input-inline" style="width: 220px">
                            <select id="departmentId4" name="roleId" lay-verify="" lay-filter="gname">
                            </select>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer" style="margin-top: 20px">
                <button type="button" onclick="userRoleUpdate()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上分配角色的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上修改密码的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                </button>
                <h4 class="modal-title" id="myModalLabel4">重置密码</h4>
            </div>
            <form class="layui-form" action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6" style="margin-left: 150px">
                        <label class="layui-form-label" style="width: 120px"><b>原始密码:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="password5" name="password" required lay-verify="required"
                                   autocomplete="off" class="layui-input" style="width: 220px" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6" style="margin-left: 150px">
                        <label class="layui-form-label" style="width: 120px"><b>修改密码:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="password6" name="password" required lay-verify="required"
                                   autocomplete="off" placeholder="请输入密码" class="layui-input" style="width: 220px" >
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer" style="margin-top: 20px">
                <button type="button" onclick="userUpdatePassWord()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上修改密码的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上用户的模糊查询-----------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="userLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 80px">
                    <button type="button" onclick="addUserMyModal()" class="btn btn-primary btn-lg">添加用户</button>
                </div>
                <div class="form-group" style="margin-left: 80px">
                    <label for="userName1">用户姓名:</label>
                    <input type="text" class="form-control" name="userName" id="userName1" placeholder="用户姓名"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="departmentName1">部门名称:</label>
                    <input type="text" class="form-control" name="departmentName" id="departmentName1"
                           placeholder="部门名称"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="loginId1">登录账号:</label>
                    <input type="text" class="form-control" name="loginId" id="loginId1" placeholder="登录账号"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="userPhone1">联系电话:</label>
                    <input type="text" class="form-control" name="userPhone" id="userPhone1" placeholder="联系电话"
                           tyle="width: 200px;margin-left: 20px">
                </div>

                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="userLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
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
        var userName = $("#userName1").val();
        var departmentName = $("#departmentName1").val();
        var loginId = $("#loginId1").val();
        var userPhone = $("#userPhone1").val();
        $.ajax({
            type: "post",
            data: {userName: userName, departmentName: departmentName, loginId: loginId, userPhone: userPhone},
            url: "${pageContext.request.contextPath}/UserController/findUserAll",
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
        departmentAll();
    });

    /*------------------以上所有用户的table表格-------------------------分割线-------------------开始------------------------------*/
    function userAll() {
        $("#userTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/findUserAll",
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
                    title: "用户姓名",
                    field: 'userName',
                    align: 'center' // 居中显示
                }, {
                    title: "用户编号",
                    field: 'userNum',
                    align: 'center' // 居中显示
                }, {
                    title: "登陆账号",
                    field: 'loginId',
                    align: 'center' // 居中显示
                }, {
                    title: "所属部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "联系电话",
                    field: 'userPhone',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'activatedStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.activatedStatus == 0) {
                            return "激活";
                        }
                        if (row.activatedStatus == 1) {
                            return "不激活";
                        }
                    }
                }, {
                    title: "角色操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        return "<a class='btn btn-primary' onclick='userAllById(" + row.id + ")' role='button' >用户详情</a>&nbsp;" +
                            "<a class='btn btn-info'  onclick='userUpdateMyModal(" + row.id + ")' role='button' >用户修改</a>&nbsp;" +
                            "<a class='btn btn-success'  onclick='userUpdatePassWordMyModal(" + row.id + ")' role='button' >重置密码</a>"
                            ;
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

    /*------------------以上所有用户的table表格-------------------------分割线-------------------结束------------------------------*/
    /*------------------用户添加------------------ --------------------分割线-------------------开始------------------------------*/

    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    //添加角色模态框展示
    function addUserMyModal() {
        $("#myModal1").modal("show");
    }

    //下拉框展示部门
    function departmentAll() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId2").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId2").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }

    //添加用户
    function addUser() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/addUser",
            data: $('#addUser').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("添加用户成功！！")
                    document.getElementById("addUser").reset();
                    window.location.reload();
                } else {
                    alert("添加用户失败（查看填写信息是否有误）！！")
                }
            }
        })
    }

    /*------------------用户添加------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------用户详情------------------ --------------------分割线-------------------开始------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    //添加角色模态框展示
    function userAllById(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/UserController/userAllById',
            success: function (data) {
                //查看回显
                $("#userNum3").val(data.userNum);
                $("#userName3").val(data.userName);
                $("#loginId3").val(data.loginId);
                $("#password3").val(data.password);
                $("#userPhone3").val(data.userPhone);
                $("#departmentName3").val(data.departmentName);
                $("#userEmail3").val(data.userEmail);
                $("#createTime3").val(data.createTime);
                if (data.userStatus == 0) {
                    $("#userStatus3").val("在职");
                } else if (data.userStatus == 1) {
                    $("#userStatus3").val("离职");
                } else if (data.userStatus == 2) {
                    $("#userStatus3").val("退休");
                } else if (data.userStatus == 3) {
                    $("#userStatus3").val("临时在职");
                }
                if (data.activatedStatus == 0) {
                    $("#activatedStatus3").val("激活");
                } else {
                    $("#activatedStatus3").val("未激活");
                }

                $("#comment3").val(data.comment);

            }
        })
    }
    /*------------------用户详情------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------分配角色------------------ --------------------分割线-------------------开始------------------------------*/
    //添加角色模态框展示
    function userUpdateMyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/UserController/findUserDepartmentById',
            success: function (data) {
                //查看回显
                for (var a = 0; a < data.role.length; a++) {
                    var userName = data.role[a].userName;
                }
                //将数据回显到input表格中
                $("#userName4").val(userName);

                //所有角色的下拉框
                $("#departmentId4").empty();
                var options = "<option value='0' checked>-请选择-</option>";
                for (var i = 0; i < data.allList.length; i++) {
                    options += "<option value='" + data.allList[i].id + "'>" + data.allList[i].roleName + "</option>";
                };
                $("#departmentId4").append(options);
                layui.form.render('select');
            }
        })
    }
    //分配角色数据添加提交
    function userRoleUpdate() {
        //获取用户id
        var userId = $("#id").val();
        //获取角色id
        var roleId = $("#departmentId4").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/UserController/userRoleUpdate",
            dataType: "json",
            type: "post",
            data: {userId:userId,roleId: roleId},
            success: function (data) {
                if (data) {
                    alert("添加成功");
                    window.location.reload();
                } else {
                    alert("添加失败、请您重新添加！");
                    window.location.reload();
                }
            }

        });
    }
    /*------------------分配角色------------------ --------------------分割线-------------------结束------------------------------*/


    /*------------------重置密码------------------ --------------------分割线-------------------开始------------------------------*/
    //修改密码模态框展示
    function userUpdatePassWordMyModal(id) {
        $("#myModal4").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/UserController/userAllById',
            success: function (data) {
                //将数据回显到input表格中
                $("#password5").val(data.password);
            }
        })
    }
    //分配角色数据添加提交
    function userUpdatePassWord() {
        //获取用户id
        var id = $("#id").val();
        var password = $("#password6").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/UserController/userUpdatePassWord",
            dataType: "json",
            type: "post",
            data: {id:id,password: password},
            success: function (data) {
                if (data) {
                    alert("密码重置成功");
                    window.location.reload();
                } else {
                    alert("密码重置失败、请您重新操作！");
                    window.location.reload();
                }
            }

        });
    }
    /*------------------重置密码------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
