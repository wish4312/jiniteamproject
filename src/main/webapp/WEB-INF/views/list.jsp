<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<%@ include file="include/head.jsp" %>
<%@ include file="include/header.jsp" %>

<style>

#list_wrap{
	width:100%;
	height:700px;
	margin:auto; /*가운데 정렬*/
}

#list_box1{
	width:10%;
	height:700px;
	float:left;
}
#list_box2{
	width:70%;
	height:700px;
	float:left;

}
#list_box3{
	width:10%;
	height:700px;
	background-color:red;
	float:left;
}


</style>


<script>
function fn_prev(page, range, rangeSize) {      
	   var page = ((range - 2) * rangeSize) + 1;      
	   var range = range - 1;      
	   //var upId = document.getElementById("hidden_upId").value;
	   var url = "${contextPath}/board/list";      
	   url = url + "?page=" + page;      
	   url = url + "&range=" + range;            
	   location.href = url;   
	}  

	//페이지 번호 클릭   
	function fn_pagination(page, range, rangeSize, searchType, keyword) {   
	   //var upId = document.getElementById("hidden_upId").value;
	   var url = "${contextPath}/board/list";         
	   url = url + "?page=" + page;      
	   url = url + "&range=" + range;      
	   location.href = url;      
	}   

	//다음 버튼 이벤트   
	function fn_next(page, range, rangeSize) {      
	   var page = parseInt((range * rangeSize)) + 1;      
	   var range = parseInt(range) + 1;      
	   //var upId = document.getElementById("hidden_upId").value;
	   var url = "${contextPath}/board/list";         
	   url = url + "?page=" + page;      
	   url = url + "&range=" + range;            
	   location.href = url;   
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
<div>

<!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 60px;">
            
     <div class="col-12 pt-lg-5 mt-lg-5 text-center">
         <h1 class="display-4 text-white animated zoomIn">메인게시판</h1>
     </div>
</div>


<!-- title end-->
<div id="list_wrap">

	<div id="list_box1"></div>
	<div id="list_box2">

<div id="list_box1"></div>
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
    


  
  <div class="content-wrapper"></div>
		<div style="float:right;">
				<a href="${contextPath}/board/register" class="btn btn-primary py-md-2 px-md-3 me-2 animated slideInCenter">글쓰기</a>
		</div>
	<br><br>
    <!-- Main content --><br>
    <section class="content container-fluid">
		<div>${msg}</div>
		<div class="table-responsive">
		  <table class="table">

			<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
			<td>조회수</td>
			</tr>
			
			<c:forEach var="board" items="${list}">
				<tr>
		          <td>${board.BD_NUM}</td>
		          <td><a href="detail?BD_NUM=${board.BD_NUM}"> ${board.BD_TL} </a></td>
		          <td>${board.BD_DT}</td>
		          <td>${board.M_ID}</td>
		          <td><span class="badge">${board.B_REF}</span></td>
	          </tr>
      		</c:forEach>
		  </table>
		</div>
		<!-- pagination{s} -->   
         <div id="paginationBox">      
          <ul class="pagination">         
           <c:if test="${pagination.prev}">            
              <li class="page-item">
                 <a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
              </li>         
           </c:if>                     
           <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">            
              <li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
                 <a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
              </li>         
           </c:forEach>                     
           <c:if test="${pagination.next}">            
              <li class="page-item">
                 <a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a>
              </li>         
           </c:if>      
          </ul>   
         </div>   
        <!-- pagination{e} -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>

</div>


</body>

<%@ include file="include/footer.jsp" %>
</html>