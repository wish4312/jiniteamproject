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
<style>
	#home1{
	width:100%;
	height:100%;
	}

	#home2{
	width:100%;
	height:340px;
	}

</style>

<body>
	<div class="container-fluid bg-primary py-5 bg-header" >
		   <div class="col-2 pt-lg-2 mt-lg-2 text-center">       
          </div>
	</div>

    


    <!-- Navbar & Carousel Start -->
    <div class="container-fluid position-relative p-0">
   

        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div id="home1">
                <div class="carousel-item active">
                    <img class="w-100" src="${contextPath}/resources/bootstrap/img/gyeongbokgung.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center">
                        <div id="home2"></div>
                        <div class="p-3" style="max-width: 900px; max-height: 500px;">
                            <h5 class="text-white text-uppercase mb-3 animated slideInDown">Welcome To Go Travel</h5>
                            <h1 class="display-1 text-white mb-md-4 animated zoomIn">#골라골라#여행지#지금#어디갈래?</h1>
                            <a href="${contextPath}/board/T_List" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">START</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="${contextPath}/resources/bootstrap/img/seoul_city.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center">
                    	<div id="home2"></div>
                        <div class="p-3" style="max-width: 900px; max-height: 500px;">
                            <h5 class="text-white text-uppercase mb-3 animated slideInDown">Welcome To Go Travel</h5>
                            <h1 class="display-1 text-white mb-md-4 animated zoomIn">#음..#어디보자#여행지#일단봐볼까?</h1>
                            <a href="${contextPath}/board/T_ListAll" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">살펴보러가기</a>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Navbar & Carousel End -->


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
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->
 
    <!-- Footer Start --><!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${contextPath}/resources/bootstrap/js/main.js"></script>
</body>


</html>