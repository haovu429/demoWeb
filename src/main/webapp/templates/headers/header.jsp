<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
</head>
<header>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark nav-tabs">
        <!-- Brand -->
        <a class="navbar-brand" href="#">
            <img src="resource/image/icon/a3h_logo2.ico"  alt="a3h_logo">
        </a>

        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/home/home.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/download">Download</a>
            </li>

            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    Other
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/emailList">Join email</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/table/table.jsp">Table</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/cart">Buy Music</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/ExecuteMySQL.jsp">MySQL</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/TestBoxChat.jsp">Test Boxchat</a>
                </div>
            </li>
        </ul>
    </nav>
</header>
</html>
