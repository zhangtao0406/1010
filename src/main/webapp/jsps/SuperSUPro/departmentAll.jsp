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
    <!--引入layer.js-->
    <script src="/index/layui/layui.js"></script>


</head>
<body>

<!-- ----------------------------根据父级查询对应的子级部门信息详情------------------------分割线----------------------------------结束------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">总公司公司部门详情</h4>
                </div>
                <div class="modal-body">
                    <div style="width: 600px; margin-top: 20px; margin-left: 80px">
                        <table id="DepartmentTableById" class="table-striped table-hover"></table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------根据父级查询对应的子级部门信息详情------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------根据父级查询对应的子级部门信息详情进行修改------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">总公司公司部门修改</h4>
            </div>

            <form id="updateDepartmentFather" class="layui-form"  action="" style="margin-top: 20px">
                <input type="hidden" name="id" id="id2" />
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门名称:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName2" name="departmentName" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>上级部门:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName22" name="departmentFatherName" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门编号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentNum2" name="departmentNum" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="radio" name="departmentStatus" id="departmentStatus21" value="0" title="激活">
                            <input type="radio" name="departmentStatus" id="departmentStatus22" value="1" title="不激活">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注提醒:</b></label>
                            <div class="layui-input-inline">
                                <textarea class="layui-textarea" id="comment2" name="comment"
                                          style="width: 400px"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="updateDepartmentFather()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------根据父级查询对应的子级部门信息详情进行修改-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------给父级添加子集------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel3">总公司公司部门添加下级部门</h4>
            </div>

            <form id="addDepartmentSon" class="layui-form"  action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门名称:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName3" name="departmentName" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>上级部门:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName33" name="departmentFatherName" lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门编号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentNum3" name="departmentNum" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="radio" name="departmentStatus" id="departmentStatus31" value="0" title="激活" checked>
                            <input type="radio" name="departmentStatus" id="departmentStatus32" value="1" title="不激活">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注提醒:</b></label>
                            <div class="layui-input-inline">
                                <textarea class="layui-textarea" id="comment3" name="comment"
                                          style="width: 400px"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="addDepartmentSon()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------给父级添加子集-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------查询父级子集信息详情------------------------分割线----------------------------------结束------------------ ------->
<div>
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:1200px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel4">公司部门详情</h4>
                </div>
                <div class="modal-body">
                    <div style="width: 1000px; margin-top: 20px; margin-left: 80px">
                        <table id="allDepartmentSonMyModal" class="table-striped table-hover"></table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------查询父级子集信息详情------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------子级部门信息详情进行修改------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 700px;height: 600px;margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel5">子司公司部门修改</h4>
            </div>

            <form id="updateDepartmentSon" class="layui-form"  action="" style="margin-top: 20px">
                <input type="hidden" name="id" id="id5" />
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门名称:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentName5" name="departmentName" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>上级部门:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentFatherName5" name="departmentFatherName" required lay-verify="required"
                                   autocomplete="off" class="layui-input" readonly="readonly">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门编号:</b></label>
                        <div class="layui-input-inline">
                            <input type="text" id="departmentNum5" name="departmentNum" required lay-verify="required"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>部门状态:</b></label>
                        <div class="layui-input-inline">
                            <input type="radio" name="departmentStatus" id="departmentStatus51" value="0" title="激活">
                            <input type="radio" name="departmentStatus" id="departmentStatus52" value="1" title="不激活">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注提醒:</b></label>
                            <div class="layui-input-inline">
                                <textarea class="layui-textarea" id="comment5" name="comment"
                                          style="width: 400px"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="updateDepartmentSon()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------子级部门信息详情进行修改-------------------------分割线----------------------------------结束------------------ ------->
