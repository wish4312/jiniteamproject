<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<%@ include file="include/head.jsp" %>
<%@ include file="include/header.jsp" %>

<script>
	function testajax(){	
		var url			= "${pageContext.request.contextPath }/board/test";
		var paramData	= {
				"msg" : "testMSG"
		};
		
		$.ajax({
			url:	url,
			data:	paramData,
			dataType: 'json',
			type: 'POST',
			success: function(result){
				console.log(result);
				console.log("성공");
				var htmls = '';
				htmls += '<div>성공하였습니다.<br>';
				htmls += '======';
				//선택한 요소를 다른것으로 바꿉니다.(변경)
				$('#divtest').replaceWith(htmls);
			},
			error: function(result){
				console.log(result);
				console.log("실패");
			}
		});
	}
	
	function validate(){
		console.log("전송확인하기 - 유효성 검사");
		//document.f.title name사용=> document.getElementById("title") id사용 => $("title")
		var f = document.f;
		
		if(!f.title.value) {
			alert("제목을 입력하세요.");
			f.title.focus();
			return false;
		}
		
		if(!f.content.value) {
			alert("내용을 입력하세요.");
			f.content.focus();
			return false;
		}
		return true;	
	}
</script>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body>

<!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            
     <div class="col-12 pt-lg-5 mt-lg-5 text-center">
         <h1 class="display-4 text-white animated zoomIn">글쓰기</h1>
     </div>
</div>

<!-- title end-->

 <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 60, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="product pag"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->


<div class="wrapper">

    <!-- Main content -->
    <section class="content container-fluid">

		<div class="box-header">
			<h3 class="box-title">게시판 글쓰기</h3>
		</div>
	
		<form role="form" name="f" method="post" onsubmit="return validate();">
			<div class="box-body">
				<div class="form-group">
					<label>제목</label> 
					<input type="text" name='title' id='title' class="form-control" placeholder="제목을 입력하세요">
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" name="content" id="content" rows="3"
						placeholder="내용을 입력하세요"></textarea>
				</div>
				<div class="form-group">
               		<label>첨부파일</label>
               		<input type = "file" accept ="image/jpeg,.txt" name = 'file' class = "form-control"
               style = "width : 20%">         
            	</div>
				<div class="form-group">
					<label>작성자</label> 
					<!--  style = "width : 20%" maxlength="10" value부터 지우고 앞 글 사용하면 입력 및 글자수 제한으로 입력가능 -->>
					<input type="text" name="id" class="form-control" value="${user.name }" readonly>
				</div>
			</div>
	
			<div class="box-footer">
				<button type="submit" class="btn btn-primary">작성완료</button>
			</div>
		</form>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
</div>
<!-- ./wrapper -->
</body>
</html>