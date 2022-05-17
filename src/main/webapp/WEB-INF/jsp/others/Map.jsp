<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 01cli
  Date: 2022-04-18
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>오시는 길 | 지성소프트</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Favicon
  ================================================== -->
    <link rel="icon" type="image/png" href="images/favicon.png">

    <link href="<c:url value='/'/>css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >

    <link href="<c:url value='/'/>css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">


    <link href="<c:url value='/'/>font-awesome/css/font-awesome.css" rel="stylesheet">


    <link href="<c:url value='/'/>css/style2.css" rel="stylesheet">

    <link href="<c:url value='/'/>css/style.css" rel="stylesheet" >
    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet">
    <style>
    </style>
</head>


<body ><%@include file="/WEB-INF/jsp/main/header.jsp" %>
    <section class="body-inner" style="min-height: calc(100vh - 255px);">
        <div class="main-container ">
            <div class="row justify-content-center text-center">
                <div class="text-center article-title" style="margin-bottom: 30px">
                    <h1>
                        오시는 길
                    </h1>
                </div>
            </div>
        </div>
        <div class="main-container">

            <div class="col-md-12">
                    <div id="map" style="width:100%; height:500px;"></div>
            </div>
            <div class="col-md-6">
                <blockquote>
                    <div class="entry-header">
                        <h2 class="entry-title">
                            오시는 길
                        </h2>
                    </div><!-- header end -->
                    <div class="entry-content">
                        대구시 서구 와룡로65길  28 태백빌딩 409호
                    </div>
                </blockquote>
            </div>
        </div>
    </section>

<%@include file="/WEB-INF/jsp/main/footer.jsp" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a79c9b6e29d7cd685badb80476de25a&libraries=services,clusterer,drawing"></script>
<script>
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(35.86213, 128.53418), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };

    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    var marker = new kakao.maps.Marker({
        map: map,
        position : new kakao.maps.LatLng(35.86213, 128.53418)
    });
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px; text-align:center;padding:6px 0;">지성소프트</div>'
    });
    infowindow.open(map, marker);


</script>


    <!-- initialize jQuery Library -->
    <script src="<c:url value='/'/>constra/plugins/jQuery/jquery.min.js"></script>
    <!-- Bootstrap jQuery -->
    <script src="<c:url value='/'/>constra/plugins/bootstrap/bootstrap.min.js" defer></script>
    <!-- Slick Carousel -->
    <script src="<c:url value='/'/>constra/plugins/slick/slick.min.js"></script>
    <script src="<c:url value='/'/>constra/plugins/slick/slick-animation.min.js"></script>
    <!-- Color box -->
    <script src="<c:url value='/'/>constra/plugins/colorbox/jquery.colorbox.js"></script>
    <!-- shuffle -->
    <script src="<c:url value='/'/>constra/plugins/shuffle/shuffle.min.js" defer></script>

    <!-- Template custom -->
    <script src="<c:url value='/'/>constra/js/script.js"></script>


</body>

</html>
