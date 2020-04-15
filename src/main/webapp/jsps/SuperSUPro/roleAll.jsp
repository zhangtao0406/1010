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
    <link rel="stylesheet" href="/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <!--引入jquery-->
    <script src="${pageContext.request.contextPath }/index/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!--引入bootstrap.js-->
    <script src="${pageContext.request.contextPath }/index/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table-zh-CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.exedit.js"></script>



</head>
<body>

<!-- ----------------------------以上角色添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">新增角色:</h4>
                </div>
                <form class="form-horizontal" id="addRole">
                    <div class="modal-body">
                        <div class="form-group" style="margin-left: 100px">
                            <label for="roleName2" class="col-sm-3 control-label">角色姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="roleName" id="roleName2">
                            </div>
                        </div>
                        <div style="height: 30px">
                            <div class="col-md-9" style="margin-left: 110px">
                                <fieldset>
                                    <label class="col-sm-3 control-label">角色状态:</label>
                                    <div class="radio radio-info radio-inline" style="margin-left: 10px">
                                        <input type="radio" id="roleStatus1" value="0" name="roleStatus"
                                               checked="checked">
                                        <label for="roleStatus1">激活</label>
                                    </div>
                                    <div class="radio radio-inline">
                                        <input type="radio" id="roleStatus2" value="1" name="roleStatus">
                                        <label for="roleStatus2">不激活</label>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="addRole()" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上角色添加的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上角色详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">角色详情:</h4>
                </div>
                <form class="form-horizontal" id="findRoleAllById">
                    <div class="modal-body">
                        <div class="form-group" style="margin-left: 100px">
                            <label for="roleName2" class="col-sm-3 control-label">角色姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="roleName" id="roleName3" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group" style="margin-left: 100px">
                            <label for="createTime3" class="col-sm-3 control-label">创建时间:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="createTime" id="createTime3" readonly="readonly">
                            </div>
                        </div>
                        <div style="height: 30px">
                            <div class="col-md-9" style="margin-left: 110px" id="fieldset1">

                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上角色详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上角色修改的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel3">角色详情:</h4>
                </div>
                <form class="form-horizontal" id="findRoleUpdate">
                    <div class="modal-body">
                        <div class="form-group" style="margin-left: 100px">
                            <label for="roleName4" class="col-sm-3 control-label">角色姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="roleName" id="roleName4">
                            </div>
                        </div>
                        <div style="height: 30px">
                            <div class="col-md-9" style="margin-left: 110px" id="fieldset2">
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="updateRole()" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上角色修改的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上是添加角色权限的模态框--------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel4">添加角色</h4>
                </div>
                <form role="from" class="form-horizontal">
                    <div class="modal-body">
                        <div class="form-group" style="margin-left: 100px">
                            <input type="hidden" name="id" id="roleId5" value="">
                            <label for="roleName5" class="col-sm-3 control-label">角色姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="roleName" id="roleName5" readonly="readonly">
                            </div>
                            <div style="width: 400px; height: 200px;" >
                                <label for="roleName5" class="col-sm-3 control-label" style="margin-left: 20px">角色权限:</label>
                                <div class="col-sm-5" >
                                    <%--ZTREE 基板--%>
                                    <ul class="ztree" id="roleztree"></ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" id="butt" onclick="findRoleAddIsUpdate()" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </form>r
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上是添加角色权限的模态框--------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上是分配角色的模态框--------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true" >
        <div class="modal-dialog" style="width: 800px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel5">部门用户分配角色</h4>
                </div>
                <form role="from" class="form-horizontal">
                    <div class="modal-body" style="width: 800px">
                        <div class="form-group" style="margin-left: 60px">
                            <input type="hidden" name="id" id="roleId6" value="">

                            <div style="width: 400px; height: 200px;" >
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
                        <button type="button"  onclick="userRoleUpdate()" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </form>r
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上是分配角色的模态框--------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上角色模糊查询-----------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="roleLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 120px">
                    <button type="button" onclick="addRolemyModal()" class="btn btn-primary btn-lg">添加角色</button>
                </div>
                <div class="form-group" style="margin-left: 120px">
                    <label for="roleName1">角色名称:</label>
                    <input type="text" class="form-control" name="roleName" id="roleName1" placeholder="角色名称"
                           tyle="width: 200px;margin-left: 20px">
                </div>
                <div class="form-group">
                    <label for="roleStatus" style="margin-left: 30px">角色状态:</label>
                    <select class="form-control" name="roleStatus1" id="roleStatus"
                            style="width: 200px;margin-left: 20px">
                        <option value="">请选择</option>
                        <option value="0">激活</option>
                        <option value="1">不激活</option>
                    </select>
                </div>
                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="roleLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上角色模糊查询-----------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="roleTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#roleLikeForm").get(0).reset();
        $("#roleTable").bootstrapTable('destroy')
        roleAll();
    }

    //提交模糊查询
    function roleLike() {

        var roleName = $("#roleName1").val();
        var roleStatus = $("#roleStatus").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/superSUProController/findRoleAll?roleName=" + roleName + "&roleStatus=" + roleStatus,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#roleTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        roleAll();
    });

    /*------------------以上所有角色的table表格-------------------------分割线-------------------开始------------------------------*/
    function roleAll() {
        $("#roleTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/superSUProController/findRoleAll",
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
                    title: "角色名称",
                    field: 'roleName',
                    align: 'center' // 居中显示
                }, {
                    title: "创建时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "角色状态",
                    field: 'roleStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.roleStatus == 0) {
                            return "激活";
                        }
                        if (row.roleStatus == 1) {
                            return "不激活";
                        }
                    }
                }, {
                    title: "角色操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        return "<a class='btn btn-primary' onclick='allRolemyModal(" + row.id + ")' role='button' >角色详情</a>&nbsp;" +
                            "<a class='btn btn-success'  onclick='updateRolemyModal(" + row.id + ")' role='button' >角色修改</a>&nbsp;" +
                            "<a class='btn btn-info'  onclick='rolePowerAdd(" + row.id + ")' role='button' >分配权限</a>&nbsp;" +
                            "<a class='btn btn-warning'  onclick='assignRoles(" + row.id + ")' role='button' >分配角色</a>"
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

    /*------------------以上所有角色的table表格-------------------------分割线-------------------结束------------------------------*/

    //添加角色模态框展示
    function addRolemyModal() {
        $("#myModal1").modal("show");
    }

    //添加角色
    function addRole() {
        var roleName = $("#roleName2").val();
        var roleStatus = $('input:radio[name="roleStatus"]:checked').val();
        $.ajax({
            type: 'post',
            data:{roleName:roleName,roleStatus:roleStatus},
            url: '/superSUProController/findRoleAdd',
            success: function (data) {
                if (data) {
                    alert("角色添加成功")
                    document.getElementById("addRole").reset();
                    window.location.reload();
                }else {
                    alert("角色添加失败、请您重新添加")
                    document.getElementById("addRole").reset();
                    window.location.reload();
                }
            }
        })
    }

    /*-------------------------------------------角色信息详情-------------------------开始-------------------------------------*/
    //根据id查询角色模态框展示
    function allRolemyModal(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/superSUProController/findRoleAllById',
            success: function (data) {
                //查看回显
                $("#roleName3").val(data.roleName);
                $("#createTime3").val(data.createTime);
                $("#fieldset1").empty();
                if (data.roleStatus == 0) {
                    $("#fieldset1").append("<fieldset>\n" +
                        "                    <label class=\"col-sm-3 control-label\">角色状态:</label>\n" +
                        "                     <div class=\"radio radio-info radio-inline\" style=\"margin-left: 10px\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus\" checked=\"checked\" readonly=\"readonly\">\n" +
                        "                     <label for=\"roleStatus1\">激活</label>\n" +
                        "                     </div>\n" +
                        "                     <div class=\"radio radio-inline\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus\" readonly=\"readonly\">\n" +
                        "                     <label for=\"roleStatus2\">不激活</label>\n" +
                        "                     </div>\n" +
                        "                     </fieldset>")
                } else {
                    $("#fieldset1").append("<fieldset>\n" +
                        "                    <label class=\"col-sm-3 control-label\">角色状态:</label>\n" +
                        "                     <div class=\"radio radio-info radio-inline\" style=\"margin-left: 10px\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus\" readonly=\"readonly\">\n" +
                        "                     <label for=\"roleStatus1\">激活</label>\n" +
                        "                     </div>\n" +
                        "                     <div class=\"radio radio-inline\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus\" checked=\"checked\" readonly=\"readonly\">\n" +
                        "                     <label for=\"roleStatus2\">不激活</label>\n" +
                        "                     </div>\n" +
                        "                     </fieldset>")
                }

            }
        })
    }
    /*-------------------------------------------角色信息详情------------------------结束--------------------------------------*/

    /*-------------------------------------------角色修改信息详情------------------开始--------------------------------------------*/

    //根据id查询角色模态框展示
    function updateRolemyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/superSUProController/findRoleAllById',
            success: function (data) {
                //查看回显
                $("#roleName4").val(data.roleName);
                $("#fieldset2").empty();
                if (data.roleStatus == 0) {
                    $("#fieldset2").append("<fieldset>\n" +
                        "                    <label class=\"col-sm-3 control-label\">角色状态:</label>\n" +
                        "                     <div class=\"radio radio-info radio-inline\" style=\"margin-left: 10px\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus4\" value=\"0\" checked=\"checked\">\n" +
                        "                     <label for=\"roleStatus1\">激活</label>\n" +
                        "                     </div>\n" +
                        "                     <div class=\"radio radio-inline\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus4\" value=\"1\">\n" +
                        "                     <label for=\"roleStatus2\">不激活</label>\n" +
                        "                     </div>\n" +
                        "                     </fieldset>")
                } else {
                    $("#fieldset2").append("<fieldset>\n" +
                        "                    <label class=\"col-sm-3 control-label\">角色状态:</label>\n" +
                        "                     <div class=\"radio radio-info radio-inline\" style=\"margin-left: 10px\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus4\" value=\"0\">\n" +
                        "                     <label for=\"roleStatus1\">激活</label>\n" +
                        "                     </div>\n" +
                        "                     <div class=\"radio radio-inline\">\n" +
                        "                     <input type=\"radio\"  name=\"roleStatus4\" checked=\"checked\" value=\"1\" >\n" +
                        "                     <label for=\"roleStatus2\">不激活</label>\n" +
                        "                     </div>\n" +
                        "                     </fieldset>")
                }

            }
        })
    }
    /*-------------------------------------------角色修改信息详情------------------------结束--------------------------------------*/

    //角色修改
    function updateRole() {
        var id = $("#id").val();
        var roleName = $("#roleName4").val();
        var roleStatus = $('input:radio[name="roleStatus4"]:checked').val();
        if (window.confirm("是否确认要修改角色?")) {
            $.ajax({
                type: "post",
                data: {id: id,roleName:roleName,roleStatus:roleStatus},
                url: "${pageContext.request.contextPath}/superSUProController/updateRole",
                dataType: "json",
                success: function (data) {
                    if (data) {
                        alert("角色修改成功")
                        window.location.reload();
                    }else {
                        alert("角色修改失败、请您重新修改")
                        window.location.reload();
                    }
                }
            })
        }
    }

    /*-------------------------------------------角色权限添加------------------开始--------------------------------------------*/

    var TreeObj;
    var setting = {
        check: {
            enable: true
        },
        view: {

            showLine: true,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId"
            },
            key: {
                name: "power"
            }
        }
    };


    //根据id查询角色回显到页面
    function rolePowerAdd(id) {
        $("#myModal4").modal("show");
        $("#id").val(id);

        var treeObj = $.fn.zTree.getZTreeObj("roleztree");
        $.ajax({
            type: "post",
            url: "/superSUProController/findRoleAllByid",
            data: {id: id},
            dataType: 'json',
            success: function (data) {
                for (var a = 0; a < data.role.length; a++) {
                    var roleName = data.role[a].roleName;
                }

                for (var a = 0; a < data.resList.length; a++) {
                    var roleId = data.resList[a].roleId;
                }
                $("#roleId5").val(id);
                $("#roleName5").val(roleName);

                //把角色对应的权限从数据库查到后回显到页面
                for (var i = 0; i < data.allList.length; i++) {
                    for (var j = 0; j < data.listall.length; j++) {
                        if (data.allList[i].id == data.listall[j].id) {
                            data.allList[i].checked = true;
                        }
                    }
                }
                //allList展示权限树
                $.fn.zTree.init($("#roleztree"), setting, data.allList);

            }, error: function () {
                alert("加载失败")
            }
        })


        //获取当前选中的节点id
        var treeObj = $.fn.zTree.getZTreeObj("roleztree");

    }


    //修改角色权限
    function findRoleAddIsUpdate() {
        //获取当前选中的节点id
        var treeObj = $.fn.zTree.getZTreeObj("roleztree");
        var nodes = treeObj.getCheckedNodes(true);
        //获取当前input框中的值
        var roleId = $("#roleId5").val();
        //创建一个接收的数组
        var powerId = [];
        //遍历当前获取节点id
        $(nodes).each(function (a, b) {
            //把遍历好的节点id放在数组里
            powerId.push(b.powerId);
        });
        $.ajax({
            url: "${pageContext.request.contextPath}/superSUProController/findRoleAddIsUpdate?powerId=" + powerId,
            dataType: "json",
            type: "post",
            data: {id: roleId},
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

    /*-------------------------------------------角色权限添加------------------------结束--------------------------------------*/

    /*-------------------------------------------用户分配角色------------------开始--------------------------------------------*/

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
            befoureClick: befourClickMethod,  //单机节点之前的回调函数
            onClick: zTreeOnClick,//用于捕获节点被点击的事件回调函数
        }
    };

    function befourClickMethod() {//单机节点之前的回调函数
    }

    function beforeClickMethod(treeId, treeNode) {/*treeNode 节点*/
        /*isParent 记录 treeNode 节点是否为父节点。*/
        return !treeNode.isParent;
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

    //根据id查询角色回显到页面
    function assignRoles(id) {
        $("#myModal5").modal("show");
        $("#id").val(id);
        $.ajax({
            url: "/DepartmentController/findDepartmentUserAll",
            type: "post",
            dateType: "json",
            success: function (data) {//成功
                console.log(data)
                /*ztree的初始化方法需要三个参数     1.获得基板对象  2.配置文件 3.节点信息  */
                var tree = $.fn.zTree.init($("#treeDemo"), setting2, data);
            }
        })

    }

    /*-------------------------------------------用户分配角色------------------------结束--------------------------------------*/

    /*--------------------------根据权限id查看部门员工--------------------开始------------------------------------------*/
    var userId;
    function tableInfo(id) {
        userId=id;
        $("#tableUserAll").bootstrapTable({
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentUserById?id="+id,
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
                {field: "userId", title: "编号", align: 'center'},
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
    //分配角色数据添加提交
    function userRoleUpdate() {
        //获取角色id
        var roleId = $("#id").val();
        //获取用户id
        var a= $('#tableUserAll').bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选择一行");
        }else {
            console.log(a);
        }
        for (var i = 0; i < a.length; i++) {
            var userId = a[i].userId;
        }
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
    /*--------------------------根据权限id查看部门员工--------------------结束------------------------------------------*/

</script>
    <input type="hidden" id="id">
</body>
</html>
