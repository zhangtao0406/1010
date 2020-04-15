<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        基础设施类型
    --%>
    <meta charset="utf-8">
    <title>基础设施类型</title>
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

<!-- ----------------------------以上基础设施类型新增的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">基础设施类型新增:</h4>
                </div>
                <form class="layui-form" id="addFacility" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施类型维护新增</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设备编号:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设备编号系统默认生成"
                                                       readonly="readonly" id="facilityNum2" name="facilityNum"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">类型名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="类型名称"
                                                       id="facilityName2" name="facilityName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">养护时间间隔:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="养护提醒时间间隔"
                                                           id="taktTime2" name="taktTime" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">管理员:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="管理员"
                                                           id="administrator2" name="administrator" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">

                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px"><b>状态:</b></label>
                                                <div class="layui-input-inline">
                                                    <input type="radio" name="facilityStatus" id="facilityStatus21"
                                                           value="0" title="激活" checked>
                                                    <input type="radio" name="facilityStatus" id="facilityStatus22"
                                                           value="1" title="未激活">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="departmentId_TJ" name="departmentId" lay-verify=""
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
                                                <label class="layui-form-label" style="width: 120px">备注:</label>
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
                    <button type="button" onclick="addFacility()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上基础设施类型新增的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上基础设施类型详情的模态框---------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">基础设施类型详情:</h4>
                </div>
                <form class="layui-form" id="FacilityAllByIdMyModal" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施类型维护详情</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设备编号:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设备编号系统默认生成"
                                                       readonly="readonly" id="facilityNum3" name="facilityNum"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">类型名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="类型名称"
                                                       readonly="readonly" id="facilityName3" name="facilityName"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">养护时间间隔:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="养护提醒时间间隔"
                                                           readonly="readonly" id="taktTime3" name="taktTime"
                                                           autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">管理员:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="管理员"
                                                           readonly="readonly" id="administrator3" name="administrator"
                                                           autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">

                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px"><b>状态:</b></label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="状态"
                                                           readonly="readonly" id="facilityStatus3"
                                                           name="facilityStatus" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <input class="layui-input" type="text" placeholder="管理员"
                                                               readonly="readonly" id="departmentName3"
                                                               name="departmentName" autocomplete="off"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">备注:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment3" name="comment"
                                                              readonly="readonly" required lay-verify="required"
                                                              class="layui-textarea"></textarea>
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
<!-- ----------------------------以上基础设施类型详情的模态框---------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上基础设施类型编辑修改的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel3">基础设施类型编辑:</h4>
                </div>
                <form class="layui-form" id="FacilityUpdateMyModal" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施类型维护编辑</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设备编号:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设备编号系统默认生成"
                                                       readonly="readonly" id="facilityNum4" name="facilityNum"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">类型名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="类型名称"
                                                       id="facilityName4" name="facilityName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">养护时间间隔:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="养护提醒时间间隔"
                                                           id="taktTime4" name="taktTime" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">管理员:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="管理员"
                                                           id="administrator4" name="administrator" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">目前状态:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施状态默认使用中"
                                                           readonly="readonly" id="facilityStatus4" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">状态:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select class="form-control" name="facilityStatus"
                                                                id="facilityStatus_up"
                                                                style="width: 180px;">
                                                            <option value="">请选择</option>
                                                            <option value="0">激活</option>
                                                            <option value="1">未激活</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责部门:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="负责部门"
                                                           id="departmentName4" name="departmentName"
                                                           readonly="readonly" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="departmentId_up" name="departmentId" lay-verify=""
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
                                                <label class="layui-form-label" style="width: 120px">备注:</label>
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
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="updateFacility()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上基础设施类型编辑修改的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上基础设施类型的模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="FacilityLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 60px">
                    <button type="button" onclick="addInfrastructureMyModal()" class="btn btn-primary btn-lg">添加设施
                    </button>
                </div>
                <div class="form-group" style="margin-left: 60px">
                    <label for="facilityNum1">设备编号:</label>
                    <input type="text" class="form-control" name="facilityNum" id="facilityNum1" placeholder="设备编号"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="departmentName1">负责部门:</label>
                    <input type="text" class="form-control" name="departmentName" id="departmentName1"
                           placeholder="负责部门"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="facilityName1">类型名称:</label>
                    <input type="text" class="form-control" name="facilityName" id="facilityName1" placeholder="设施类型"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="facilityStatus1">设施状态:</label>
                    <select class="form-control" name="facilityStatus" id="facilityStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="0">激活</option>
                        <option value="1">未激活</option>
                    </select>
                </div>

                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="FacilityLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上基础设施类型的模糊查询---------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="FacilityAllTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#FacilityLikeForm").get(0).reset();
        $("#FacilityAllTable").bootstrapTable('destroy')
        FacilityAll();
    }

    //提交模糊查询
    function FacilityLike() {
        $.ajax({
            type: "post",
            data: $('#FacilityLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/InfrastructureController/findFacilityAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#FacilityAllTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        //基础设施档案的table表格
        FacilityAll();
        //下拉框展示部门
        departmentAll();
    });

    /*------------------以上所有基础设施档案的table表格-------------------------分割线-------------------开始------------------------------*/
    function FacilityAll() {
        $("#FacilityAllTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/InfrastructureController/findFacilityAll",
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
                    title: "设备编号",
                    field: 'facilityNum',
                    align: 'center' // 居中显示
                }, {
                    title: "类型名称",
                    field: 'facilityName',
                    align: 'center' // 居中显示
                }, {
                    title: "创建时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "负责部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'facilityStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.facilityStatus == 0) {
                            return "激活";
                        }
                        if (row.facilityStatus == 1) {
                            return "未激活";
                        }
                    }
                }, {
                    title: "基础设施类型操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.facilityStatus == 0) {
                            return "<a class='btn btn-success' onclick='FacilityAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                "<a class='btn btn-info' onclick='FacilityUpdateMyModal(" + row.id + ")' role='button' >修改</a>";
                        } else if (row.facilityStatus == 1) {
                            return "<a class='btn btn-success' onclick='FacilityAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                "<a class='btn btn-info' onclick='FacilityUpdateMyModal(" + row.id + ")' role='button' >修改</a>";
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

    /*------------------以上所有基础设施档案的table表格-------------------------分割线-------------------结束------------------------------*/
    /*------------------基础设施类型新增------------------ --------------------分割线-------------------开始------------------------------*/

    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    //基础设施类型新增模态框展示
    function addInfrastructureMyModal() {
        $("#myModal1").modal("show");
    }

    //下拉框
    function departmentAll() {
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId_TJ").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId_TJ").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }

    //基础设施类型新增
    function addFacility() {
        $.ajax({
            url: "${pageContext.request.contextPath}/InfrastructureController/addInFacility", //要处理的页面
            data: $('#addFacility').serialize(), //要传过去的数据
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function (data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if (data) {
                    alert("添加成功");
                    document.getElementById("addFacility").reset();
                    window.location.reload();
                } else {
                    alert("添加失败");
                }
            }
        });
    }

    /*------------------基础设施类型新增------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------基础设施类型详情-----------------------------------分割线-------------------开始------------------------------*/
    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    function FacilityAllByIdMyModal(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/InfrastructureController/facilityById?id=" + id,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    $("#facilityNum3").val(data.facilityNum)
                    $("#facilityName3").val(data.facilityName)
                    $("#taktTime3").val(data.taktTime)
                    $("#administrator3").val(data.administrator)
                    if (data.facilityStatus == 0) {
                        $("#facilityStatus3").val("激活")
                    } else if (data.facilityStatus == 1) {
                        $("#facilityStatus3").val("未激活")
                    }
                    $("#departmentName3").val(data.departmentName)
                    $("#comment3").val(data.comment)
                } else {
                    alert("查询失败")
                }
            }
        })

    }

    /*------------------基础设施类型详情-----------------------------------分割线-------------------结束------------------------------*/

    /*------------------以上基础设施类型编辑修改------------------ --------------------分割线-------------------开始------------------------------*/
    //基础设施类型编辑修改
    function FacilityUpdateMyModal(id) {
        //下拉框展示部门
        departmentAllUpdate();
        $("#id").val(id);
        $("#myModal3").modal("show")
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/InfrastructureController/facilityById?id=" + id,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    $("#facilityNum4").val(data.facilityNum)
                    $("#facilityName4").val(data.facilityName)
                    $("#taktTime4").val(data.taktTime)
                    $("#administrator4").val(data.administrator)
                    if (data.facilityStatus == 0) {
                        $("#facilityStatus4").val("激活")
                    } else if (data.facilityStatus == 1) {
                        $("#facilityStatus4").val("未激活")
                    }
                    $("#departmentName4").val(data.departmentName)
                    $("#comment4").val(data.comment)
                } else {
                    alert("查询失败")
                }
            }
        })
    }

    //下拉框
    function departmentAllUpdate() {
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId_up").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId_up").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }

    //编辑基础设施类型
    function updateFacility() {
        var id = $("#id").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/InfrastructureController/updateFacility?id="+id, //要处理的页面
            data: $('#FacilityUpdateMyModal').serialize(), //要传过去的数据
            type: "POST", //提交方式
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function (data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if (data) {
                    alert("修改成功");
                    document.getElementById("FacilityUpdateMyModal").reset();
                    window.location.reload();
                } else {
                    alert("修改失败");
                }
            }
        });
    }

    /*------------------以上基础设施类型编辑修改------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
