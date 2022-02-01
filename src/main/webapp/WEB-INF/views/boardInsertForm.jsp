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
<style>

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
			margin:35px 10px 25px;
			padding:0;
			border-left: 2px solid silver;
			white-space : nowrap; 
			text-overflow : ellipsis; 
			z-index:1;
			}
			
			#first li a{ 
			display:block; 
			font-family:"돋움";
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



.text4{
position:absolute;
	top:12px;
	left:100px;
	font-size:40px;
	color:black;
	text-decoration: none;
		
}


.text5{
position:absolute;
top:10px;
left:250px;
font-size:15px;
color:black;

}	

.image{
position:absolute;
top:650px;
left:0;
width:100%;
height:20%;
padding:0;
border:1px solid black;
text-align:center;
font-size:10px;
color:black;
	
	
}

.content2{
	
	position: absolute;
	padding:5%;
	
	width:50%;
	height:50%;
	top:10%;
	left:20%;
	color:white;
}

.input{
	
	
	position: absolute;
	padding:10%;
	padding-right:110px;
	top:80%;
	right:0%;
	color:white;
	
}




</style>
<meta charset="EUC-KR">
<link rel="stylesheet" href="${path}/resources/css/hoogi_insert.css">
<title>Insert title here</title>
</head>
<body>


<div class="color2">

<c:if test = "${user == null }">
<div class="text6">
<a href="javascript:popupOpen();" style="color:white;
text-decoration:none;">로그인            |</a>

     

</div>

<div class="text7">
<a href="<c:url value='/joinForm.do' />" style="color:white;
text-decoration:none;">회원가입             |</a>

</div>
</c:if>

<c:if test = "${user != null }">
<div class="text8">
<a href="#" style="color:white;
text-decoration:none;">마이페이지	</a>
</div>
<div class="text8">
<a href="<c:url value='/logout.do' />" style="color:white;
text-decoration:none;">로그아웃	</a>
</div>
</c:if>





<ul id="first">

		<li><a href="boardAll.do">영화리뷰</a>

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

		
		<a href="index1.jsp" style="
			position:absolute;
			top:25px;
			left:400px;
			font-size:40px;
			color:black;
			text-decoration:none;
			z-index:3;">ThT</a>
	
		</ul>

<div class="content2">
<c:if test="${msg ==null }">
	<form action="boardInsert.do" method="post">
	<table border="0">
			<input type="text" name="title" placeholder="제목을 입력해주세요." style=" top:0;width:100%">
			<input type="text" name="id" value="${userID }" readonly="readonly"style=" top:0;width:100%">
			<input type="text" name="content"style=" top:0;width:100%; height:250px; margin:1% 0% 0% 0%" placeholder="내용을 입력해주세요.">
			<div class="input">
				<input type="submit" value="추가">
				<a href="boardAll.do"><input type="button" value="작성취소"></a>  
			</div>
	</table>
	</form>
	</c:if>

	<c:if test="${msg ==false }">
		<p>로그인 하셔야 글을 작성 할 수 있습니다.</p>
		<p><a href="boardAll.do">목록</a></p>
	</c:if>
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

</body>
</html>