<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
</head>
<body>
<jsp:include page="/templates/headers/header.jsp"></jsp:include>
<h1>Download registration</h1>

<p>To register for our downloads, enter your name and email
    address below. Then, click on the Submit button.</p>
<form action="download" method="post">
    <input type="hidden" name="action" value="registerUser">
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}" required><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}" required><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}" required><br>
    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin_left">
</form>
<jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>

</html>