<br><br>
<table id="departmentTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    $(function () {
        departmentAll();
    });

    /*------------------以上所有部门的table表格-------------------------分割线-------------------开始------------------------------*/
    function departmentAll() {
        $("#departmentTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentAll",
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
                    title: "部门名称",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "部门编号",
                    field: 'departmentNum',
                    align: 'center' // 居中显示
                }, {
                    title: "部门状态",
                    field: 'departmentStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.departmentStatus == 0) {
                            return "激活";
                        }
                        if (row.departmentStatus == 1) {
                            return "不激活";
                        }
                    }
                }, {
                    title: "部门操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        return "<a class='btn btn-primary' onclick='allDepartmentFatherMyModal(" + row.id + ")' role='button' >部门详情</a>&nbsp;" +
                            "<a class='btn btn-success'  onclick='updateDepartmentFatherMyModal(" + row.id + ")' role='button' >部门修改</a>&nbsp;" +
                            "<a class='btn btn-info'  onclick='addDepartmentFatherMyModal(" + row.id + ")' role='button' >添加下级部门</a>";
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

    /*------------------以上所有部门的table表格-------------------------分割线-------------------结束------------------------------*/

    /*-----------------根据父级查询对应的子级部门信息详情---------------------------结束-----------------------------------*/
    //根据父级查询对应的子级部门信息详情
    function allDepartmentFatherMyModal(id) {
        $("#myModal1").modal("show");
        $("#id").val(id);
        $("#DepartmentTableById").bootstrapTable("destroy")
        $("#DepartmentTableById").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentFatherById?id=" + id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "部门名称",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "部门编号",
                    field: 'departmentNum',
                    align: 'center' // 居中显示
                }, {
                    title: "部门状态",
                    field: 'departmentStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.departmentStatus == 0) {
                            return "激活";
                        }
                        if (row.departmentStatus == 1) {
                            return "不激活";
                        }
                    }
                }, {
                    title: "部门操作",
                    field: 'id',
                    formatter: function (value, row, index) {
                        return "<a class='btn btn-primary' onclick='allDepartmentSonMyModal(" + row.id + ")' role='button' >部门详情</a>&nbsp;" +
                            "<a class='btn btn-success'  onclick='updateDepartmentSonMyModal(" + row.id + ")' role='button' >部门修改</a>";
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

    /*----------------------根据父级查询对应的子级部门信息详情------------------------------结束---------------------------*/
    /*-----------------根据父级查询对应的子级部门信息详情进行修改---------------------------结束-----------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });
    //根据父级查询对应的子级部门信息详情数据回显
    function updateDepartmentFatherMyModal(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        document.getElementById("updateDepartmentFather").reset();
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/DepartmentController/updateDepartmentFatherById',
            success: function (data) {
                //查看回显
                $("#id2").val(data.id);
                $("#departmentName2").val(data.departmentName);
                $("#departmentName22").val("暂无父级、是其本身");
                $("#departmentNum2").val(data.departmentNum);
                if(data.departmentStatus == 0){
                    $("#departmentStatus21").attr("checked",true);
                }else if(data.departmentStatus == 1){
                    $("#departmentStatus22").attr("checked",true);
                }
                $("#comment2").val(data.comment);
            }
        })
    }
    //根据父级查询对应的子级部门信息详情进行修改
    function updateDepartmentFather() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/DepartmentController/updateDepartmentFather",
            data: $('#updateDepartmentFather').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("部门修改成功！！")
                    document.getElementById("updateDepartmentFather").reset();
                    window.location.reload();
                } else {
                    alert("部门修改失败（查看填写信息是否有误）！！")
                }
            }
        })
    }
    /*----------------------根据父级查询对应的子级部门信息详情进行修改------------------------------结束---------------------------*/


    /*----------------------给父级添加子集-------------------------------------------------------结束-----------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });
    //根据父级查询对应的子级部门信息详情数据回显
    function addDepartmentFatherMyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);

        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/DepartmentController/updateDepartmentFatherById',
            success: function (data) {
                //查看回显
                $("#departmentName33").val(data.departmentFatherName);
            }
        })
    }
    //给父级部门添加子集
    function addDepartmentSon() {
        var id = $("#id").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/DepartmentController/addDepartmentSon?id="+id,
            data: $('#addDepartmentSon').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("部门添加成功！！")
                    document.getElementById("addDepartmentSon").reset();
                    window.location.reload();
                } else {
                    alert("部门添加失败（查看填写信息是否有误）！！")
                }
            }
        })
    }
    /*----------------------------给父级添加子集--------------------------------------------------结束---------------------------*/
    /*-----------------查询父级子集信息详情---------------------------结束-----------------------------------*/
    //查询父级子集信息详情
    function allDepartmentSonMyModal(id) {
        $("#myModal4").modal("show");
        $("#allDepartmentSonMyModal").bootstrapTable("destroy")
        $("#allDepartmentSonMyModal").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/DepartmentController/findDepartmentSonById?id=" + id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "总部门部门名称",
                    field: 'departmentFatherName',
                    align: 'center' // 居中显示
                }, {
                    title: "总部门部门编号",
                    field: 'departmentFatherNum',
                    align: 'center' // 居中显示
                }, {
                    title: "总部门部门状态",
                    field: 'departmentFatherStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.departmentFatherStatus == 0) {
                            return "激活";
                        }
                        if (row.departmentFatherStatus == 1) {
                            return "不激活";
                        }
                    }
                }, {
                    title: "子部门部门名称",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "子部门部门编号",
                    field: 'departmentNum',
                    align: 'center' // 居中显示
                }, {
                    title: "子部门部门状态",
                    field: 'departmentStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.departmentStatus == 0) {
                            return "激活";
                        }
                        if (row.departmentStatus == 1) {
                            return "不激活";
                        }
                    }
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
    /*----------------------查询父级子集信息详情------------------------------结束----------------------------------------*/
    /*-----------------子级部门信息详情进行修改---------------------------结束--------------------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });
    //子级部门信息详情数据回显
    function updateDepartmentSonMyModal(id) {
        $("#myModal5").modal("show");
        $("#id").val(id);
        document.getElementById("updateDepartmentSon").reset();
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/DepartmentController/findDepartmentSonById',
            success: function (data) {
                for (var a = 0; a < data.length; a++) {
                    //查看回显
                    $("#id5").val(data[a].id);
                    $("#departmentName5").val(data[a].departmentName);
                    $("#departmentFatherName5").val(data[a].departmentFatherName);
                    $("#departmentNum5").val(data[a].departmentNum);
                    if(data[a].departmentStatus == 0){
                        $("#departmentStatus51").attr("checked",true);
                    }else if(data[a].departmentStatus == 1){
                        $("#departmentStatus52").attr("checked",true);
                    }
                    $("#comment5").val(data[a].comment);
                }

            }
        })
    }
    //子级部门信息详情进行修改
    function updateDepartmentSon() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/DepartmentController/updateDepartmentSon",
            data: $('#updateDepartmentSon').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("部门修改成功！！")
                    document.getElementById("updateDepartmentFather").reset();
                    window.location.reload();
                } else {
                    alert("部门修改失败（查看填写信息是否有误）！！")
                }
            }
        })
    }
    /*----------------------子级部门信息详情进行修改------------------------------结束---------------------------*/




</script>
<input type="hidden" id="id">
</body>
</html>
