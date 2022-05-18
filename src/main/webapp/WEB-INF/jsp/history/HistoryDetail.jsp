

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring-commons-validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%--
  Created by IntelliJ IDEA.
  User: 01cli
  Date: 2022-04-18
  Time: 오후 1:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>공지사항</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">


    <%--
        <link href="<c:url value='/'/>plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>css/bootstrap.min.css" rel="stylesheet">
        <link href="<c:url value='/'/>plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>plugins/slick/slick.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>font-awesome/css/font-awesome.css" rel="stylesheet">
        <link href="<c:url value='/'/>css/style2.css" rel="stylesheet">
        <link href="<c:url value='/'/>css/style.css" rel="stylesheet" type="text/css" >
        <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" >
        <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">
        <!-- Sweet Alert -->
        <link href="<c:url value='/'/>css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    --%>
    <link href="<c:url value='/'/>constra/css/bootstrap.min.css" rel="stylesheet">
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

</head><%@include file="/WEB-INF/jsp/main/header.jsp" %>
<body  >

<div class="body-inner">
    <div style="min-height: calc(100vh - 255px);">

        <div class="container">
            <div class="col-md-12 ">
                <div class="col-md-12 ">
                    <div class="mail-box-header">
                        <div class="pull-right tooltip-demo">
                            <%
                                /* LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");*/
                                if(loginVO == null){
                            %>
                            <% }else { %>
                            <form name="articleForm" action="cop/bbs/forUpdateBoardArticle.do" method="post" style="float:left;">
                                <input type="hidden" name="parnts" value="<c:out value='${historyResult.parnts}'/>" >
                                <input type="hidden" name="sortOrdr" value="<c:out value='${historyResult.sortOrdr}'/>" >
                                <input type="hidden" name="replyLc" value="<c:out value='${historyResult.replyLc}'/>" >
                                <input type="hidden" name="nttSj" value="<c:out value='${historyResult.nttSj}'/>" >
                                <input name="nttId" type="hidden" value="<c:out value="${historyResult.nttId}" />">
                                <input name="ntcrNm" type="hidden" value="<c:out value="${historyResult.ntcrNm}" />">
                                <button type="button" class="btn btn-white btn-sm" onclick="javascript:fn_update_history();"><i class="fa fa-edit"></i> Edit</button><!-- 수정 -->
                            </form>
                            <button type="button" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="Move to trash"  onclick="fn_delete_history()"><i class="fa fa-trash-o"></i>Remove</button>
                            <% } %>
                        </div>
                        <h4>
                            구축사례
                        </h4>
                        <div class="mail-tools tooltip-demo m-t-md">
                            <h1 class="text-center">
                                <span class="font-noraml text-center"></span><c:out value="${historyResult.nttSj}"/>
                            </h1>
                            <h5 style="color: #5f5f5f">
                                <span class="pull-right font-noraml"><c:out value="${historyResult.ntcrNm}"/></span><br>
                                <span class="font-noraml pull-right"><c:out value="${historyResult.frstRegisterPnttm}"/></span>
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="mail-box">
                        <form name="noticeResult" method="post" action="<c:url value='/'/>cop/bbs/noticeDelete.do">
                            <input type="hidden" name="bbsId" value="<c:out value="${historyResult.bbsId}"/>"/>
                            <input type="hidden" name="nttId" value="<c:out value="${historyResult.nttId}"/>"/>

                            <div class="mail-body">
                                <c:if test="${historyResult.atchFileId eq ''}">
                                    <img src="<c:url value='/'/>images/defaultimage.png" style="object-fit: cover;width: 247px; padding-bottom: 40px; padding-top: 40px"  />
                                </c:if>
                                <c:import url="/cmm/fms/selectImageFileInf.do" charEncoding="utf-8" >
                                    <c:param name="atchFileId" value="${historyResult.atchFileId}" />
                                </c:import>
                                ${historyResult.nttCn}
                            </div>
                            <c:if test="${not empty historyResult.historyInfo}">
                                <div class="mail-body">
                                        ${historyResult.historyInfo}
                                </div>
                            </c:if>
                            <c:if test="${not empty historyResult.atchFileId}">
                                <div class="mail-attachment">
                                    <tr style="padding-right: 20px;">
                                        <th>첨부파일 :         </th>
                                        <td colspan="5">
                                            <c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
                                                <c:param name="param_atchFileId" value="${historyResult.atchFileId}" />
                                            </c:import>
                                        </td>
                                    </tr>
                                </div>
                            </c:if>
                            <div class="col-md-12 text-right tooltip-demo">
                                <a class="btn btn-sm btn-white" href="javascript:history.back();"><i class="fa fa-reply"></i> Back to List</a>
                                <%
                                    /* LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");*/
                                    if(loginVO == null){
                                %>
                                <% }else { %>
                                <button title="" type="button"  onclick="javascript: fn_delete_history();" data-placement="top" data-toggle="tooltip" data-original-title="Trash" class="btn btn-sm btn-white"><i class="fa fa-trash-o"></i> Remove</button>
                                <% } %>
                            </div>
                            <div class="clearfix"></div>

                        </form>

                    </div>
                    <div class="col-md-12" style="padding-bottom:10em" >
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<%@include file="/WEB-INF/jsp/main/footer.jsp" %>

<script>

    function fn_update_history()
    {
        document.noticeResult.action="<c:url value='/cop/bbs/forUpdateHistory.do' />"
        document.noticeResult.submit();
    }


    function fn_delete_history(){
        swal({
            title: "삭제하시겠습니까?",
            text: "삭제후 복구불가",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "삭제",
            closeOnConfirm: false
        }, function (){
            swal("","삭제되었습니다.","success");
            setTimeout(function (){
                document.noticeResult.action="<c:url value='/cop/bbs/historyDelete.do' />";
                document.noticeResult.submit();
            },2000);
        });
    }



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
<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>
</body>



</html>


