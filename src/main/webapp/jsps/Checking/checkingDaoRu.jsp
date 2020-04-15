<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <%--
        考勤数据导入
    --%>
    <meta charset="utf-8">
    <title>考勤数据导入</title>
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

<!-- ----------------------------以上考勤数据导入添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">考勤数据导入:</h4>
                </div>
                <form class="layui-form" id="addChecking" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data">
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
                                                       id="year2" name="year"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">月份:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="月份如:(一月，二月...)"
                                                        id="month2" name="month" autocomplete="off"/>
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
                                                           readonly="readonly"   autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">选择导入文件:</label>
                                                <div class="layui-input-inline">
                                                    <input type="file" name="pictureFile"  class="layui-input" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">公司:</label>
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
                                                <label class="layui-form-label" style="width: 120px">备注详情:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="comment2" name="comment" required
                                                              lay-verify="required" placeholder="备注详情" class="layui-textarea"></textarea>
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
                    <button type="button" onclick="addChecking()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上考勤数据导入添加的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上考勤数据导入详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">考勤数据导入详情:</h4>
                </div>
                <form class="layui-form" id="CheckingById" style="width:750px; margin-left: 110px"
                      enctype="multipart/form-data" enctype="multipart/form-data">
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
                                                       id="year3" name="year"  readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">月份:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="月份如:(一月，二月...)"
                                                       readonly="readonly"   id="month3" name="month" autocomplete="off"/>
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
                                                           readonly="readonly" id="operationTime3" name="operationTime"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">选择导入文件:</label>
                                                <div class="layui-input-inline" >
                                                    <input type="text" id="fileName3" name="fileName"  readonly="readonly"   class="layui-input" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">当前部门:</label>
                                                <div class="layui-input-inline" >
                                                    <input type="text" id="departmentName3" name="departmentName"  readonly="readonly"   class="layui-input" >
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
                                                              readonly="readonly"   lay-verify="required" placeholder="备注详情" class="layui-textarea"></textarea>
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
<!-- ----------------------------以上考勤数据导入详情的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上考勤数据导入模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="CheckingLikeForm">
                <div class="form-group" style="margin-left: 130px">
                    <button type="button" onclick="addCheckingMyModal()" class="btn btn-primary btn-lg">考勤导入</button>
                </div>
                <div class="form-group" style="margin-left: 160px">
                    <label for="year1">考勤年度:</label>
                    <input type="text" class="form-control" name="year" id="year1" placeholder="年  度"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="checkingStatus1">考勤状态:</label>
                    <select class="form-control" name="checkingStatus" id="checkingStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="0">待统计</option>
                        <option value="1">待审批</option>
                        <option value="2">已完成</option>
                        <option value="3">已驳回</option>
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
            url: "${pageContext.request.contextPath}/CheckingController/findCheckingAll",
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
            url: "${pageContext.request.contextPath}/CheckingController/findCheckingAll",
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
                            return "待审批";
                        }
                        if (row.checkingStatus == 2) {
                            return "已完成";
                        }
                        if (row.checkingStatus == 3) {
                            return "已驳回";
                        }
                    }
                }, {
                    title: "操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.checkingStatus == 0) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
                        } else if (row.checkingStatus == 1) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
                        } else if (row.checkingStatus == 2) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
                        } else if (row.checkingStatus == 3) {
                            return "<a class='btn btn-info' onclick='ProcurementAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
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
    /*------------------考勤数据导入添加------------------ --------------------分割线-------------------开始------------------------------*/

    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });
    //添加考勤数据导入模态框展示
    function addCheckingMyModal() {
        $("#myModal1").modal("show");
        departmentAll();
    }
    //下拉框
    function departmentAll() {
        //查询所有父级部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentFtherAll",
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
    //考勤数据导入
    function addChecking() {
        var form = new FormData(document.getElementById("addChecking"));
        $.ajax({
            url:"${pageContext.request.contextPath}/CheckingController/addCheckingAndCheckingStatistics", //要处理的页面
            data: form, //要传过去的数据$('#addChecking').serialize()
            type: "POST", //提交方式
            processData: false,
            contentType: false,
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if(data) {
                    alert("考勤数据导入成功");
                    document.getElementById("addChecking").reset();
                    window.location.reload();
                } else {
                    alert("考勤数据导入失败");
                }
            }
        });
    }

    /*------------------考勤数据导入添加------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------以上考勤数据导入详情-----------------------------------分割线-------------------开始------------------------------*/
    function ProcurementAllByIdMyModal(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
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
                    $("#fileName3").val(data.fileName)
                    $("#departmentName3").val(data.departmentName)
                } else {
                    alert("查询失败")
                }
            }
        })
    }
    /*------------------以上考勤数据导入详情-----------------------------------分割线-------------------结束------------------------------*/


</script>
<input type="hidden" id="id">
</body>
</html>
