
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>服务器二</title>
    <script src="${pageContext.request.contextPath}/index/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<script>
    $(function () {
        login();
    })

    function login() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/dengLuSession",
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("用户已登录成功")
                    window.location.href="${pageContext.request.contextPath}/jsps/demo/two.jsp";
                } else {
                    alert('请您登录');
                    window.location.href="${pageContext.request.contextPath}/jsps/demo/myerror.jsp";
                }
            }
        })
    }

</script>




</body>
</html>
