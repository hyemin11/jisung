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
    <title>공지작성</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>src/sweetalert.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/bootstrap.css" rel="stylesheet">
    <link href="<c:url value='/'/>plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >

    <link href="<c:url value='/'/>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">


    <link href="<c:url value='/'/>css/style2.css" rel="stylesheet" >

                <script src="<c:url value= 'https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
                <script src="<c:url value= 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'/>" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

                <link rel="stylesheet" href="<c:url value= 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh'/>" crossorigin="anonymous">
                <script src="<c:url value= 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'/>" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

                <link href="<c:url value= 'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css'/>" rel="stylesheet">
                <script src="<c:url value= 'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js'/>"></script>

    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" type="text/css" >
    <style>

    </style>
</head>
<body>
<%@include file="/WEB-INF/jsp/main/header.jsp" %>
<section id="main-container" class="main-container"  style="min-height: calc(100vh - 255px);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="column-title">공지글쓰기</h3>

                <%--@elvariable id="boardForm" type="egovframework.let.cop.bbs.service.Board"--%>
                <form:form modelAttribute="boardForm" method="post" name="boardForm" >
                    <div class="error-container"></div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label>제목</label>
                                <form:input path="nttSj" cssClass="form-control form-control-text" id="nttSj"></form:input>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <table class="col-md-8" style="margin:20px 0 20px 0;">
                                <tr>
                                    <th height="23"><label for="egovComFileUploader"><spring:message code="cop.atchFile" /></label></th>
                                    <td colspan="3">
                                        <input name="file_1" id="egovComFileUploader" type="file" />
                                        <div id="egovComFileList"></div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>내용</label>
                        <textarea id="summernote" name="nttCn" value=${nttCn}>
                        </textarea>
                    </div>
                    <div class="text-right"><br>
                        <button class="btn btn-primary solid blank"
                                name="addNotice" id="addNotice" data-target="add"
                                type="button" onclick="insertNotice()">작성완료</button>
                    </div>
                </form:form>

            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/jsp/main/footer.jsp" %>

<script>


    $(document).ready(function() {






    });




    //여기 아래 부분
    $('#summernote').summernote({

        height: 300,                 // 에디터 높이
        minHeight: null,             // 최소 높이
        maxHeight: null,             // 최대 높이
        focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR",					// 한글 설정
        placeholder: '내용을 입력하세요.',	//placeholder 설정


    });


    async function insertNotice() {
        var data = $("#addNotice").data('target');

        if (document.boardForm.nttSj.value == "") {
            swal({
                title: "",
                text: "제목을 입력하세요."
            });
            return false;
        } else if (document.boardForm.nttCn.value == "") {
            swal({
                title: "",
                text: "내용을 입력하세요."
            });
            return false;
        } else if (data=='add') {


            await swal({
                title: "완료",
                text: "등록이 완료되었습니다.",
                type: "success"
            });
            $(".confirm").click(function ()
            {
                document.boardForm.action = "<c:url value='/cop/bbs/noticeRegist.do' />";
                document.boardForm.submit();
            });

        }
    }


    var maxFileNum = document.board.posblAtchFileNumber.value;
    if(maxFileNum==null || maxFileNum==""){
        maxFileNum = 3;
    }
    var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
    multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
</script>

<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>





</body>
</html>
