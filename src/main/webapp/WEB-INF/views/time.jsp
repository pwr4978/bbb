<!-- 상영시간표 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/time1.css">
</head>
<body>
<script>
function popupOpen(){

	var popUrl = "Login.jsp";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}


</script>

	


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

		<li><a href="boardAll.do">영화리뷰</a>
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
		 <li><a href="tht.jsp">특별관</a>
			
		</ul>
		</li>
		<li><a href="#">영화목록</a>
		<ul>
			<li><a href="MovieList.jsp">상영 영화</a>
			<li><a href="time.jsp">시간표</a>
			
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
		
		


<div class="image">
<img src="./resources/image/R.png"  style="position:absolute; top:0;left:0; width:50px; height:50px;"/>
</div>
<div class="title">

<h3>ABC 상영중/범죄 액션/100분/2021.10.01 개봉</h3>

</div>
<div class="nalja">
<a href="#" style="text-decoration:none">10:00<hr>
120좌석</a>
</div>
<div class="nalja1">
<a href="#" style="text-decoration:none">12:15<hr>
112석</a>
</div>

<div class="nalja2">
<a href="#" style="text-decoration:none">14:30<hr>
30석</a>

</div>

<div class="nalja3">
<a href="#" style="text-decoration:none">16:45<hr>
45석</a>


</div>

<div class="text4">
<p>----------------------------------------------------------------------------------------------------</p>


</div>

<div class="image1">
<img src="./resources/image/R.png"  style="position:absolute; top:0;left:0; width:50px; height:50px;"/>
</div>

<div class="title1">

<h3>BBB 상영중/로맨스/120분/2021.10.12 개봉</h3>


</div>

<div class="nalja4">
<a href="#" style="text-decoration:none">09:00<hr>
100좌석</a>

</div>

</div>
<div class="nalja5">
<a href="#" style="text-decoration:none">12:00<hr>
60석</a>
</div>

<div class="nalja6">
<a href="#" style="text-decoration:none">15:00<hr>
96석</a>

</div>

<div class="nalja7">
<a href="#" style="text-decoration:none">18:00<hr>
74석</a>
</div>

<div class="text5">
<p>----------------------------------------------------------------------------------------------------</p>


</div>


<div class="image2">
<img src="./resources/image/R.png"  style="position:absolute; top:0;left:0; width:50px; height:50px;"/>
</div>

<div class="title2">

<h3>CCC 상영중/공포/120분/2021.09.28 개봉</h3>


</div>

<div class="nalja8">
<a href="#" style="text-decoration:none">11:00<hr>
115좌석</a>

</div>

</div>
<div class="nalja9">
<a href="#" style="text-decoration:none">1:15<hr>
60석</a>
</div>

<div class="nalja10">
<a href="#" style="text-decoration:none">15:30<hr>
25석</a>

</div>

<div class="nalja11">
<a href="#" style="text-decoration:none">19:00<hr>
90석</a>
</div>

<div class="text6">
<p>----------------------------------------------------------------------------------------------------</p>


</div>


<div class="image3">
<img src="./resources/image/movie.png"  style="position:absolute; top:0;left:0; width:100%; height:100%"/>
<div class="text7">
<p>THT</p>
</div>

<div class="text8">
		<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</h5>
		<h5>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</h5>
		<h5>대표전화:1234-0234, 이메일:ThT@gmail.com</h5>
	</div>

</div>





</body>
</html>