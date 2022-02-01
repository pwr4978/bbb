<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>MOVIE</title>

<link rel="stylesheet" href="${path}/resources/css/index2.css">

<script type="text/javascript">



function popupOpen(){

	var popUrl = "/loginForm.do";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}


</script>


</head>
<body style="margin:0">

	
	
<div class="color2">

<c:if test = "${user == null }">
<div class="text6">
<a href="<c:url value='/loginForm.do' />" style="color:white;
text-decoration:none;">로그인            |</a>

     <!-- javascript:popupOpen(); -->

</div>

<div class="text7">
<a href="<c:url value='/joinForm.do' />" style="color:white;
text-decoration:none;">회원가입             |</a>

</div>
</c:if>

<c:if test = "${user != null }">
<div class="text6">
<a href="#" style="color:white;
text-decoration:none;">마이페이지	</a>
</div>
<div class="text7">
<a href="<c:url value='/logout.do' />" style="color:white;
text-decoration:none;">로그아웃	</a>
</div>
</c:if>

</div>





<ul id="first">

		<li><a href="boardAll.do">영화관 리뷰</a>
		<li><a href="#">찾아오시는 길</a>
		<ul>
			<li><a href="jido">지도</a>
		</ul>
		</li>
			
		<li><a href="#">예매</a>
		<ul>
			<li><a href="reservepage">영화예매</a>
		</ul>
		</li>
		
		
		<a href="<c:url value='/' />" style="
			position:absolute;
			top:25px;
			left:400px;
			font-size:40px;
			color:white;
			text-decoration:none;
			z-index:3;">ThT</a>
	
		</ul>
		
		

	
		<div class="color">	
	<div class="text1">
		<h1>박스오피스</h1>
		</div>


	
	
	<a href="reservepage"><img src="./resources/image/r.jpg"  style="position:absolute; top:250px;left:150px; width:150px; height:260px;"/></a>

	<div class="text2">
	<h3>1</h3>
	</div>
	<a href="reservepage"><img src="./resources/image/r.jpg"  style="position:absolute; top:250px;left:500px; width:150px; height:260px;"/></a>
	<div class="text3">
	
	
	<h3>2</h3>

	</div>
	<a href="reservepage"><img src="./resources/image/r.jpg"  style="position:absolute; top:250px;left:850px; width:150px; height:260px;"/></a>
	<div class="text4">
	<h3>3</h3>
	
	</div>
	<a href="reservepage"><img src="./resources/image/r.jpg"  style="position:absolute; top:250px;left:1200px; width:150px; height:260px;"/></a>
	<div class="text5">
 	

	<h3>4</h3>
	
	</div>
	</div>
	
	
	<img src="./resources/image/cinema.jpg" style="position:absolute; top:800px; left:0; right:0;width:40%; height:50%;"/>
	<div class="text10">
	<h2>저희 영화관에 방문해 주셔서 감사합니다.</h2>
	<h2>저희 영화관은 고객님의 편의를 위해 최상의 서비스를 제공해 드리고 있습니다.</h2>
	<h2>편안한 영화 관람 되시길 바랍니다.</h2>
	</div>

	
	<div class="color1">

	<a href="#"> <img src="./resources/image/VIPLOUNGE.png" style="position:absolute; top:80px; left:150px; right 0; width:100px; height:100px;"/>
 	
 	<div class="text13">
 	<p>VIP ROUNGE<p>
	</div>
	<a href="#"> <img src="./resources/image/card.png" style="position:absolute; top:80px; left:500px; right 0; width:100px; height:100px;"/>
	<div class="text14">
	<p>마일리지카드</p>
	</div>
	<a href="#"> <img src="./resources/image/membership.png" style="position:absolute; top:80px; left:850px; right 0; width:100px; height:100px;"/>
 	<div class="text15">
 	<p>맴버십</p>
 	</div>
 	<a href="#"> <img src="./resources/image/Event.png" style="position:absolute; top:80px; left:1200px; right 0; width:100px; height:100px;"/>
 	<div class="text16">
 	<p>이벤트</p>
 	</div>
 	</div>
	
	
 <div class="text17">
 <h2>문의</h2>
 <img src="./resources/image/headphones.png"  style="position:absolute; top:80px; left:150px; right:0;width:50px; height:50px;"/>
 <div class="text18">
 <p>고객센터</p>
  </div>
 
 
 <img src="./resources/image/question.png"  style="position:absolute; top:80px; left:500px; right:0;width:50px; height:50px;"/>
 
 <div class="text19">
 <p>자주묻는질문</p>
 </div>
 <img src="./resources/image/friend.png"  style="position:absolute; top:80px; left:850px; right:0;width:50px; height:50px;"/>
  <div class="text20">
 <p>대관/단체문의</p>
 </div>
 <img src="./resources/image/LostandFound.png"  style="position:absolute; top:80px; left:1200px; right:0;width:50px; height:50px;"/>
 <div class="text21">
 <p>분실물 문의</p>
 </div>
 </div>
 
 		<div class="text12">
	<p>ThT</p>
	
	</div>
	
	
	<img src="./resources/image/movie.png"  style="position:absolute; top:1800px; left:0; right:0;width:100%; height:20%;"/>
	<div class="text11">
		<p>입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</p>
		<p>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</p>
		<p>대표전화:1234-0234, 이메일:ThT@gmail.com</p>
	</div>
	

 	

</body>
</html>