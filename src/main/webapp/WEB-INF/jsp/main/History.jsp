<%--
  Created by IntelliJ IDEA.
  User: 01cli
  Date: 2022-04-18
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<html>
<head>
    <title>구축사례 | 지성소프트</title>


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

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
        .btnn-custom {
            color: inherit;
            background: white;
            border: 1px solid #e7eaec;
        }

        .product-imitation table > tbody > tr > td {
            height: 328px;
        }

        .product-imitation table > tbody > tr > td > img {
            object-fit:cover;
            max-width: 100%;

        }
         .product-desc
        {
            height: 170px;
        }

         .pagination > li > strong , .pagination > li > span {
             /* background-color: #FFFFFF;*/
             background: #ffb600;
             border: 1px solid #DDDDDD;
             color: inherit;
             float: left;
             line-height: 1.42857;
             margin-left: -1px;
             margin-right: 10px;
             padding: 4px 10px;
             position: relative;
             text-decoration: none;
         }
    </style>

</head>
<body>
<script>
    function boardInfo(bbsId){
        document.board.bbsId.value = bbsId;
        document.board.action = "<c:url value='/cop/bbs/historyWrite.do'/>";
        document.board.submit();
    }
</script><%@include file="/WEB-INF/jsp/main/header.jsp" %>
<div class="body-inner">
<!-- Header start -->


