<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#wrap{
	width:100%;
	height:104px
	margin:auto; /*가운데 정렬*/
}
#box0{
	width:1%;
	height:104px;
	float:left;
}

#box1{
	width:22%;
	height:104px;
	float:left;
}
#box2{
	width:54%;
	height:104px;
	float:left;

}
#box3{
	width:22%;
	height:52px;
	float:left;
}
#box4{
	width:22%;
	height:52px;
	float:left;
}
#box5{
	width:1%;
	height:104px;
	float:left;
}

</style>
</head>

<header>
<div id="wrap">
	<div id="box0"></div>

	<div id="box1">
		<div style="margin:12px">
		<a href="${contextPath}/" class="navbar-brand p-0">
        	<img src="${contextPath}/resources/bootstrap/img/susulogow.png" width="230x" height="100px" alt="Image">
        </a>
        </div>
	</div>
	
	<div id="box2">
	<div class="container-fluid position-relative p-0">	
	<nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
		<div class="navbar-nav ms-auto py-0" style="text-align:center; margin:auto;">
	    	<a href="${contextPath}/" class="nav-item nav-link active">홈</a>
	        <a href="${contextPath}/board/T_List" class="nav-item nav-link">선택여행지</a>
	        <a href="service.html" class="nav-item nav-link">전체여행지</a>
	        <a href="${contextPath}/board/point" class="nav-item nav-link">포인트전환</a>
	        <div class="nav-item dropdown">
	            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">게시판</a>
	            <div class="dropdown-menu m-0">
	                <a href="${contextPath}/board/list" class="dropdown-item">공지사항</a>
	                <a href="${contextPath}/board/list" class="dropdown-item">메인게시판</a>
	                <a href="${contextPath}/board/list" class="dropdown-item">자유게시판</a>
	            </div>
	        </div>
       	</div>
    </nav>
    </div>
	</div>
	<div id="box3">
		<!-- 로그인
		<div style="text-align:center; margin:auto;">
				<a href="${contextPath}/board/login"> <span>마이페이지</span></a>
				<a href="${contextPath}/board/login"><span>회원정보1234</span></a>
				<a href="${contextPath}/board/login"><span>로그아웃</span></a>
		</div>
		-->
	
		<div style="text-align:right; margin:20px;">
			<h4><a href="${contextPath}/board/login"><i class="fa fa-link"></i> <span>로그인</span></a></h4>
		</div>
	
		
	</div>
	
	<div id="box4" style="text-align:right; margin:auto;">
		<div style="text-align:right; margin:19px;">
			<h6><a href="${contextPath}/board/join"><i class="fa fa-link"></i> <span>회원가입</span></a></h6>
		</div>	
	</div>
</div>

</header>
</html>