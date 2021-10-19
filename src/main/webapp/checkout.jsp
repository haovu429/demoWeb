<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
</head>
<body>
    <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    <h1>Checkout isn't finished yet</h1>
    <p>Click on the browser's Back button to continue.</p>

    <button type="button" onclick="quay_lai_trang_truoc()">Return</button>
    <script>
        function quay_lai_trang_truoc(){
            history.back();
        }
    </script>

    <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>