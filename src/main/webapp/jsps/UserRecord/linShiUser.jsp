<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        临时人员管理
    --%>
    <meta charset="utf-8">
    <title>临时人员管理</title>
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
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAllUserStatus3",
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
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAllUserStatus3",
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
                }, {
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
                },
                {
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
                    title: "状态",
                    field: 'userStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 3) {
                            return "临时在职";
                        }
                    }
                }, {
                    title: "员工操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 3) {
                            return"<a class='btn btn-info' onclick='zhuanzhengUserRecordMyModal(" + row.id + ")' role='button' >转正</a>&nbsp;" +
                                "<a class='btn btn-danger'  onclick='liZhiUserRecordMyModal(" + row.id + ")' role='button' >离职</a>&nbsp;";

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


    /*------------------用户离职------------------ --------------------分割线-------------------开始------------------------------*/
    function liZhiUserRecordMyModal(id) {
        if (window.confirm("是否确认离职?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/UserController/liZhiUser?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("员工已离职！！")
                        window.location.reload();
                    } else {
                        alert("离职失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }

    /*------------------用户离职------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------用户转正------------------ --------------------分割线-------------------开始------------------------------*/
    function zhuanzhengUserRecordMyModal(id) {
        if (window.confirm("是否确认转正?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/UserController/zhuanzhengUser?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("员工已转正！！")
                        window.location.reload();
                    } else {
                        alert("转正失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------用户退休------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
