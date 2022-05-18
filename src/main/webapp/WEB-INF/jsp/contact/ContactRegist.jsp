<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring-commons-validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="script" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>글작성</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Toastr style -->
    <link href="<c:url value='/'/>css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>src/sweetalert.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<c:url value='/'/>css/plugins/sweetalert/sweetalert.css" rel="stylesheet">


    <link href="<c:url value='/'/>css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value='/'/>plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/animate-css/animate.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/slick/slick-theme.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css" >



    <link href="<c:url value='/'/>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/animate.css" rel="stylesheet">
    <link href="<c:url value='/'/>css/style2.css" rel="stylesheet">
    <link href="<c:url value='/'/>constra/css/style.css" rel="stylesheet" type="text/css" >

    <style>

        #box1 {
            height: 100px;
            overflow:auto;
            border: 1px solid #d5d5d5;
            padding: 0 0.5em;
        }
    </style>
</head>

<body>
<%@include file="/WEB-INF/jsp/main/header.jsp" %>

<section id="main-container" class="main-container"  style="min-height: calc(100vh - 255px);" >
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="column-title">문의하기</h3>
                    <%--@elvariable id="contactForm" type="egovframework.let.cop.bbs.service.ContactVO"--%>
                    <form:form modelAttribute="contactForm" name="contactForm" method="post" action="/cop/bbs/contactRegist.do">
                    <div class="error-container"></div>
                        <div class="form-group" id="box1">
                            <h4>개인정보수집 및 이용에 대한 안내</h4>

                            <p>'지성소프트'는 고객님의 문의요청에 정확하고 성실한 답변을 드리기 위해 필요한 최소한의 개인정보를 수집하고 있습니다.
                            <br>
                                이에 개인정보의 수집 및 이용에 관하여 아래와 같이 고지하오니 충분히 읽어보신 후 동의하여 주시기 바랍니다.</p>
                            <p> 수집 및 이용목적 : 지성소프트 1:1문의에 대한 답변 <br>
                                수집항목 : 이름, 전화번호, 이메일주소 <br>
                                보유기간 : 1년
                            </p>
                        </div>
                        <div style="margin: 10px; display: block" class="pull-right" name="whatever" >
                            <input type="checkbox" value="동의합니다." name="myCheckbox" id="myCheckbox"  >동의합니다.
                        </div>
                        <div class="row col-md-12">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>성명</label>
                                    <form:input path="contactName" cssClass="form-control form-control-name"  />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>이메일</label>
                                    <form:input path="contactEmail" cssClass="form-control form-control-email" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>제목</label>
                                    <form:input path="contactTitle" cssClass="form-control form-control-subject"  />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>전화번호</label>
                                    <form:input path="contactPhone" cssClass="form-control form-control-text"  />
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label>내용</label>
                                <form:textarea path="contactContents" cssClass="form-control form-control-message" rows="10" />
                            </div>
                            <form:hidden path="contactIndexNumber" />

                        </div>


                        <div class="text-right col-md-2 pull-right"><br><br>

                           <button type="button" class="btn btn-primary solid blank"
                                    name="addContact"  id="addContact" form="contactForm" data-target="add" data-style="expand-right"
                                   onclick="fn_submit_contact()"
                                    >문의하기</button>
                        </div>
                    </form:form>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/jsp/main/footer.jsp" %>
<script>

    var cbox = document.getElementById('myCheckbox');




    async function fn_submit_contact() {
        var data = $("#addContact").data('target');

        if (document.contactForm.contactName.value == "") {
            swal({
                title: "",
                text: "이름을 입력하세요."
            });
            return false;
        } else if (document.contactForm.contactEmail.value == "") {
            swal({
                title: "",
                text: "이메일을 입력하세요."
            });
            return false;
        } else if (document.contactForm.contactTitle.value == "") {
            swal({
                title: "",
                text: "제목을 입력하세요."
            });
            return false
        } else if ((document.contactForm.contactContents.value == "") || (document.contactForm.contactContents.value == null)) {
            swal({
                title: "",
                text: "내용을 입력하세요."
            });
            return false;
        } else if( cbox.checked == false){
            swal({
                title: "",
                text: "약관에 동의하세요."
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
                document.contactForm.action = "<c:url value='/cop/bbs/contactRegist.do' />";
                document.contactForm.submit();
            });

        }
    }



</script>

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
<script>


</script>


</body>
</html>
