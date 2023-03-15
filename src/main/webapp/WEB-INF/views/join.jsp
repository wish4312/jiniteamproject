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
<%@ include file="include/plug_in.jsp" %>

<style type="text/css">

#wrap0{
	width:100%;
	height:104px;
	margin:auto; /*가운데 정렬*/
}
#box10{
	width:40%;
	height:800px;
	float:left;
}
#box20{
	width:50%;
	height:800px;
	float:left;

}
#box30{
	width:10%;
	height:800px;
	float:left;
}
</style>



<script>
function id_click() {
   idcheck1.type="hidden";
   idcheck3.type="hidden";
}

function ename_click(){
   enamecheck1.type="hidden";
   enamecheck3.type="hidden";
}


function pass_click() {
   passcheck.type="hidden";
}

function email_select() {
   var select = document.getElementById("email3");
   var selectValue = select.options[select.selectedIndex].value;
   email2.value = selectValue;
   if(email2.value == ""){
      $('input[name=email2]').attr('readonly',false);
   } else {
      $('input[name=email2]').attr('readonly',true);
   }
}


$(function(){
   
   $(".btn-primary").click(function(){   
      var tel1 = document.getElementById("tel1").value;
      var tel2 = document.getElementById("tel2").value;
      var tel3 = document.getElementById("tel3").value;
      $('input[name=m_tel]').attr('value',tel1+"-"+tel2+"-"+tel3);   
      var email1 = document.getElementById("email1").value;
      var email2 = document.getElementById("email2").value;
      $('input[name=m_email]').attr('value',email1+"@"+email2);   
   });
   
   // 2-1,2 아이디 중복 확인버튼
   $(".btn-idcheck").click(function(){
      idcheck1.type="hidden";
      idcheck2.type="hidden";
      idcheck3.type="hidden";   
      var id = document.getElementById("m_id").value;
      var exptext = /[a-zA-Z0-9/]/;   
      if(id.length > 7 && id.length < 16){
         if(exptext.test(id)==false){
            $('input[name=idcheckNum]').attr('value','2');
            idcheck3.type="text";
            document.getElementById("m_id").focus();   
         } else {
            $('input[name=idcheckNum]').attr('value','3');
            idcheck2.type="text";
         }
      } else{
         $('input[name=idcheckNum]').attr('value','2');
         idcheck3.type="text";
      }
   });
   
   // 2-1, 닉네임 중복 확인버튼
   $(".btn-enamecheck").click(function(){
      enamecheck1.type="hidden";
      enamecheck2.type="hidden";
      enamecheck3.type="hidden";   
      var ename = document.getElementById("m_ename").value;
      
      if(ename.length > 1 && ename.length < 16){
         $('input[name=enamecheckNum]').attr('value','3');
         enamecheck2.type="text";
      } else {
         enamecheck3.type="text";
      }
   });
      
   // 비밀번호 키업
   $('#m_pw').keyup(function(){
      $('font[name=passcheck]').text('');
      if($('#m_pw').val() != $('#password2').val()){
         $('font[name=passcheck]').text('');
         $('font[name=passcheck]').html('비밀번호 틀림');
         $('font[name=passcheck]').attr('color', 'red');
      } else {
         $('font[name=passcheck]').text('');
         $('font[name=passcheck]').html('비밀번호 확인');
         $('font[name=passcheck]').attr('color', 'green');
      }
   });   
   $('#password2').keyup(function(){
      if($('#m_pw').val() != $('#password2').val()){
         $('font[name=passcheck]').text('');
         $('font[name=passcheck]').html('비밀번호 틀림');
         $('font[name=passcheck]').attr('color', 'red');
      } else {
         $('font[name=passcheck]').text('');
         $('font[name=passcheck]').html('비밀번호 확인');
         $('font[name=passcheck]').attr('color', 'green');
      }   
   });
   
})


//유효성 검사
function validate(){
   var exptextTel = /^01[016789]+/;
   var exptextEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;   
   var id = document.getElementById("idcheckNum").value;
   var ename = document.getElementById("enamecheckNum").value;
   
   var password1 = document.getElementById("m_pw").value;
   var password2 = document.getElementById("password2").value;
   
   var tel = document.getElementById("m_tel").value;
   var email2 = document.getElementById("email2").value;
   var email = document.getElementById("m_email").value;


   var infoYn = $('input[name=m_info_yn]:checked').val();
   
   if(infoYn == 2) {
      alert("동의후 진행하세요.");
      return false;
   }
   
   

   if(id != 3){
      alert("아이디 오류");
      idcheck1.type="text";
      document.getElementById("m_id").focus();
      return false;
   }
   if(ename != 3){
      alert("닉네임 오류");
      enamecheck1.type="text";
      document.getElementById("m_ename").focus();
      return false;
   }
   if(password1 != password2){
      alert("비밀번호 오류");
      passcheck.type="text";
      document.getElementById("m_pw").focus();
      return false;
   }
   if(password1 == ""){
      alert("비밀번호 오류");
      document.getElementById("m_pw").focus();
      return false;
   }
   
   if(tel.length < 14 && tel.length >11){
      if(exptextTel.test(tel)==false){
         alert("전화번호 오류");
         document.getElementById("tel2").focus();
         return false;
      }   
   } else{
      alert("전화번호 오류");
      document.getElementById("tel2").focus();
      return false;
   }   
   
   if(email2==""){
      alert("이메일 오류");
      document.getElementById("email1").focus();
      return false;
   }   
   
   // 2-7 이메일 형식 체크
   if(exptextEmail.test(email)==false){
      alert("이메일 오류");
      document.getElementById("email").focus();
      return false;
   }

    alert("회원가입이 완료되었습니다.");
    return true;
   
}
</script>


