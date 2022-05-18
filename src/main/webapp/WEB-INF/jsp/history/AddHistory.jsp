<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>협력업체 작성 | 지성소프트</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Favicon
  ================================================== -->
    <link rel="icon" type="image/png" href="images/favicon.png">

    <link href="<c:url value='/'/>constra/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>constra/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >


    <!--summernote-->

    <script src="<c:url value= 'https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
    <script src="<c:url value= 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'/>" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="<c:url value= 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh'/>" crossorigin="anonymous">
    <script src="<c:url value= 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'/>" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="<c:url value= 'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css'/>" rel="stylesheet">
    <script src="<c:url value= 'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js'/>"></script>
    <%--<link href="<c:url value='/'/>css/style2.css" rel="stylesheet">--%>

    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" type="text/css" >


    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">


    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>src/sweetalert.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>
<body>
<%@include file="/WEB-INF/jsp/main/header.jsp" %>
<section id="main-container " class="main-container"  style="min-height: calc(100vh - 255px);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="column-title">구축사례</h3>

                <%--@elvariable id="board" type="egovframework.let.cop.bbs.service.BoardVO"--%>
                <form:form modelAttribute="board" name="board" method="post" enctype="multipart/form-data"  >
                    <input type="hidden" name="bbsId" value="BBSMSTR_DDDDDDDDDDDD" />
                    <input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
                    <input type="hidden" name="bbsTyCode" value="BBST03" />
                    <input type="hidden" name="replyPosblAt" value="N" />
                    <input type="hidden" name="fileAtchPosblAt" value="Y" />
                    <input type="hidden" name="posblAtchFileNumber" value=1 />
                    <input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
                    <input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />
                    <input type="hidden" name="password" value="0000" />
                    <input type="hidden" name="ntcrNm" value="운영자" />
                    <c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
                        <input name="ntceBgnde" type="hidden" value="10000101" />
                        <input name="ntceEndde" type="hidden" value="99991231" />
                    </c:if>
                    <div class="error-container"></div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>회사명</label>
                                <form:input path="nttSj" cssClass="form-control form-control-text" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>홈페이지</label>
                                <form:input path="homepage" cssClass="form-control form-control-text" />
                            </div>
                        </div>
                        <table class="col-md-4">
                            <tr>
                                <th height="23"><label for="egovComFileUploader"><spring:message code="cop.atchFile" /></label></th>
                                <td colspan="3">
                                    <input name="file_1" id="egovComFileUploader" type="file" />
                                    <div id="egovComFileList"></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <label>내용</label>
                        <form:textarea path="nttCn" cssClass="form-control form-control-message" rows="2" />
                    </div>
                    <div class="form-group">
                        <label>상세설명</label>
                        <textarea id="summernote" name="historyInfo" value=${historyInfo}>
                        </textarea>
                    </div>
                    <div class="text-right"><br>
                        <button class="btn btn-primary solid blank" type="button" name="submitHis" id="submitHis" data-target="add"
                        onclick="javascript:insertHistory();"> 작성완료</button>
                    </div>

                </form:form>

            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/jsp/main/footer.jsp" %>

<script type="text/javascript">
    $('#summernote').summernote({

        height: 300,                 // 에디터 높이
        minHeight: null,             // 최소 높이
        maxHeight: null,             // 최대 높이
        focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR",					// 한글 설정
        placeholder: '내용을 입력하세요.',	//placeholder 설정


    });


    var maxFileNum = document.board.posblAtchFileNumber.value;
    if(maxFileNum==null || maxFileNum==""){
        maxFileNum = 3;
    }
    var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
    multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );

    async function insertHistory() {

        var data = $("#submitHis").data('target');

        if (document.board.nttSj.value == "") {
            swal({
                title: "",
                text: "제목을 입력하세요."
            });
            return false;
        } else if (document.board.nttCn.value == "") {
            swal({
                title: "",
                text: "내용을 입력하세요."
            });
            return false;
        } else if (data == 'add') {

            await swal({
                title: "완료",
                text: "등록이 완료되었습니다.",
                type: "success"
            });
            $(".confirm").click(function () {
                document.board.action = "<c:url value='/cop/bbs/historyRegist.do' />";
                document.board.submit();
            });

        }

    }


</script>

<!-- Mainly scripts -->
<script src= " <c:url value='/' />js/jquery-2.1.1.js" ></script>
<script src="<c:url value='/'/>js/bootstrap.min.js"></script>
<script src="<c:url value='/'/>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value='/'/>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value='/'/>js/inspinia.js"></script>
<script src="<c:url value='/'/>js/plugins/pace/pace.min.js"></script>

<!-- Jasny -->
<script src="<c:url value='/'/>js/plugins/jasny/jasny-bootstrap.min.js"></script>

<!-- DROPZONE -->
<script src="<c:url value='/'/>js/plugins/dropzone/dropzone.js"></script>

<!-- CodeMirror -->
<script src="<c:url value='/'/>js/plugins/codemirror/codemirror.js"></script>
<script src="<c:url value='/'/>js/plugins/codemirror/mode/xml/xml.js"></script>
<script type="text/javascript" src="<c:url value='/'/>js/egovframework/cmm/fms/EgovMultiFile.js" ></script>

<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>

<!-- Sweet alert -->
<script src="<c:url value='/'/>js/plugins/sweetalert/sweetalert.min.js"></script>

</body>
</html>
