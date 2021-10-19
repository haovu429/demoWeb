<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>delete Cookies</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
</head>
<body>
<jsp:include page="/templates/headers/header.jsp"></jsp:include>
<h1>Cookies</h1>

<p>All persistent cookies have been removed from this browser.</p>

<p><a href="download?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=showCookies">View all cookies</a></p>

<button type="button" onclick="quay_lai_trang_truoc()">Return</button>
<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>

<jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>