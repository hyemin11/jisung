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
        .modal {

            top:30%;


        }
    </style>
</head>

<body>

<%@include file="/WEB-INF/jsp/main/header.jsp" %>


<section id="main-container" class="main-container">
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
                        <%--<textarea name="nttCn" rows="10" id="summernote"/>--%>
                        <textarea id="summernote" name="nttCn" value=${nttCn}>
                        </textarea>
                    </div>

                           <%-- <form:textarea path="nttCn" rows="10" cssClass="form-control form-control-message" id="summernote" />--%>


                    <div class="text-right"><br>
                        <button class="btn btn-primary solid blank"
                                name="addNotice" id="addNotice" data-target="add"
                                type="button" onclick="insertNotice()">작성완료</button>
                    </div>
                </form:form>


                <%--<form action="/cop/bbs/noticeRegist.do" method="post" name="noticeForm">
                    <div class="error-container"></div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>제목</label>
                                <input name="nttSj" value="${nttSj}" type="text" class="form-control form-control-text">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>내용</label>
                        <textarea name="nttCn" value="${nttCn}" rows="10" class="form-control form-control-message"></textarea>
                    </div>
                    <div class="text-right"><br>
                        <button class="btn btn-primary solid blank"
                                name="submit" id="submit" data-target="add">작성완료</button>
                    </div>
                </form>--%>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/jsp/main/footer.jsp" %>

<script>


    $(document).ready(function() {






    });

/*function sendFile()
{

    var maxFileNum = document.board.posblAtchFileNumber.value;
    if(maxFileNum==null || maxFileNum==""){
        maxFileNum = 3;
    }
    var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
    multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );

}*/



    //여기 아래 부분
    $('#summernote').summernote({

        height: 300,                 // 에디터 높이
        minHeight: null,             // 최소 높이
        maxHeight: null,             // 최대 높이
        focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR",					// 한글 설정
        placeholder: '내용을 입력하세요.',	//placeholder 설정
     /*   callbacks : {
            onImageUpload : function (files) {
                sendFile(files[0],this);

            }
        }*/

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
<%--<!--summernote-->
<script src="<c:url value='/'/>summernote-0.8.18-dist/summernote.js"></script>
<script src="<c:url value='/'/>summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
<script src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js'/>"></script>--%>
<!-- Mainly scripts -->
<%--<script src="<c:url value='/'/>js/jquery-2.1.1.js"></script>--%>
<%--<script src="<c:url value='/'/>js/bootstrap.min.js"></script>--%>
<%--<script src="<c:url value='/'/>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value='/'/>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>--%>

<!-- Custom and plugin javascript -->
<%--<script src="<c:url value='/'/>js/inspinia.js"></script>
<script src="<c:url value='/'/>js/plugins/pace/pace.min.js"></script>--%>

<%--

<script src="<c:url value='/'/>bootstrap-5.1.3-dist/js/bootstrap.js"></script>--%>
<!-- Flot --><%--
<script src="<c:url value='/'/>js/plugins/flot/jquery.flot.js"></script>
<script src="<c:url value='/'/>js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<c:url value='/'/>js/plugins/flot/jquery.flot.resize.js"></script>--%>

<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>





</body>
</html>
