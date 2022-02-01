<!-- 특별관-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/tht2.css">
</head>
<body>
<script type="text/javascript">
function popupOpen(){

	var popUrl = "Login.jsp";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}



</script>
	
<style>
html, body{
    width: 100%;
    height: 100%;
    padding: 0;
    margin: 0;
}

#first{ 
			
			list-style:none; 
			position:absolute;
  			top:30px;
  			right:0;
  			left:0;
  			height:80px;
			padding:4px 500px;
			margin:0;
			background:/* rgba(255,0,0,1) */white;
			border:1px solid silver;
			border-right: 1px solid silver;
			
			
		}
		
	#first li
			{ 
			float:right; 
			position:relative;
			margin:35px 20px 25px;
			padding:0;
			border-left: 2px solid silver;
			white-space : nowrap; 
			text-overflow : ellipsis; 
			z-index:1;
			
			}
			
			#first li a{ 
			display:block; 
			font-family:"����";
			font-weight:bold;
			font-size:14px;
			padding:6px 6px;
			margin:0;
			color:black;
			text-decoration:none; 
			text-shadow:0 1px 1px rgba(0,0,0,0.3);
			
		
		
		}
		
		#first li:hover>a{
			background:none;
			color:#666699;
			margin:0;
			padding:5px;
				
		}
		
		#first ul{
			list-style:none;
			font-weight:bold;
			margin:0;
			padding:0;
			position:absolute;
			left:-10px;
			top:45px;
			width:124px;
			background:silver;
			text-align:left;
			font-size:6px;
			opacity:0;	
		}
		#first ul li{
			float:none;
			margin:0;
			padding:0;
			font-size:6px;
			border-bottom: 1px solid rgba(0,0,0,0.15);
		}
		#first ul a{
			font-weight:bold;
			color:white;
		}
		#first ul li:hover a{
			background:#0000ff;
			color:#FFCC99;
			font-weight:bold;
		}
		#first li:hover ul{
			opacity:1; 
		}
		#first li:hover ul li{
			height:35px;
			overflow:visible; 
			padding:0px;
		}		
		
		
		
.text1{
	
			position:absolute;
			top:10px;
			left:1210px;
			font-size:10px;
			color:black;
			text-decoration:none;
			position: absolute;
}
.text2{
	position:absolute;
			top:10px;
			left:1250px;
			font-size:10px;
			color:black;
			text-decoration:none;
			position:absolute;
}

.text3{
	
	position:absolute;
			top:10px;
			left:1300px;
			font-size:10px;
			color:black;
			text-decoration:none;
			position: absolute;
}




.image{
	
	
	box-sizing: border-box;
	top:250px;
	left:500px;
	width:430px;
	height:10px;
	position: absolute;
	padding:4%;
	
}

.text4{
	
	position:absolute;
	top:0;
	left:30px;
	font-size:15px;
	color:white;
	text-decoration:none;
	position: absolute;
	
}

.image1{
	
	
	box-sizing: border-box;
	top:400px;
	left:300px;
	width:630px;
	height:100px;
	position: absolute;
	padding:4%;

	
	z-index: 1;
	
}

.text5{
	
	position:absolute;
	top:0;
	left:30px;
	font-size:15px;
	color:white;
	text-decoration:none;
	position: absolute;
	
}

.image2{
	
	
	box-sizing: border-box;
	top:250px;
	right:280px;
	width:300px;
	height:600px;
	position: absolute;
	padding:6%;
	border-radius: 8px;
	
}

.text6{
	
	position:absolute;
	top:0;
	left:30px;
	font-size:15px;
	color:white;
	text-decoration:none;
	position: absolute;
	
}

.image3{
	
	
	box-sizing: border-box;
	top:550px;
	left:300px;
	width:300px;
	height:300px;
	position: absolute;
	padding:6%;
	border-radius: 8px;
	
}

.text7{
	
	position:absolute;
	top:0;
	left:30px;
	font-size:15px;
	color:white;
	text-decoration:none;
	position: absolute;
	
}

.image4{
	
	
	box-sizing: border-box;
	top:550px;
	left:630px;
	width:300px;
	height:300px;
	position: absolute;
	padding:6%;
	border-radius: 8px;
	
}

.text8{
	
	position:absolute;
	top:0;
	left:30px;
	font-size:15px;
	color:white;
	text-decoration:none;
	position: absolute;
	
}

.image5{
	
position:absolute;
top:900px;
left:0;
width:100%;
height:20%;
padding:0;
border:1px solid black;
text-align:center;
font-size:10px;
color:black;

	
}

.text9{
	
	position:absolute;
	top:12px;
	left:100px;
	font-size:40px;
	color:black;
	text-decoration: none;
	
}
.text10{
	
position:absolute;
top:10px;
left:250px;
font-size:15px;
color:black;

	
}


.title{
	position:absolute;
	top:180px;
	left:200px;
	font-size:20px;
	color:BLUE;
	text-decoration: none;
	text-align:center;
	
	
}
	
</style>

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
			<li><a href="#">특별관</a>
			
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
		
		<div class="title">
		<h1>THT 특별관</h1>
		
		</div>
		
		
	<div class="image">
	<a href="#"><img src="/resources/image/drive-in-theater.jpg"  style="position:absolute; top:0;left:0; width:100%; height:100%; border-radius: 15px 15px 15px 15px;
	border: 1px solid #aaa;" /></a>
	<div class="text4">
	<h2>THE UNIQUE</h2>
	<h5>ThT만의 특별한 시네마</h5>
	</div>
	</div>
	
	<div class="image1">
	<a href="#"><img src="/resources/image/chair.jpg"  style="position:absolute; top:0;left:0; width:100%; height:100%; border-radius: 15px 15px 15px 15px;
	border: 1px solid #aaa;"/></a>
	<div class="text5">
	<h2>DOLBY CINEMA</h2>
	<h5>THT가 선보이는 최고의 몰입 시네마</h5>
	</div>
	</div>
	
	<div class="image2">
	<a href="#"><img src="/resources/image/chair2.jpg"  style="position:absolute; top:0;left:0; width:100%; height:100%; border-radius: 15px 15px 15px 15px;
	border: 1px solid #aaa;"/></a>
	<div class="text6">
	<h2>COMFORT<h2>
	<h5>편안한 영화관람을 위한 <br>다양한 여유공간</h5>	
	</div>
	</div>
	
		<div class="image3">
	<a href="#"><img src="/resources/image/movie-theater2.jpg"  style="position:absolute; top:0;left:0; width:100%; height:100%; border-radius: 15px 15px 15px 15px;
	border: 1px solid #aaa;"/></a>
	<div class="text7">
	<h2>PRIVATE<h2>
	<h5>당신의 특별한 순간을 위한 <br> 프리미엄 룸서비스</h5>	
	</div>
	</div>
	
	<div class="image4">	
	<a href="#"><img src="/resources/image/curtain.png"  style="position:absolute; top:0;left:0; width:100%; height:100%; border-radius: 15px 15px 15px 15px;
	border: 1px solid #aaa;"/></a>
	<div class="text8">
	<h2>MX<h2>
	<h5>진정한 사운드를 통한 최고의 영화 <br> THT의 차세대 표준 상영관</h5>	
	</div>
	</div>
	



<div class="image5">
<img src="./resources/image/movie.png"  style="position:absolute; top:0;left:0; width:100%; height:100%"/>
<div class="text9">
<p>THT</p>
</div>

<div class="text10">
		<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</h5>
		<h5>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</h5>
		<h5>대표전화:1234-0234, 이메일:ThT@gmail.com</h5>
	</div>

</div>

</body>
</html>