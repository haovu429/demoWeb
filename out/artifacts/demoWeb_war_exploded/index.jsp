
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="1;url=<%=request.getContextPath()%>/home/home.jsp">
    <script type="text/javascript">
        window.location.href = "<%=request.getContextPath()%>/home/home.jsp"
    </script>
    <title>Page Redirection</title>
</head>
<body>
If you are not redirected automatically, follow the <a href='<%=request.getContextPath()%>/home/home.jsp'>link to our homepage.</a>
</body>
</html>