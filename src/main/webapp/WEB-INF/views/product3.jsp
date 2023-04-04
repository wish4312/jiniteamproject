<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ include file="include/head.jsp" %>
<%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<html lang="en">

<body>
	<div class="container-fluid bg-primary py-5 bg-header" >
		   <div class="col-2 pt-lg-2 mt-lg-2 text-center">       
          </div>
	</div>
    

 <body>

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


    <!-- Quote Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-5">
                    <div class="section-title position-relative pb-3 mb-5">
                        <h5 class="fw-bold text-primary text-uppercase">[포인트 전환]</h5>
                        <h1 class="mb-0">GS25 편의점 모바일 교환권</h1>
                        <h4 class="mb-0">1,000p 사용</h4>                   
                         </div>
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product3.png" alt="" style="width:500px; height:500px;">                                        
                </div>
                <div class="col-lg-6">
                    <div class="bg-primary rounded h-100 d-flex align-items-center p-5 wow zoomIn" data-wow-delay="0.9s">
                        <form class="form-group">
                            <div class="row g-3">
                            <div>
                             <label style="color:black">◎ 보유 포인트　  :　</label>
                        <input type="text" name="point" style="width:22%;color:black;margin-left:30px;text-align:right;">
                      </div>
                      <div>
                             <label style="color:black">◎ 사용 포인트　  :　</label>
                        <input type="text" name="point" style="width:22%;color:red;margin-left:30px;text-align:right;" value="-1,000p" readonly>
                      </div>
                      <div>
                              <label style="color:black">◎ 차감후 포인트 : </label>
                        <input type="text" name="point" style="width:22%;color:black;margin-left:45px;text-align:right;">
                      </div>               
                     
                                <div class="col-xl-12">
                                    <label style="color:black">◎ 이  름            　:　</label>
                              <input type="text" name="point" style="width:22%;color:black;margin-left:75px;text-align:right;" >
                                </div>
                                
                                <div class="col-12">
                      
                           <div class="box-group">
                              <label style="color:black">◎ 핸드폰번호　:　</label>
                              <select id='tel1' name='tel1' style="width:70px; height:32;margin-left:36px;">
                                 <option value="010">010</option>
                                 <option value="011">011</option>
                                 <option value="016">016</option>
                                 <option value="017">017</option>
                                 <option value="019">019</option>
                              </select> - 
                              <input type='text' id='tel2' name='tel2' minlength="3" maxlength="4" style="width:70px; height:28;"> - 
                              <input type='text' id='tel3' name='tel3' minlength="4" maxlength="4" style="width:70px; height:28;">
                              <input type='hidden' id='m_tel' name='m_tel'>
                           </div>
                           </div>
                                <div class="col-12">
                                    <textarea class="form-control bg-light border-0" rows="9" readonly>※필수확인※
● 교환한 기프트콘은 입력한 핸드폰 번호로 전송됩니다.
● 본인이 잘못 입력한 핸드폰번호는 해당 사이트가 책임지지 않습니다. 
● 유효기간 : 발급일로부터 90일
● 본 상품의 유효기간은 문자를 통해 확인 부탁 드립니다. 
● 등록 후 사용가능 기간 : 등록일로부터 5년
● 구매 후 교환권을 기프트콘으로 전환한 이후에는 취소가 불가합니다.
※ 포인트 전환 후에는 환불은 불가 합니다.
                                    </textarea>
                                </div>
                                <div class="col-12">
                                   <input type="checkbox" name='checkbox1' value='확인사항 동의' />(필수) 해당 필수확인 내용을 확인하였습니다.                                   
                                </div>
                                <div class="col-12">
                                   <input type="checkbox" name='checkbox2' value='이름,휴대전화 확인' />(필수) 이름과 휴대전화 번호를 확인하였습니다.
                                </div>                                       
                                <div class="col-12">
                                    <button class="btn btn-dark w-100 py-3" type="submit"> 포인트 전환 신청하기</button>                                 
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote End -->

   <!-- Team Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="section-title position-relative pb-3 mb-5" style="max-width: 600px;">
                        <h5 class="fw-bold text-primary text-uppercase">다른상품 교환하러 가기</h5>
            </div>
            <div class="row g-6">
                <div class="col-lg-4 wow slideInUp" data-wow-delay="0.6s">
                    <div class="team-item bg-light rounded overflow-hidden">
                        <div class="team-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product2.png" alt="img">
                            <div class="team-social">
                               <a class="btn btn-lg btn-primary btn-lg-square rounded" href="${contextPath}/board/product2"><i class="bi bi-arrow-right"></i></a>           
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
                            <img class="img-fluid w-100" src="${contextPath}/resources/bootstrap/img/product1.png" alt="">
                            <div class="team-social">
                                <a class="btn btn-lg btn-primary btn-lg-square rounded" href="${contextPath}/board/product1"><i class="bi bi-arrow-right"></i></a>                         
                            </div>
                        </div>
                        <a href="${contextPath}/board/product1" class="nav-item nav-link">
                        <div class="text-center py-3">
                            <h4 class="text-primary">신세계상품권 모바일 교환권</h4>
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