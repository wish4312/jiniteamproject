<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page session="true" %>
<%@ include file="include/head.jsp" %>
<%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<html lang="en">


<body> 
<!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">포인트전환</h1>
                </div>
            </div>
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


    <!-- Team Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                <h5 class="fw-bold text-primary text-uppercase"></h5>
                <h1 class="mb-0">상품리스트</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-4 wow slideInUp" data-wow-delay="0.3s">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product1.png" alt="">                            
                            <div class="team-social">
                                  <a class="btn btn-lg btn-primary btn-lg-square rounded" href="${contextPath}/board/product1"><i class="bi bi-arrow-right"></i></a>   
                                <a class="product pag" href=""></a>
                            </div>
                        </div>
                        <a href="${contextPath}/board/product1">
                        <div class="text-center py-4">
                            <h4 class="text-primary">신세계상품권 모바일 교환권</h4>
                            <p class="text-uppercase m-0">1,000p</p>          
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 wow slideInUp" data-wow-delay="0.6s">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product2.png" alt="img">
                            <div class="team-social">
                                 <a class="btn btn-lg btn-primary btn-lg-square rounded" href="${contextPath}/board/product2"><i class="bi bi-arrow-right"></i></a>              
                                <a class="product pag" href=""></a>
                            </div>
                        </div>
                        <a href="${contextPath}/board/product2">
                        <div class="text-center py-4">
                            <h4 class="text-primary">스타벅스 아메리카노 교환권</h4>
                            <p class="text-uppercase m-0">500p</p>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product3.png" alt="">
                            <div class="team-social">
                                  <a class="btn btn-lg btn-primary btn-lg-square rounded" href="${contextPath}/board/product3"><i class="bi bi-arrow-right"></i></a>   
                                <a class="product pag" href=""></a>
                            </div>
                        </div>
                        <a href="${contextPath}/board/product3" class="nav-item nav-link">
                        <div class="text-center py-3">
                            <h4 class="text-primary">GS25 편의점 모바일 교환권</h4>
                            <p class="text-uppercase m-0">1,000p</p>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->
   

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


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
<%@ include file="include/footer.jsp" %>