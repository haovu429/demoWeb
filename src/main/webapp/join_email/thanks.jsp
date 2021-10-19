
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Servlet and JSP</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css">--%>
    <style>
        .form_email{
            background-color: #e9d8f4;
            color: #17a279;
            padding: 20px;
            text-align: center;

            border: 20px solid;
            padding: 60px;
        }
    </style>
</head>

<body>

    <header>
        <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    </header>
    <section class="form_email">
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>

        <label>Email:</label>
        <span>${initParam.custServEmail}--> cái này em test initparam với EL</span><br>

        <label>First Name:</label>
        <span>${user.firstName}</span><br>

        <label>Last Name:</label>
        <span>${user.lastName}</span><br>

        <p>To enter anther email address, click on the Back
            button in your browser or the Return button shown below.</p>

        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
        <br><br>
        <%--<%@ page import="com.haovu.business.User" %>
        <%
            User user = (User) request.getAttribute("user");
            if (user == null) {
                user = new User();
            }
        %>--%>
        <%--<%
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String emailAddress = request.getParameter("emailAddress");

            /*
            User user = new User(firstName, lastName, emailAddress);
            UserDB.insert(user);
            */
        %>--%>

        <jsp:useBean id="user" scope="request" class="com.haovu.business.User"/>
        <h4>Đã đổi tên user bằng thẻ jsp:setProperty ở đây!</h4>
        <jsp:setProperty name="user" property="firstName" value="Hao dep trai"></jsp:setProperty>
        <h4>Dưới đây là thuộc tính lấy từ lớp java Bean bằng thẻ jsp:getProperty </h4>
        <span>First Name: <jsp:getProperty name="user" property="firstName"></jsp:getProperty></span>
        <br><br>
        <c:if test="${crushImage != null}">
            <a href="<c:url value='${crushImage}'></c:url>">My Crush</a>
        </c:if>
        <br><br>
        <a href="<c:url value="https://www.youtube.com/watch?v=K4CbYId4wKw"/>">chill</a>
    </section>

    <footer>
        <jsp:include page="/templates/footers/footer.jsp"/>
    </footer>
</body>
</html>