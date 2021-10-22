<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: caiho
  Date: 10/15/2021
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crush Image</title>

</head>
<body>
    <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    <img src="<c:url value='resources/images/ktmt_hn.png'/>" alt="My crush" class="center">
    <br><br>
    <h3 style="color: red">KTMT-HN chưa bao giờ yêu tôi vì tôi chỉ được 6 điểm :)</h3>
    <br>
    <button type="button" onclick="quay_lai_trang_truoc()">Return</button>
    <br>
    <h4>trang này sử dụng biến khởi tạo cho servlet Email</h4>
    <script>
        function quay_lai_trang_truoc(){
            history.back();
        }
    </script>
</body>
</html>
