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

<!-- title Start -->
<div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">로그인</h1>
                </div>
            </div>
        </div>
    </div>
<!-- title end-->

<style type="text/css">

:root {
--green-color: #1abc9c;
--blue-color: rgb(57, 35, 252);
--light-gray: rgb(197, 197, 197);
}

* {
margin: 0;
padding: 0;
box-sizing: border-box;
}
body {
background-color: var(--white-color);
font-family: "Source Sans Pro", sans-serif;
}

.main-container {
position: absolute;
left: 50%;
top: 50%;
transform: translate(-50%, -50%);
background: white;
}

.container {
width: 400px;
height: 300px;
border-radius: 7px;
box-shadow: 0 6px 12px rgba(179, 179, 179, 0.7);
z-index: 1;
overflow: hidden;
}

form {
width: 100%;
height: 100%;
display: flex;
padding: 0px !important;
flex-direction: column;
align-items: center;
background-color: white;
justify-content: space-evenly;
}

a {
text-decoration: none;
cursor: pointer;
color: black;
}

a:focus,
a:hover {
color: var(--blue-color);
font-weight: bold;
}

.input {
position: relative;
}

.input input,
.login-btn {
width: 260px;
height: 45px;
outline: none;
padding: 0 0.7rem;
border-radius: 3px;
transition: 0.2s;
font-weight: bold;
z-index: 1;
}

.input input {
border: none;
border-bottom: 1px solid #8c8c8c;
}
.login-btn {
border: 1px solid #8c8c8c;
background: var(--green-color);
cursor: pointer;
font-size: 20px;
color: #fff;
text-transform: uppercase;
}

.login-btn:focus,
.login-btn:hover {
background: #fff;
cursor: pointer;
color: var(--green-color);
text-transform: uppercase;
border: 1px solid var(--green-color);
transition: ease-in-out 0.2s;
}

.input label {
position: absolute;
top: 28%;
left: 10px;
font-size: 0.9rem;
transition: 0.2s;
font-weight: bold;
padding: 0 0.1rem;
}

.input input:focus {
border-bottom: 1px solid var(--green-color);
}

.input input:focus ~ label,
.input input:valid ~ label {
transform: translateY(-25px);
font-size: 15px;
color: var(--blue-color);
background: #fff;
}

#forget{
	width:90%;
	height:50px;
	float:left;

}

</style>

<body>
   <div class="main-container">
   <div class="container">
   <div>
   <form>
   <center>
   </center>

   <div class="input">
      <input type="text" name="M_id" id="M_id" required title="Please enter your Username here" />
         <label for="userName">* I  D </label>
   </div>

   <div class="input">
      <input type="password" name="M_pw" id="M_pw" required title="Please enter your Password here" />
         <label for="userPassword">* Password </label>
      </div>
      <input type="submit" value="Login" class="login-btn" />
      
      <div id="forget">
	      <div style="float:left"><a href="${contextPath}/board/join">회원가입</a></div>
	      <div style="float:right"><a href="#">아이디 찾기</a></div><br>
	      <div style="float:right"><a href="#">비밀번호 찾기</a></div>   
      </div>   
   </form>
   </div>
   </div>
   </div>
</body>

</html>