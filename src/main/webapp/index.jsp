<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>追云OA系统</title>
    <link type="text/css" href="/index/css/login.css" rel="stylesheet">
    <link type="text/css" href="/index/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="login_box">
    <div class="col-md-12 login_top"></div>
    <div class="row login_header">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="col-md-10 login_title">
                <img src="/index/images/loginlogo.png" style="width: 290px;height: 80px;margin-top:40px">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="row login_body">
            <div class="col-md-2"></div>
            <div class="col-md-4 login_img"><img class="login_img" src="/index/images/loginimg.png" style="width: 534px;height: 510px"/></div>
            <div class="col-md-1"></div>
            <div class="col-md-3 login">
                <div class="login_logo">
                    <a href="#"><img src="/index/images/adminlogo.png"/></a>
                </div>
                <div class="login_name">
                    <p><font style="font-size: 24px; ">追云OA系统登录</font></p>
                </div>
                <form>
                    <input name="loginId" type="text" id="loginId" placeholder="用户名">
                    <input name="password" type="password" id="password" placeholder="密码">
                    <input value="登录" style="width:100%;" type="button" id="submit">
                </form>

            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
    <div class="row login_footer">
        <div class="col-md-3">
        </div>
        <div class="col-md-6 copyright">
            <div style="margin-top: 50px"><font style="font-size: 18px;color: #888888">追云OA系统 版权所有©2019-2020
                技术支持电话：101-01010101</font></div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath }/index/js/jquery-1.10.2.js"></script>

<script>

    $(function () {

        $("#submit").click(function () {
            var loginId = $('#loginId').val();
            var password = $('#password').val();
            $.ajax({
                url: '${pageContext.request.contextPath }/LoginController/indexUser',
                type: "POST", //提交方式
                data: {loginId: loginId, password: password},
                dataType: 'json',
                success: function (data) {
                    if(data){
                    window.location.href = "${pageContext.request.contextPath }/jsps/bootstarp.jsp"
                    }else {
                        alert("")
                    }
                }
            })
        })

    })






</script>


</body>
</html>
