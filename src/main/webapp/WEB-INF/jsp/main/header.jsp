<%@ page import="egovframework.com.cmm.LoginVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring-commons-validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%--&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: 01cli
  Date: 2022-04-18
  Time: 오후 12:51
  To change this template use File | Settings | File Templates.
&ndash;%&gt;--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!-- Header start -->



    <!--/ Topbar end -->
    <header id="header" class="header-one">
        <%-- <div class="site-navigation navbar-fixed">--%>
        <div class="bg-white">
            <div class="container">
                <div class="logo-area">
                    <div class="row align-items-center">
                        <div class="logo col-lg-3 text-center text-lg-left mb-3 mb-md-5 mb-lg-0">
                            <a class="d-block" href="<c:url value='/'/>index.jsp">
                                <img class="imageee" loading="lazy" src="<c:url value='/'/>images/com_logo.png" alt="Constra">
                            </a>
                        </div><!-- logo end -->

                        <div class="col-lg-9 header-right">

                        </div><!-- header right end -->
                    </div><!-- logo area end -->

                </div><!-- Row end -->
            </div><!-- Container end -->
        </div>
        <div class="site-navigation " style="">

            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-dark p-0">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div id="navbar-collapse" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav mr-auto align-items-center">
                                    <li class="nav-item dropdown ">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">회사소개 <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<c:url value='/cop/bbs/introduce.do' />">회사소개</a></li>
                                            <li><a href="<c:url value='/cop/bbs/organization.do' />">조직도</a></li>
                                            <li><a href="<c:url value='/cop/bbs/system.do' />">기업비즈니스</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">스마트공장 <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<c:url value='/cop/bbs/smartFactory.do' />">스마트공장이란</a></li>
                                            <li><a href="<c:url value='/cop/bbs/government.do' />" >정부지원사업</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a href="<c:url value='/cop/bbs/history.do' />" class="nav-link dropdown-toggle" data-toggle="dropdown">구축사례</a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<c:url value='/cop/bbs/history.do' />">구축사례 </a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">솔루션 <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<c:url value='/cop/bbs/mes.do' />">MES</a></li>
                                            <li><a href="<c:url value='/cop/bbs/smartFarm.do' />">스마트팜</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">고객지원 <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<c:url value='/cop/bbs/googleMaps.do' />">오시는길</a></li>
                                            <li><a href="<c:url value='/cop/bbs/notice.do'/>">공지사항</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="nav">
                                    <li class="header-get-a-quote" >
                                        <%
                                            LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");
                                            if(loginVO == null){
                                        %>
                                        <a class="btn btn-primary" href="<c:url value='/cop/bbs/contactWrite.do' />" >온라인문의</a>
                                        <% } else if (loginVO !=null ){ %>
                                        <a class="btn btn-primary" href="<c:url value='/cop/bbs/contactList.do' />" >문의목록</a>
                                        <% }  %>
                                    </li>
                                </ul>

                            </div>
                        </nav>
                    </div>
                    <!--/ Col end -->
                </div>
                <!--/ Row end -->
            </div>
            <!-- Container end -->
        </div>
        <!-- Navigation end -->
    </header>
</html>







