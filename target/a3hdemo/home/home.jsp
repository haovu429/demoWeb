<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Home</title>
</head>
<body>
    <header>
        <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    </header>
    <section style="color: burlywood; font-family: 'Roboto Light';font-size: larger">
        <h1>Chào mừng bạn đến với bài thuyết trình của nhóm 1</h1>
        <%--<h2>Hãy thoả sức lựa chọn những đôi giày mang phong cách của bạn</h2>--%>
        <div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 48px; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
            <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
                    src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAEt7XRbJhE&#x2F;view?embed">
            </iframe>
        </div>
        <a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAEt7XRbJhE&#x2F;view?utm_content=DAEt7XRbJhE&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">Bản sao của Trường THPT Diễn Châu 4</a> Hải Lê Vũ
    </section>
    <!--End of Tawk.to Script-->
    <a id="scrollUp" href="#top" title="Lên Top" style="position: fixed; z-index: 2147483647; display: block;"><i class="ion-android-arrow-up"></i></a>
    <footer>
        <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
    </footer>

</body>
</html>

