<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<!-- <script language="javascript">
function moveClose() {
  opener.location.href="home.jsp";
  self.close();
}
</script> -->
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/login.css">


<title>로그인</title>

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

</head>
<body class="first">


<form id="loginForm" method="post">
<div class="pop">
        <div class="title">로그인</div>
        <div class="content">
        <p>아이디</p>
        
         <input type="text" class="login_id" name="id" maxlength="12"><br>
         
         <p>비밀번호</p>
         
            	<input type="password" class="login_pw" name="pw" maxlength="18">
            	
            	
          
          
         <c:if test = "${result == 0 }">
          <div class = "login_er"> ID를 잘못입력하셨습니다. 다시확인해주세요. </div>
       	 </c:if>
       	
       	<c:if test = "${result == 1 }">
          <div class = "login_er"> PW를 잘못입력하셨습니다. 다시확인해주세요. </div>
       	</c:if>
       	
        <div class="cmd">
      
			<!-- 이거를 로그인만 버튼으로 만들고 나머지는 a태그로 만들어도 될듯 그리고 계정찾기 페이지 없음 -->
        	<input type="button" class="login_bt" value="로그인">
        	<input type="button" class="lost" value="ID/PW 찾기">
        	<input type="button" class="lost" value="회원가입">
        	
            
        </div>
    </div>
</form>

<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(document).ready(function(){
    $(".login_bt").click(function(){
    	
    	if(result = 1){
    		alert("비밀번호를 확인해주세요.")
    		
    	}else if(result = 0){
    		
    	 	alert("아이디를 확인해주세요.")
    		
    	}
    		
    	
        
    	$("#loginForm").attr("action", "login.do");
        $("#loginForm").submit();
        
        
        
        
        alert("로그인 버튼 작동");
        
       /*  window.opener.location.reload();
        
        window.close(); */
    });
 
    
</script>

</body>
</html>