<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>조직도 | 지성소프트</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <link href="<c:url value='/'/>plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >


    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/style2.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" type="text/css" >

</head>
<body style="min-height: calc(100vh - 255px);">

<div class="body-inner" >

    <%@include file="/WEB-INF/jsp/main/header.jsp" %>
    <div id="main-container" class="main-container" style="min-height: 75.8%">
        <div class="container" >
            <div class=" justify-content-center text-center ">
                <div class="text-center article-title">
                    <h1>
                        조직도
                    </h1>
                </div>
            </div>
            <div class="col-lg-12" >
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="content">
                            <img src="<c:url value='/'/>images/organization.png">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/main/footer.jsp" %>



<!-- Mainly scripts -->
<script src="<c:url value='/'/>js/jquery-2.1.1.js"></script>
<script src="<c:url value='/'/>js/bootstrap.min.js"></script>
<script src="<c:url value='/'/>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value='/'/>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value='/'/>js/inspinia.js"></script>
<script src="<c:url value='/'/>js/plugins/pace/pace.min.js"></script>
<!-- Ladda -->
<script src="<c:url value='/'/>js/plugins/ladda/spin.min.js"></script>
<script src="<c:url value='/'/>js/plugins/ladda/ladda.min.js"></script>
<script src="<c:url value='/'/>js/plugins/ladda/ladda.jquery.min.js"></script>
<script src="<c:url value='/'/>src/sweetalert.js"></script>


<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>
<!-- Peity -->
<script src="<c:url value='/'/>js/plugins/peity/jquery.peity.min.js"></script>
<!-- Peity demo -->
<script src="<c:url value='/'/>js/demo/peity-demo.js"></script>
<script src="<c:url value='/'/>js/vendors.bundle.js"></script>
<!-- Toastr script -->
<script src="<c:url value='/'/>js/plugins/toastr/toastr.min.js"></script>

</body>
</html>