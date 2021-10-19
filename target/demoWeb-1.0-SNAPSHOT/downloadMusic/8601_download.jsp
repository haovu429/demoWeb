<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>  test link--%>
    <style>
        .container {
            position: relative;
            overflow: hidden;
            width: 100%;
            padding-top: 56.25%; /* 16:9 Aspect Ratio (divide 9 by 16 = 0.5625) */
        }

        /* Then style the iframe to fit in the container div with full height and width */
        .responsive-iframe {
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<%--<jsp:include page="/templates/headers/header.jsp"></jsp:include>--%>
<h1>Downloads</h1>

<h2>86 (the band) - True Life Songs and Pictures</h2>

<%--<h5>link: <c:url value='/musicStore/sound/8601/star.mp3'/></h5>--%>
<table>
    <tr>
        <th>Song title</th>
        <th>player</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>You Are a Star</td>
        <td>
            <audio controls autoplay name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                <source src="<c:url value='/musicStore/sound/8601/star2.mp3'/>" type="audio/mp3">
            </audio>
        </td>
        <td>  <%--<c:url value='/musicStore/sound/8601/star.mp3'/>--%>
            <a href="<c:url value='/musicStore/sound/8601/star2.mp3'/>" target="_blank"
               download="DuskTillDawn-ZaynSia">MP3</a>
            <%--/musicStore/sound/${productCode}/star.mp3 --%>
        </td>
    </tr>
    <tr>
        <td>Don't Make No Difference</td>
        <td> <%--Nguồn: https://mp3-malina.me/tracks/86%20the%20Band--%>
            <audio controls name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                <source src="<c:url value='https://track.mp3-malina.me/download-track/33313731b1b43432308c3731353331303035350000/f8cdd3fd0ec6ca2c065d900d0cbdd1cf/86%20the%20Band%20-%20Don%27t%20Make%20No%20Difference.mp3'/>" type="audio/mp3">
            </audio> <%--đối vói chrom autostart="0" thì file sẽ không tự động chạy--%>
        </td>

        <td>
            <a href="<c:url value='https://track.mp3-malina.me/download-track/33313731b1b43432308c3731353331303035350000/f8cdd3fd0ec6ca2c065d900d0cbdd1cf/86%20the%20Band%20-%20Don%27t%20Make%20No%20Difference.mp3'/>" target="_blank"
               download="Don't Make No Difference">MP3</a>
        </td>
    </tr>
</table>
<video width="427" height="240" controls >
    <source src="<c:url value='/musicStore/sound/8601/star.mp4'/>" type="video/mp4"> Your browser does not support the video tag.
</video>

<%--<div class="container">
    <iframe class="responsive-iframe" src="https://www.youtube.com/watch?v=ChASNixRJtc"></iframe>
</div>--%>
<br><br>
<button type="button" onclick="quay_lai_trang_truoc()">Return</button>


<script>
    function quay_lai_trang_truoc(){
        history.back();
    }
</script>
<%--

<h4>Hoạt hình giải trí tí nè -_^</h4>
<iframe width="699" height="393" src="https://www.youtube.com/embed/ChASNixRJtc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
--%>
<%--<div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/watch?v=Cm65S3How94" allowfullscreen></iframe>
</div>--%>

<jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>
