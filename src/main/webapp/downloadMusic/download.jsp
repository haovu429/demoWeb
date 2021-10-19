<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<%!

%>
<html>
<head>
    <meta charset="utf-8">
    <title>Download</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
</head>
<body>
<jsp:include page="/templates/headers/header.jsp"></jsp:include>
<h1>List of albums</h1>

<p>
    <a href="download?action=checkUser&amp;productCode=8601">
        86 (the band) - True Life Songs and Pictures
    </a><br>

    <a href="download?action=checkUser&amp;productCode=pf01">
        Paddlefoot - The First CD
    </a><br>
    <a href="download?action=checkUser&amp;productCode=pf02">
        Paddlefoot - The Second CD
    </a><br>

    <a href="download?action=checkUser&amp;productCode=jr01">
        Joe Rut - Genuine Wood Grained Finish
    </a>
</p>
<form action="<%=request.getContextPath()%>/download" method="get">
    <input type="hidden" name="action" value="showCookies">
    <input type="submit" value="Show cookies">
</form>
<br>
<form action="<%=request.getContextPath()%>/download" method="get">
    <input type="hidden" name="action" value="removeCookies">
    <input type="submit" value="Remove cookie">
</form>
<jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>

