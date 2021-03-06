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
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>공지사항</title>



    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <link href="<c:url value='/'/>css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >



    <link href="<c:url value='/'/>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/style2.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" type="text/css" >

    <style>
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


         html,body{
             height: 100%;
         }
        .body-inner{
            position: relative;
            min-height: 100%;
            padding-top: 0px;
        }

    </style>

</head>
<body>
<div class="body-inner">
<%@include file="/WEB-INF/jsp/main/header.jsp" %>

    <div class="container">
        <div class="row" style="min-height: calc(100vh - 255px);">
            <div class="col-md-12">
                <div class="wrapper wrapper-content animated fadeInRight">


                           <div class="row" style="height: content-box">
                               <div class="col-md-5 pull-left ">
                               </div>
                               <div class="col-md-6 pull-right ">
                                   <form name="frm" action ="<c:url value='/cop/bbs/history.do'/>" method="post" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                                       <input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
                                       <input type="hidden" name="nttId"  value="0" />
                                       <%--<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
                                       <input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
                                       <input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />--%>
                                       <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
                                       <input type="submit" value="실행" onclick="fn_egov_select_noticeList('1'); return false;" id="invisible" class="invisible" />
                                       <fieldset>
                                           <button type="button" class="btn btn-warning pull-right" style="margin:8px 0 0 10px;width: 50px;height: 30px;font-size: medium;" onclick="javascript:fn_egov_select_noticeList('1'); return false;" >검색</button>
                                           <input type="text" name="searchWrd" value='<c:out value="${searchVO.searchWrd}"/>' class="form-control col-md-4 pull-right" style="margin: 0px;">
                                           <select name="searchCnd" class="select pull-right" title="검색조건 선택" style="margin: 13px 13px 0 0;">
                                               <option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
                                               <option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
                                               <option value="2" <c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if> >글쓴이</option>
                                           </select>
                                       </fieldset>
                                   </form>
                               </div>
                           </div>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class="text-center">제목</th>
                                        <th class="text-center">글쓴이</th>
                                        <th class="text-center">작성일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach varStatus="status" var="result" items="${resultList}" >
                                    <tr>
                                        <td>
                                            <c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/>
                                        </td>
                                            <%--@elvariable id="searchVO" type="egovframework.let.cop.bbs.service.BoardVO"--%>
                                        <form:form modelAttribute="searchVO" name="searchVO" method="post" action="/cop/bbs/selectNotice.do">
                                            <%--<td>
                                                <input type="hidden" name="nttId" value="<c:out value='${result.nttId}' />" />
                                                <input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}' />" />
                                                   <input type="submit" value="<c:out value='${result.nttSj}'/>"
                                                        style="border:0px;background: transparent;" onclick="javascript:fn_notice_list(${result.nttId}, ${result.bbsId})" />
                                            </td>--%>

                                            <td>
                                                <input type="hidden" name="nttId" value="<c:out value='${result.nttId}' />" />
                                                <input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}' />" />
                                                <input type="submit" value="<c:out value='${result.nttSj}'/>"
                                                       style="border:0px;background: transparent;"  />
                                            </td>
                                        </form:form>
                                        <td class="text-center">
                                            <c:out value="${result.ntcrNm}" />
                                        </td>
                                        <td class="text-center">
                                            <c:out value="${result.frstRegisterPnttm}"/>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            <table class="table">
                                <tr>
                                    <td colspan="5" class="footable-visible" >
                                            <div class="pull-left">
                                                <%
                                                    if(loginVO != null){
                                                %>
                                                <a href="<c:url value='/'/>cop/bbs/noticeWrite.do">
                                                    <button type="button" class="btn btn-outline btn-warning btn-lg" href="<c:url value='/'/>cop/bbs/noticeWrite.do">write</button></a>

                                                <% } %>
                                            </div>
                                        <ul class="pagination pull-right">
                                            <li class="footable-page" active>
                                                   <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>

                </div>
            </div>
        </div>
    </div><%@include file="/WEB-INF/jsp/main/footer.jsp" %>




<!-- Mainly scripts -->
<script src="<c:url value='/'/>constra/js/jquery-2.1.1.js"></script>
<script src="<c:url value='/'/>constra/js/bootstrap.min.js"></script>
<script src="<c:url value='/'/>constra/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value='/'/>constra/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

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

<script>
    /*********************************************************
     * 조회 처리 함수
     ******************************************************** */
    function fn_egov_search_article(){
        document.articleForm.pageIndex.value = 1;
        document.articleForm.submit();
    }

    function fn_notice_list(nttId,bbsId) {
        document.resultList.nttId.value = nttId;
        document.resultList.bbsId.value = bbsId;
        document.resultList.action = "<c:url value='/cop/bbs/selectNotice.do'/>";
        document.resultList.submit();
    }

    function fn_egov_select_noticeList(pageNo) {
        document.frm.pageIndex.value = pageNo;
        document.frm.action = "<c:url value='/cop/bbs/notice.do'/>";
        document.frm.submit();
    }

    function pageAlgo(total, bottomSize, listSize, cursor)
    {
        let totalPageSize = Math.ceil(total/listSize);
        let firstBottomNumber = cursor - cursor % bottomSize +1; // 하단 최초 숫자
        let lastBottomNumber = cursor - cursor % bottonSize + bottomSize; // 하단 마지막숫자

        if(lastBottomNumber > totalPageSize) lastBottomNumber = totalPageSize; //총갯수보다 큰 경우 방지
        return {
            firstBottomNumber,
            lastBottomNumber,
            totalPageSize,
            total,
            bottomSize,
            listSize,
            cursor
        }
    }
</script>
</div>

</body>
</html>