<section id="main-container" class="main-container">
    <div class="container"><h1>구축사례</h1>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-6 pull-left ">
                    <%
                        if(loginVO != null){
                    %>
                    <%--@elvariable id="board" type="egovframework.let.cop.bbs.service.Board"--%>
                    <form name="board" action="/cop/bbs/historyWrite.do" method="post">
                        <input type="hidden" name="bbsId" value="${bbsId}" />
                        <button type="button" class="btn btn-outline btn-default"
                                onclick="javascript:boardInfo(${bbsId})">write</button>
                    </form>
                    <% } %>

                </div>
                <div class="col-md-6 pull-right ">
                    <form name="frm" action ="<c:url value='/cop/bbs/history.do'/>" method="post">
                        <input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
                        <input type="hidden" name="nttId"  value="0" />
                        <input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
                        <input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
                        <input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
                        <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
                        <input type="submit" value="실행" onclick="fn_egov_select_noticeList('1'); return false;" id="invisible" class="invisible" />

                        <fieldset>
                            <button type="button" class="btn btn-outline-success pull-right" style="margin: 30px 0 0 0;" onclick="javascript:fn_egov_select_noticeList('1'); return false;" >검색</button>
                            <input type="text" name="searchWrd" value='<c:out value="${searchVO.searchWrd}"/>' class="form-control col-md-4 pull-right" style="margin: 20px;">
                        </fieldset>
                    </form>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${resultList}" varStatus="status" var="resultList">
                    <div class="col-md-3">
                        <div class="ibox">
                            <div class="ibox-content product-box">
                                <div class="product-imitation" style="padding: 0px; ">
                                    <c:if test="${resultList.atchFileId eq ''}">
                                        <img src="<c:url value='/'/>images/defaultimage.png" style="object-fit: cover;width: 247px; padding-bottom: 40px; padding-top: 40px"  />
                                    </c:if>
                                        <c:import url="/cmm/fms/selectImageFileInfs.do" charEncoding="utf-8" >
                                            <c:param name="atchFileId" value="${resultList.atchFileId}" />
                                        </c:import>
                                </div>
                                <div class="product-desc">
                                    <form:form modelAttribute="resultList" name="resultList" method="post" action="/cop/bbs/historyDetail.do">
                                        <td>
                                            <input type="hidden" name="nttId" value="<c:out value='${resultList.nttId}' />" />
                                            <input type="hidden" name="bbsId" value="<c:out value='${resultList.bbsId}' />" />
                                            <input type="submit" value="<c:out value='${resultList.nttSj}' />" class="product-name"
                                                   style="border:0px;background: transparent;" onclick="javascript:fn_notice_list(${resultList.nttId}, ${resultList.bbsId})" />
                                        </td>
                                    </form:form>
                                    <div class="small m-t-xs">
                                                ${resultList.nttCn}
                                    </div>
                                    <div class="m-t text-righ">
                                        <a href="${resultList.homepage}">
                                            <button type="button" value="홈페이지" class="btnn-custom"
                                                    onclick="location.href='<c:url value='${resultList.homepage}'/>'" >홈페이지</button>
                                        </a>
                                            <%
                                                /* LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");*/
                                                if(loginVO == null){
                                            %>
                                            <% }else { %>

                                            <div class="pull-right tooltip-demo">
                                                <form name="articleForm" action="/cop/bbs/forUpdateHistory.do" method="post" style="float:left;">
                                                    <input name="nttId" type="hidden" value="<c:out value="${resultList.nttId}" />" />
                                                    <input name="bbsId" type="hidden" value="BBSMSTR_DDDDDDDDDDDD" />
                                                    <input type="hidden" name="parnts" value="<c:out value='${resultList.parnts}'/>" >
                                                    <input type="hidden" name="sortOrdr" value="<c:out value='${resultList.sortOrdr}'/>" >
                                                    <input type="hidden" name="replyLc" value="<c:out value='${resultList.replyLc}'/>" >
                                                    <input name="ntcrNm" type="hidden" value="<c:out value="${resultList.ntcrNm}" />">
                                                    <button type="button" class="btn btn-white btn-sm" onclick="javascript:fn_update_history(this.form);"><i class="fa fa-edit"></i></button><!-- 수정 -->
                                                </form>

                                                <form name="formDelete" action="<c:url value='/cop/bbs/historyDelete.do'/>" method="post" style="float:left; margin:0 0 0 3px;">

                                                        <input name="nttId" type="hidden" value="<c:out value="${resultList.nttId}" />" />
                                                        <input name="bbsId" type="hidden" value="BBSMSTR_DDDDDDDDDDDD" />
                                                        <button type="button" class="btn btn-danger" title="Move to trash" onclick="fn_egov_delete_article(this.form); return false;" ><i class="fa fa-trash-o"></i></button><!-- 삭제 -->
                                                </form>
                                            </div>
                                                        <% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <table class="table">
                    <tr>
                        <td colspan="5" class="footable-visible" >
                            <ul class="pagination pull-right">
                                <li class="footable-page">
                                    <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_historyList" />
                                </li>

                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div><!-- Conatiner end -->
</section><!-- Main container end -->


<%@include file="/WEB-INF/jsp/main/footer.jsp" %>

<script>

    $(document).ready(function () {
        // media popup
        function mediaPopup()
        {
            $('.gallery-popup').colorbox({
                rel: 'gallery-popup',
                transition :'slideshow',
                innerHeight:'500'
            });
            $('.popup').colorbox({
                iframe:true,
                innerWidth:600,
                innerHeight:400

            });
        }
        mediaPopup();

    });


    function fn_egov_select_noticeList(pageNo) {
        document.frm.pageIndex.value = pageNo;
        document.frm.action = "<c:url value='/cop/bbs/history.do'/>";
        document.frm.submit();
    }

    function fn_egov_delete_article(form){
        if(confirm("<spring:message code="common.delete.msg" />")){
            // Delete하기 위한 키값을 셋팅
            form.submit();
        }
    }
    function fn_update_history(form)
    {
        form.action="<c:url value='/cop/bbs/forUpdateHistory.do' />"
        form.submit();
    }

    function fn_egov_select_historyList(pageNo) {
        document.board.pageIndex.value = pageNo;
        document.board.action = "<c:url value='/cop/bbs/history.do'/>";
        document.board.submit();
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
        }, function(){
            swal("","삭제되었습니다", "success");
                document.board.action="<c:url value='/cop/bbs/historyDelete.do' /> ";
                document.board.submit();

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




    <!-- Mainly scripts -->
<script src="<c:url value='/'/>js/jquery-2.1.1.js"></script>
<script src="<c:url value='/'/>js/bootstrap.min.js"></script>
<script src="<c:url value='/'/>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value='/'/>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="<c:url value='/'/>js/plugins/dataTables/datatables.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="<c:url value='/'/>js/inspinia.js"></script>
<script src="<c:url value='/'/>js/plugins/pace/pace.min.js"></script>


<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>


</div>
</body>
</html>
