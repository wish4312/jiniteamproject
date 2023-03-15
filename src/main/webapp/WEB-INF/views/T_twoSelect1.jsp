<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ include file="include/head.jsp" %>
<%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<%@ include file="include/header.jsp" %>
<html lang="en">


<body>
 
 <!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
          
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">선택여행지</h1>
                </div>
            </div>
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
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="product pag"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->
 
  
    <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.0s" style="visibility: visible; animation-delay: 0.0s; animation-name: fadeInUp;">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase">여행지 추천!!</h5>
                <h1 class="mb-0">비활동적인 활동중에 좋아하는것은?</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-3 col-md-1 wow zoomIn" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: zoomIn;">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                       
                        <h4 class="mb-2"></h4>
                        <p class="m-0"></p>
                       <img src= "${contextPath}/resources/bootstrap/img/k-img5.jpg" width="270x" height="200px" alt="Image">
                          <a class="btn btn-lg btn-primary rounded" href="${contextPath}/board/T_twoSelect2_1">
                            <i class="bi bi-arrow-right"></i>
                       </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-1 wow zoomIn" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: zoomIn;">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                       
                         <h4 class="mb-2"></h4>
                        <p class="m-0"></p>
                       <img src= "${contextPath}/resources/bootstrap/img/k-img6.jpg" width="270x" height="200px" alt="Image">
                          <a class="btn btn-lg btn-primary rounded" href="${contextPath}/board/T_twoSelect3_1">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-1 wow zoomIn" data-wow-delay="0.9s" style="visibility: visible; animation-delay: 0.9s; animation-name: zoomIn;">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                          <h4 class="mb-2"></h4>
                        <p class="m-0"></p>
                       <img src= "${contextPath}/resources/bootstrap/img/k-img7.jpg" width="270x" height="200px" alt="Image">
                          <a class="btn btn-lg btn-primary rounded" href="${contextPath}/board/T_twoSelect4_1">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                       
                    </div>
                </div>
                <div class="col-lg-3 col-md-1 wow zoomIn" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: zoomIn;">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                       <h4 class="mb-2"></h4>
                        <p class="m-0"></p>
                       <img src= "${contextPath}/resources/bootstrap/img/k-img8.jpg" width="270x" height="200px" alt="Image">
                          <a class="btn btn-lg btn-primary rounded" href="${contextPath}/board/T_twoSelect5_1">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
             </div>
             </div>
             </div>
                        
    <!-- Service End -->

	<!-- Footer Start -->
    <div class="container-fluid bg-dark text-light mt-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-4 col-md-6 footer-about">
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
                        <a href="index.html" class="navbar-brand">
                             <img src="${contextPath}/resources/bootstrap/img/susulogow.png" width="250x" height="120px" alt="Image">
                        </a>
                        <p class="mt-3 mb-4">수도권 근교 수도권 근처를 떠나보자!</p>
                        <form action="">
                        </form>
                    </div>
                </div>
                <div class="col-lg-8 col-md-6">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">No.1 관리자</h3>
                            </div>
                            <div class="d-flex mb-2">
                            	<i class="bi bi-person-fill"></i>
                            	<p class="mb-0"> 지니</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">jinhee3038@gmail.com</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-suit-heart"></i>
                                <p class="mb-0"> kakao id: jinhee3038</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">No.2 관리자</h3>
                            </div>
                            <div class="d-flex mb-2">
                            	<i class="bi bi-person-fill"></i>
                            	<p class="mb-0"> C-ON</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">vmfpsel@gmail.com</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-suit-heart"></i>
                                <p class="mb-0"> kakao id: Ci5N0222</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">No.3 관리자</h3>
                            </div>
                            <div class="d-flex mb-2">
                            	<i class="bi bi-person-fill"></i>
                            	<p class="mb-0"> 규찡</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">0677sa@naver.com  </p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-suit-heart"></i>
                                <p class="mb-0"> kakao id: 0677sa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white" style="background: #061429;">
        <div class="container text-center">
            <div class="row justify-content-end">
                <div class="col-lg-8 col-md-6">
                    <div class="d-flex align-items-center justify-content-center" style="height: 75px;">
                        <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">http://localhost:8022/susu/</a>
						
						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed by <a class="text-white border-bottom" href="https://htmlcodex.com">HTML Codex</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
 


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${contextPath}/resources/bootstrap/js/main.js"></script>


</body>
</html>