<body >

<div class="container-fluid bg-primary py-5 bg-header" >
	<div class="col-2 pt-lg-2 mt-lg-2 text-center">       
	</div>
</div>
<div id="wrap0"></div>
<div id="box10"></div>
<div id="box20">
 <div>
    <div><h1>수근수근회원가입</h1></div><br><br>
   <!-- Main content -->
    <section class="content container-fluid">
      <form role="form" name="f" method="post" onsubmit="return validate();">
         <div class="box-body">
            <!-- 아이디 -->
            <div class="box-group"> 
               <label>아이디　　　　</label>
               <input type='text' id='m_id' name='m_id' onclick="id_click();" minlength="8" maxlength="15" style="width:130px" >
               <input type='hidden' id='idcheckNum' name='idcheckNum' value='1'>
               <button type="button" class="btn btn-idcheck">중복확인</button>
               <input type='hidden' id='idcheck1' name='idcheck1' class="form-control" value="중복확인을 하십시오." style="color:red; width:300px;">
               <input type='hidden' id='idcheck2' name='idcheck2' class="form-control" value="중복확인이 완료되었습니다." style="color:green; width:300px;" >
               <input type='hidden' id='idcheck3' name='idcheck3' class="form-control" value="잘못된 아이디 형식입니다." style="color:red; width:300px;">      
            </div>
         
            <!-- 비밀번호 --><br>
            <div class="box-group">
               <label>비밀번호　　　</label>
               <input type='password' id='m_pw' name='m_pw' onclick="pass_click();">
            </div>
            <div class="box-group">
               <br><label>비밀번호확인　</label>
               <input type='password' id='password2' name='password2' onclick="pass_click();">
               <font name="passcheck" size="2"></font>
            </div>

            <!-- 닉네임 -->
            <br><div class="box-group">
               <label>닉네임　　　　</label>
               <input type='text' id='m_ename' name='m_ename' onclick="ename_click();" maxlength="15" style="width:130px" >
               <input type='hidden' id='enamecheckNum' name='enamecheckNum' value='1'>
               <button type="button" class="btn btn-enamecheck">중복확인</button>
               <input type='hidden' id='enamecheck1' name='enamecheck1' class="form-control" value="중복확인을 하십시오." style="color:red; width:200px;">
               <input type='hidden' id='enamecheck2' name='enamecheck2' class="form-control" value="중복확인이 완료되었습니다." style="color:green; width:200px;" >
               <input type='hidden' id='enamecheck3' name='enamecheck3' class="form-control" value="잘못된 아이디 형식입니다." style="color:red; width:200px;">      
            </div>
                        
            <!-- 이름 --><br>
            <div class="box-group">
               <label>이름　　　　　</label>
               <input type='text' id='m_name' name='m_name' onclick="name_click();" style="width:130px">
            </div>
            
            <!-- 핸드폰번호 --><br>
            <div class="box-group">
               <label>핸드폰번호　　</label>
               <select id='tel1' name='tel1' style="width:70px; height:32;">
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
            <!-- 생년월일 --><br>
            <div class="box-group">
               <label>주민등록번호　</label>
               <input type="text" id="m_birth" name="m_birth" minlength="6" maxlength="6" style="width:150px; height:28;"> - 
               <input type="text" id="m_gender" name="m_gender" minlength="1" maxlength="1" style="width:30px; height:28;">******
            </div>
            <!-- 이메일 --><br>
            <div class="box-group">
               <label>이메일　　　　</label>
               <input type="text" id="email1" name="email1" style="width:120px; height:32;"> @ 
               <input type="text" id="email2" name="email2" style="width:120px; height:32;">
               <select id='email3' name='email3' onchange="email_select();" style="width:120px; height:32;">
                  <option value="">직접입력</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="naver.com">naver.com</option>
                  <option value="daum.net">daum.net</option>
               </select>
               <input type="hidden" id="m_email" name="m_email"> 
            </div>
            
            <!-- 개인정보 공유에 대한 약관 --><br>
            <div class="box-group">
               <label>개인정보 약관 동의(필수)</label><br>
               <textarea id="info" name="info" rows="3" style="width:400px" value="안녕하세요" readonly></textarea>
               <br><input type="radio" id="m_info_yn" name="m_info_yn" value="1" checked="checked">동의　
               <input type="radio" id="m_info_yn" name="m_info_yn" value="2">거부
            </div>
            <!-- 광고 수신 여부에 대한 약관(선택) --><br>
            <div class="box-group">
               <label>광고수신 약관 동의(선택)</label><br>
               <textarea id="adv" name="adv" rows="3" style="width:350px" value="안녕하세요" readonly></textarea>
               <br><input type="radio" id="m_adv_yn" name="m_adv_yn" value="1" checked="checked">동의　
               <input type="radio" id="m_adv_yn" name="m_adv_yn" value="2">거부
            </div><br>
            <div class="box-footer">
               <button type="submit" class="btn btn-primary">확인</button>
               <button type="button" class="btn btn-primary">취소</button>
            </div>
         </div>
      </form>

    </section>
   </div>
</div>
<div id="box30"></div>

</body>
</html>