<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>A3HHH Xin chào quý khách!</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%--
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
--%>
    <style>
        .form_email{
            background-color: #e9d8f4;
            color: #17a279;
            padding: 20px;
            text-align: left;
            <%--border--%>

            border: 20px solid;
            padding: 60px;
        }

    </style>
</head>
<body>
    <header>
        <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    </header>

    <section>
        <div class="form_email">
            <h1> Join our email list</h1>
            <p> To join our email list, enter your name and
                email address below.</p>
            <p><span style="color: red">${message}</span></p>
            <form action="<%=request.getContextPath()%>/emailList" method="post">
                <input type="hidden" name="action" value="add">
                <label class="pad_top">Email:</label>
                <input type="email" name="email" value="${user.email}"><br>
                <span id="email_address_error">*</span>
                <label class="pad_top">First Name:</label>
                <input type="text" name="fistName" value="${user.firstName}" ><br>
                <span id="firstName_error">*</span>
                <label class="pad_top">Last Name:</label>
                <input type="text" name="lastName" value="${user.lastName}" ><br>

                <label>&nbsp;</label>
                <input type="submit" value="Join Now" id="submit"><br>
            </form>
        </div>
    </section>

    <footer>
        <jsp:include page="/templates/footers/footer.jsp"/>
    </footer>

</body>
</html>