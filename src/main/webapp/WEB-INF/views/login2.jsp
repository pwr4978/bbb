<!-- 로그인 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/login2.css">


<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>

<div class="color">
<div class="text1">
<a href="<c:url value='/loginForm.do' />" style="color:black;
text-decoration:none;">로그인            |</a>           

</div>
<div class="text2">
<a href="<c:url value='/joinForm.do' />" style="color:black;
text-decoration:none;">회원가입             |</a>

</div>

<!-- <div class="text3">
<a href="#" style="color:black;
text-decoration:none;">마이페이지	</a>

</div> -->
</div>







<ul id="first">

		<li><a href="#">찾아오시는 길</a>
		<ul>
			<li><a href="#">지도</a>
		</ul>
		</li>
			
		<li><a href="#">예매</a>
		<ul>
			<li><a href="reservepage">영화예매</a>
		</ul>
		</li>
		<li><a href="#">극장</a>
		<ul>
			
			<li><a href="tht.jsp">특별관</a>
			
		</ul>
		</li>
		<li><a href="#">영화목록</a>
		<ul>
			<li><a href="MovieList.jsp">상영 영화</a>
			<li><a href="time.jsp">시간표</a>
			
		</ul>
		</li>
		
		<a href="<c:url value='/' />" style="
			position:absolute;
			top:25px;
			left:400px;
			font-size:40px;
			color:black;
			text-decoration:none;
			z-index:3;">ThT</a>
	
		</ul>



<div class="content">

<form id="loginForm" method="post">
아이디 : <input type="text" class="login_id" name="id" placeholder="아이디" style="width:50%"><br>
비밀번호: <input type="password" class="login_pw" name="pw" placeholder="비밀번호" style="width:50%">
<br>
         <c:if test = "${result == 0 }">
          <div class = "login_er"> ID또는 PW를 잘못입력하셨습니다. 다시확인해주세요. </div>
       	<br>
       	 </c:if>

       	
        <div class="cmd">
      
		
        	<input type="button" class="login_bt" value="로그인">
        	<input type="button" class="lost" value="ID/PW 찾기">
        	<input type="button" class="lost" value="회원가입">


	</div>
 </form>	
</div>



<div class="image">
<img src="./resources/image/movie.png"  style="position:absolute; top:0;left:0; width:100%; height:100%"/>
<div class="text4">
<p>THT</p>
</div>

<div class="text5">
		<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</h5>
		<h5>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</h5>
		<h5>대표전화:1234-0234, 이메일:ThT@gmail.com</h5>
	</div>

</div>

<script>
 
    /* 로그인 버튼 클릭 메서드 */

    $(".login_bt").click(function(){
    	
    	   
    	$("#loginForm").attr("action", "login.do");
        $("#loginForm").submit();
        
        
        
        
        alert("로그인 버튼 작동");
        

    });
 
    
</script>





</body>
</html>