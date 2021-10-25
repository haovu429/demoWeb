<%--
  Created by IntelliJ IDEA.
  User: caiho
  Date: 10/19/2021
  Time: 6:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="apple-touch-icon" sizes="57x57" href="/resources/images/icon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/images/icon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/resources/images/icon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/images/icon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/resources/images/icon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/images/icon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/resources/images/icon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/images/icon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/images/icon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/resources/images/icon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/images/icon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/resources/images/icon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/images/icon/favicon-16x16.png">
    <link rel="manifest" href="/resources/images/icon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <LINK REL="SHORTCUT ICON"  HREF="/resources/images/icon/running-shoes-1.ico">
    <link rel="shortcut icon" href="/resources/images/favicon(1).ico" type="image/x-icon" />
    <%--<link rel='shortcut icon' href='/resources/images/favicon(1).ico' />--%>
</head>
<body>
    <%--<jsp:include page="/templates/headers/header.jsp"></jsp:include>--%>
    <h1>Đây là trang test boxchat!</h1>
    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
        var chatbox = document.getElementById('fb-customer-chat');
        chatbox.setAttribute("page_id", "108265524976346");
        chatbox.setAttribute("attribution", "biz_inbox");

        window.fbAsyncInit = function() {
            FB.init({
                xfbml            : true,
                version          : 'v12.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
</body>
</html>
