<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.min.css" rel="stylesheet"/>

    <script src="${pageContext.request.contextPath}/index/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/locale/bootstrap-table-zh-CN.min.js"></script>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #438eb9">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar">
                        </span><span class="icon-bar"></span></button>
                    <span class="navbar-brand"
                          style="color: white; margin-left: 80px; font-size: 24px">欢迎登录追云OA系统</span>
                    <span class="navbar-brand" style="color: white; margin-left: 850px; font-size: 18px" id="time">2018-8-28</span>
                </div>
                <ul class="nav navbar-nav navbar-right" style="margin-right: 20px">
                    <li>
                        <a style="color: white; margin-right: 100px; font-size: 18px">欢迎您【${sessionScope.userSession.userName}】</a>
                    </li>
                    <li>
                        <button type="button" style="margin-top:15% " class="btn btn-danger" id="loginOut">注销</button>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<div style="margin-top: 60px">
    <div class="col-lg-2 column" style="background-color: #f5f5f5;padding: 10px;height: 91%">
        <div class="panel-group" id="panel-522402">
            <%--首页--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-522402">首页</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-10 column">
        <ul class="breadcrumb">
            <li>
                <a href="#" id="Home" style="font-size: 16px">主页</a>
            </li>
            <li class="active" id="Three">

            </li>
        </ul>
        <iframe id="iframe" src="${pageContext.request.contextPath}/jsps/page.jsp"
                style="width: 100%;height: 83%;border: 1px dashed gray;"></iframe>

    </div>
</div>
</body>
</html>
<script>
    //iframe控制
    $(document).on('click', '.iframeurl', function () {
        var url = '${pageContext.request.contextPath}/' + $(this).attr("name");
        console.log(url)
        var cname = $(this).attr("title");
        var id = $(this).parent().parent().parent().attr('id');
        console.log(id)
        $("#iframe").attr("src", url).ready();
        //导航条
        $("#Three").html(cname);
    });
</script>
<script>
    //左树权限控制
    $(function () {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/LoginController/getPowerById",
            dataType: "json",
            success: function (data) {
                if (data) {
                    console.log(data);
                    power(data);
                } else {
                    alert('用户名或密码错误');
                    console.log(data.message);
                }
            }
        })
    })

    //左树添加
    function power(data) {
        var text = '';
        var head = '<div class="panel panel-default">\n' +
            '    <div class="panel-heading">';

        var end = '</div>';
        for (var i = 0; i < data.length; i++) {
            var zclass = '';
            var body = '';
            //唯一id 权限名
            var id = 'panel-element-2' + i
            var p = data[i].power;
            //折叠页面 一级权限
            zclass = "<a class=\"panel-title collapsed\" data-toggle=\"collapse\" data-parent=\"#panel-522402\" href=\"#" + id + "\">" + p + "</a>"
            body = "<div id=\"" + id + "\" class=\"panel-collapse collapse\">"
            var ztext = '';
            for (var j = 0; j < data[i].powerList.length; j++) {
                var test = data[i].powerList[j].power;
                var url = data[i].powerList[j].url;
                //二级权限
                ztext += "<div class=\"panel-body\">\n" +
                    "            <li class=\"home\"><a href=\"javascript:void(0)\" name=\"" + url + "\" class=\"iframeurl\" title=\"" + test + "\"><span class=\"menu-text\"> " + test + " </span></a></li>\n" +
                    "    </div>"
            }
            //拼接
            text += head + zclass + end + body + ztext + end + end;
        }
        console.log(text)
        $("#panel-522402").append(text);
    }

    //用户退出
    $('#loginOut').on('click', function () {
        if (window.confirm('您确定要退出系统吗？')) {
            $.ajax({
                type: 'post',
                url: '/LoginController/indexOutUser',
                success: function (data) {
                    if (data) {
                        location.href = "${pageContext.request.contextPath}/../index.jsp";
                    }
                    //取消注册
                }
            })
        } else {
            //alert("取消");
            window.location.reload();
            return false;
        }
    })

    function fn() {
        var time = new Date();
        var str = "";
        var div = document.getElementById("time");
        var year = time.getFullYear();
        var mon = time.getMonth() + 1;
        var day = time.getDate();
        var h = time.getHours();
        var m = time.getMinutes();
        var s = time.getSeconds();
        var week = time.getDay();
        switch (week) {
            case 0:
                week = "日";
                break;
            case 1:
                week = "一";
                break;
            case 2:
                week = "二";
                break;
            case 3:
                week = "三";
                break;
            case 4:
                week = "四";
                break;
            case 5:
                week = "五";
                break;
            case 6:
                week = "六";
                break;
        }
        str = year + "年" + totwo(mon) + "月" + totwo(day) + "日" + "&nbsp;" + totwo(h) + ":" + totwo(m) + ":" + totwo(s) + "&nbsp;" + "星期" + week;
        div.innerHTML = str;
    }

    fn();
    setInterval(fn, 1000);

    function totwo(n) {
        if (n <= 9) {
            return n = "0" + n;
        } else {
            return n = "" + n;
        }
    }

</script>
