<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Table</title>
    <style>
        table{
            border: 50px solid burlywood;
            border-collapse: collapse;
        }
        th, td{
            border: 1px solid black;
            text-align:  left;
            padding: 0.5em;
        }
        .align_right{
            text-align: right;
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    </header>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Code</th>
            <th scope="col">Description</th>
            <th scope="col" class = "align_right">Price</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">pf01</th>
            <td>Paddlefoot - The first CD</td>
            <td class = "align_right">12.95</td>
        </tr>
        <tr>
            <th scope="row">jr01</th>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td class = "align_right">14.95</td>
        </tr>
        </tbody>
    </table>

    <table>
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th class = "align_right">Price</th>
        </tr>
        <tr>
            <td>pf01</td>
            <td>Paddlefoot - The first CD</td>
            <td class = "align_right">12.95</td>
        </tr>
        <tr>
            <td>jr01</td>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td class="align_right">14.95</td>
        </tr>
    </table>
    <footer>
        <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
    </footer>
</body>
</html>