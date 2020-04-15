<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link rel="stylesheet" href="/index/css/main.css">
    <link rel="stylesheet" href="/index/css/page.css">
    <link rel="stylesheet" href="/index/css/iconfont.css">
    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link type="text/css" href="/index/css/bootstrap-table.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath }/index/js/jquery-1.10.2.js"></script>
    <script src="/index/js/bootstrap.min.js"></script>
    <script src="/index/js/echarts.min.js"></script>
    <script src="/index/js/llechars.js"></script>
    <!--引入bootstrap.js-->
    <script src="${pageContext.request.contextPath }/index/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table-zh-CN.js"></script>

</head>
<body>
<div style="margin-left: 20px;margin-top:0px;">
    <div class="bod_right col-md-12">
        <div class="row">
            <div>
                <div class="bod_right_top">
                    <img src="/index/images/loginlogo.png" />
                </div>
            </div>
        </div>
        <div class="row"  style="margin-top: 10px">
            <div class="row"></div>
            <div class="col-md-3">
                <div class="boxSize boxShadow">
                    <div>
                        <img src="/index/images/alluserslogo.png">
                    </div>
                    <div class="fontSize colorOrange">
                        <p>${sessionScope.countUserAll}</p>
                    </div>
                    <div>
                        <p>总用户</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="boxSize boxShadow">
                    <div>
                        <img src="/index/images/linshiuserslogo.png">
                    </div>
                    <div class="fontSize colorRed">
                        <p>${sessionScope.countLinShiUserAll}</p>
                    </div>
                    <div>
                        <p>临时用户</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="boxSize boxShadow">
                    <div>
                        <img src="/index/images/newuserslogo.png">
                    </div>
                    <div class="fontSize colorPurple">
                        <p class="fontOrange">${sessionScope.countXinZengUserAll}</p>
                    </div>
                    <div>
                        <p>新增用户</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="boxSize boxShadow">
                    <div>
                        <img src="/index/images/fangwenliang.png">
                    </div>
                    <div class="fontSize colorGreen">
                        <p>${applicationScope.num }</p>
                    </div>
                    <div>
                        <p>总访问量</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="row"></div>
        <DIV class="row" style="margin-top: 30px">
            <div class="col-md-5 ">
                <div class="boxSize borderStyle">
                    <div style="margin-top: 20px; margin-left: 20px">
                    <span class="pull-left">系统消息通知</span>
                    </div>
                    <div class="margin_20">

                        <!-- Nav tabs -->
                        <ul class="nav_self nav-tabs" role="tablist" style="margin-top: 50px">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">未读通知</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">全部通知</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home" >
                                <table  id="NoticeWeiDuQuAll" class="table table-hover table-striped" >
                                   <%-- <tbody>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-danger btn-width" disabled="disabled">高</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-success btn-width" disabled="disabled">低</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-warning btn-width" disabled="disabled">中</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-warning btn-width" disabled="disabled">中</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-warning btn-width" disabled="disabled">中</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-danger btn-width" disabled="disabled">高</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-success btn-width" disabled="disabled">低</button></td>
                                    </tr>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button type="button" class="btn btn-success btn-width" disabled="disabled">低</button></td>
                                    </tr>

                                    </tbody>--%>
                                </table>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="profile">
                                <table  id="NoticeAll" class="table" >
                      <%--          <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td>内容内容</td>
                                        <td><button></button></td>
                                    </tr>
                                    <tr>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                    </tbody>
                                </table>--%>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="col-md-12">
                    <div class="boxSize borderStyle">
                        <div class="margin_20 colorSilver">
                            <div class="tzgg">
                                <div class="title clearfix">
                                    <span class="pull-left">采购商品排行榜</span>
                                    <%--<a class="pull-right">更多>></a>--%>
                                </div>
                                <ul id="redis" class="tzgglist">

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row"></div>
                <div class="col-md-12" style="margin-top: 30px">
                    <div class="boxSize borderStyle">
                        <div class="margin_20">
                            <div class="ycj">
                                <div class="title">
                                    <span>活动</span>
                                </div>
                                <div id="chart1"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </DIV>
    </div>
</div>
<script>
    var myChart1 = echarts.init(document.getElementById('chart1'));
    //入口函数
    $(function () {
        //查看所有未读取通知
        NoticeWeiDuQuAll();
        //查看所有通知
        NoticeAll();
        //采购排行榜
        paiHangBang();

    })


    /*------------------以上查看所有未读取通知的table表格-------------------------分割线-------------------开始------------------------------*/
    //查看所有未读取通知
    function NoticeWeiDuQuAll() {
        $("#NoticeWeiDuQuAll").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/LoginController/NoticeWeiDuQuAll",
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
      /*      pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client*/
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "通知标题",
                    field: 'noticeName',
                    align: 'center' // 居中显示
                }, {
                    title: "发布时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "发起人",
                    field: 'initiator',
                    align: 'center' // 居中显示
                },{
                    title: "通知状态",
                    field: 'noticeStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.noticeStatus == 0) {
                            return "未读";
                        }
                    }
                }, {
                    title: "操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.noticeStatus == 0) {
                            return "<a class='btn btn-success' onclick='DuQuNotice(" + row.id + ")' role='button' >读取</a>";
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
    /*------------------以上查看所有未读取通知的table表格-------------------------分割线-------------------结束------------------------------*/


    /*------------------通知管理读取------------------ --------------------分割线-------------------开始------------------------------*/
    //通知管理读取
    function DuQuNotice(id) {
        $("#id").val(id);
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/LoginController/DuQuNotice?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("通知已读取！！")
                        window.location.reload();
                    } else {
                        alert("读取失败（查看填写信息是否有误）！！")
                    }
                }
            })
    }
    /*------------------通知管理读取------------------ --------------------分割线-------------------结束------------------------------*/


    /*------------------以上查看所有通知的table表格-------------------------分割线-------------------开始------------------------------*/
    //查看所有通知
    function NoticeAll() {
        $("#NoticeAll").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/LoginController/NoticeAll",
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
/*            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client*/
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "通知标题",
                    field: 'noticeName',
                    align: 'center' // 居中显示
                }, {
                    title: "发布时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "发起人",
                    field: 'initiator',
                    align: 'center' // 居中显示
                },{
                    title: "通知状态",
                    field: 'noticeStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.noticeStatus == 0) {
                            return "未读";
                        }else if (row.noticeStatus == 1) {
                            return "已读";
                        }
                    }
                },{
                    title: "操作人",
                    field: 'operator',
                    align: 'center', // 居中显示
                },{
                    title: "操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.noticeStatus == 0) {
                            return "<a class='btn btn-success' onclick='DuQuNotice(" + row.id + ")' role='button' >读取</a>";
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

    /*------------------以上查看所有通知的table表格-------------------------分割线-------------------结束------------------------------*/

    /*------------------以上采购商品排行榜-------------------------分割线-------------------开始------------------------------*/
    var  num = 0;
    function paiHangBang() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/credis",
            dataType: "json",
            success:function (data) {
                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        num++;
                        var item = data[i];
                        var a=item.split("_")
                        $("<li><span class=\"pull-right\">&gt</span>\n" +
                            "        <a href=\"#\"> +"+""+a[0]+"  -  "+a[2]+""+"  -  "+a[1]+""+a[3]+"</a>\n" +
                            "    </li>").appendTo("#redis");
                    }
                } else {
                    alert("查询排行榜失败")
                }
            }
        })
    }
    /*------------------以上采购商品排行榜-------------------------分割线-------------------结束------------------------------*/

</script>
</body>
</html>
