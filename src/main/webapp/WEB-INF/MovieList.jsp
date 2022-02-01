<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">



function popupOpen(){

	var popUrl = "Login.jsp";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}


</script>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/MovieList.css">
<title>Insert title here</title>
</head>
<body style="margin:0">




	


<div class="color">
<div class="text1">
<a href="javascript:popupOpen();" style="color:black;
text-decoration:none;">로그인            |</a>           

</div>

<div class="text2">
<a href="Sign_up.jsp" style="color:black;
text-decoration:none;">회원가입             |</a>

</div>

<div class="text3">
<a href="#" style="color:black;
text-decoration:none;">마이페이지	</a>

</div>
</div>





<ul id="first">

		<li><a href="#">찾아오시는 길</a>
		<ul>
			<li><a href="#">지도</a>
		</ul>
		</li>
			
		<li><a href="#">예매</a>
		<ul>
			<li><a href="#">영화예매</a>
		</ul>
		</li>
		<li><a href="#">극장</a>
		<ul>
			<li><a href="#">영화 극장</a> <li><a href="#">특별관</a>
			
		</ul>
		</li>
		<li><a href="MovieList">영화목록</a>
		<ul>
			<li><a href="#">상영 영화</a>
			
		</ul>
		</li>
		
		<a href="index1.jsp" style="
			position:absolute;
			top:25px;
			left:400px;
			font-size:40px;
			color:black;
			text-decoration:none;
			z-index:3;">ThT</a>
	
		</ul>

<div class="text6">
<h2>영화 목록</h2>

</div>

<!-- ---------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:250px;left:150px; width:150px; height:260px;"/>
<div class="checkbox">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:250px;left:500px; width:150px; height:260px;"/>
<div class="checkbox1">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like1">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after1">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:250px;left:850px; width:150px; height:260px;"/>
<div class="checkbox2">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like2">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after2">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:250px;left:1200px; width:150px; height:260px;"/>
<div class="checkbox3">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like3">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after3">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:650px;left:150px; width:150px; height:260px;"/>
<div class="checkbox4">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like4">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after4">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:650px;left:500px; width:150px; height:260px;"/>
<div class="checkbox5">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like5">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after5">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:650px;left:850px; width:150px; height:260px;"/>
<div class="checkbox6">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like6">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after6">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:650px;left:1200px; width:150px; height:260px;"/>
<div class="checkbox7">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like7">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after7">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:650px;left:500px; width:150px; height:260px;"/>
<div class="checkbox8">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like8">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after8">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:1050px;left:150px; width:150px; height:260px;"/>
<div class="checkbox9">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like9">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after9">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:1050px;left:500px; width:150px; height:260px;"/>
<div class="checkbox10">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like10">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after10">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:1050px;left:850px; width:150px; height:260px;"/>
<div class="checkbox11">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like11">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after11">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->
<img src="/resources/image/R.png"  style="position:absolute; top:1050px;left:1200px; width:150px; height:260px;"/>
<div class="checkbox12">
<a href="#" style="color:white;
text-decoration:none;">예매</a>
</div>
<div class="like12">
<a href="#" style="color:black;
text-decoration:none;">♡</a>
</div>
<div class="after12">
<a href="#" style="color:black;
text-decoration:none;">관람한줄평</a>
</div>
<!-- ------------------------------------------- -->


 	<div class="text5">
	<p>ThT</p>
	</div>


	<img src="/resources/image/movie.png"  style="position:absolute; top:1500px; left:0; right:0;width:100%; height:20%;"/>
	<div class="text4">
		<p>입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</p>
		<p>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</p>
		<p>대표전화:1234-0234, 이메일:ThT@gmail.com</p>
	</div>


</body>
</html>