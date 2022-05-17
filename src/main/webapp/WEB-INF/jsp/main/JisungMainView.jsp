<%@ page import="egovframework.com.cmm.LoginVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring-commons-validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%--
  Created by IntelliJ IDEA.
  User: 01cli
  Date: 2022-04-15
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>지성소프트</title>

    <!-- Mobile Specific Metas
  ================================================== -->
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
        .call-to-action {
            background-color: #272d33;
            padding: 30px;
        }

        .action-title {
            color: #fff;
            margin: 0;
            line-height: 36px;
            font-size: 18px;
            text-transform: uppercase;
        }
    </style>
</head>
<body><%@include file="/WEB-INF/jsp/main/header.jsp" %>
<div class="body-inner">
    <div class="main-container min-mh-100">
        <div class="banner-carousel banner-carousel-2 mb-0">
            <div class="banner-carousel-item" style="background-image:url(<c:url value='/'/>images/slider-main/bg4.jpg)">
                <div class="container">
                    <div class="box-slider-content">
                        <div class="box-slider-text">
                            <h2 class="box-slide-title">Higher productivity</h2>
                            <h3 class="box-slide-sub-title">고도의 생산성 향상</h3>
                            <p class="box-slide-description">지성소프트는 제조 업종에 특화된 ERP.MES 솔루션을 전문적으로 컨설팅합니다.
                                특히, 현업 실무 경험을 바탕으로 산업구별 특화된 기능 및 컨설팅 서비스를 제공하고 있습니다. </p>
                            <p>
                                <a href="<c:url value='/cop/bbs/introduce.do' />" class="slider btn btn-primary">회사소개</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-carousel-item" style="background-image:url(<c:url value='/'/>images/slider-main/bg5.jpg)">
                <div class="slider-content text-left">
                    <div class="container">
                        <div class="box-slider-content">
                            <div class="box-slider-text">
                                <h2 class="box-slide-title">Informatization-based Business Innovation Consulting Company</h2>
                                <h3 class="box-slide-sub-title">정보화 기반 기업혁신 컨설팅 회사</h3>
                                <p class="box-slide-description">4차 산업혁명의 사회의 환경에서 경쟁력 우위를 점하기 위한 효과적인 고객지향적 Smart Factory 컨설팅을 제공합니다.</p>
                                <p><a href="<c:url value='/cop/bbs/contactWrite.do' />" class="slider btn btn-primary" aria-label="about-us">온라인 문의</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="call-to-action " >
            <div class="container">
                <div class="action-style-box">
                    <div class="row">
                        <div class="col-md-8 text-center text-md-left">
                            <div class="call-to-action-text">
                                <h3 class="action-title">지성소프트는 고객이 원하는 최상의 서비스를 드릴것을 약속합니다. </h3>
                            </div>
                        </div><!-- Col end -->
                        <div class="col-md-4 text-center text-md-right mt-3 mt-md-0">
                            <div class="call-to-action-btn">
                                <a class="btn btn-primary" href="<c:url value='/cop/bbs/contactWrite.do' />">문의하기</a>
                            </div>
                        </div><!-- col end -->
                    </div><!-- row end -->
                </div><!-- Action style box -->
            </div><!-- Container end -->
        </section><!-- Action end -->

        <section id="project-area" class="project-area solid-bg">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-12">
                        <h2 class="section-title">Recent Projects</h2>
                        <h3 class="section-sub-title">구축사례</h3>
                    </div>
                </div>
                <!--/ Title row end -->

                <div class="row">
                    <div class="col-12">
                        <div class="row shuffle-wrapper">
                            <div class="col-1 shuffle-sizer"></div>

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;government&quot;,&quot;healthcare&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project1.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project1.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='http://jisungfood.kr/'/>">지성식품</a>
                                            </h3>
                                            <p class="project-cat">식품제조가공, 농산물 가공품 수출입</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 1 end -->

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;healthcare&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project2.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project2.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='http://www.hankookcs.com/'/>">한국씨엔에스</a>
                                            </h3>
                                            <p class="project-cat">합성고무제조업/특수윤활유/산업용윤활유첨가제/탈취제</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 2 end -->

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;infrastructure&quot;,&quot;commercial&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project3.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project3.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='/'/>#">일동아이엠씨</a>
                                            </h3>
                                            <p class="project-cat">선별산업기계.설비제작,위생용종이제품 수출</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 3 end -->

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;education&quot;,&quot;infrastructure&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project4.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project4.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='http://www.inhapoologi.co.kr/'/>">인하풀로지</a>
                                            </h3>
                                            <p class="project-cat">마스크제조 수입 및 판매업체</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 4 end -->

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;infrastructure&quot;,&quot;education&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project5.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project5.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='http://www.woojintech.kr/'/>">우진테크</a>
                                            </h3>
                                            <p class="project-cat">산업용기계,태양광발전업 임대</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 5 end -->

                            <div class="col-lg-4 col-md-6 shuffle-item" data-groups="[&quot;residential&quot;]">
                                <div class="project-img-container">
                                    <a class="gallery-popup" href="<c:url value='/'/>images/projects/project6.jpg" aria-label="project-img">
                                        <img class="img-fluid" src="<c:url value='/'/>images/projects/project6.jpg" alt="project-img">
                                        <span class="gallery-icon"><i class="fa fa-plus"></i></span>
                                    </a>
                                    <div class="project-item-info">
                                        <div class="project-item-info-content">
                                            <h3 class="project-item-title">
                                                <a href="<c:url value='http://www.kuti.co.kr/'/>">구띠</a>
                                            </h3>
                                            <p class="project-cat">직물검사,원단검사,포장섬유</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- shuffle item 6 end -->
                        </div><!-- shuffle end -->
                    </div>

                    <div class="col-12">
                        <div class="general-btn text-center">
                            <a class="btn btn-primary" href="<c:url value='/cop/bbs/history.do' />">더보기</a>
                        </div>
                    </div>

                </div><!-- Content row end -->
            </div>
            <!--/ Container end -->
        </section><!-- Project area end -->

    </div>

    <%@include file="/WEB-INF/jsp/main/footer.jsp" %>

</div>
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


    <!-- Google Map API Key-->
    <script src="<c:url value='/'/>https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
    <!-- Google Map Plugin-->
    <script src="<c:url value='/'/>constra/plugins/google-map/map.js" defer></script>

    <!-- Template custom -->
    <script src="<c:url value='/'/>constra/js/script.js"></script>



<!-- Body inner end -->
</body>

</html>
