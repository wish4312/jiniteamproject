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

<body>
<!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
     
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">선택여행지</h1>
                </div>
            </div>
        
    
<!-- title end-->

 <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 500px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="product pag"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->

  
    <!-- Service Start -->
  
       <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 900px;">
                <h5 class="fw-bold text-primary text-uppercase">여행지 추천!!</h5>
                <h1 class="mb-0">당신이 원하는 여행 스타일은 무엇인가요?</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: slideInUp;">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/k-img101.jpg" alt="img">
                            <div class="team-social">
                               <a class="btn btn-lg btn-primary btn-lg-square rounded" title = "활동적" href="${contextPath}/board/T_oneSelect1"><i class="bi bi-arrow-right"></i></a>
                              
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-6 wow slideInUp" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: slideInUp;">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/k-img11.jpg" alt="img">
                            <div class="team-social">
                           <a class="btn btn-lg btn-primary btn-lg-square rounded" title = "비활동적" href="${contextPath}/board/T_twoSelect1"><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
                       
                    </div>
                </div>
             
                    </div>
                </div>
            </div>
   
    
    <!-- Service End -->
    
   <%@include file="include/footer.jsp" %>	

</body>
</html>