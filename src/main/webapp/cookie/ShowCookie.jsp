
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show Cookies</title>
</head>
<body>
<jsp:include page="/templates/headers/header.jsp"></jsp:include>
<table>

    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    <c:forEach var="c" items="${cookie}">
        <tr>
            <td>${c.value.name}</td>
            <td>${c.value.value}</td>
        </tr>
    </c:forEach>
</table>
<br>
<button type="button" onclick="quay_lai_trang_truoc()">Return</button>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>

<jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>

