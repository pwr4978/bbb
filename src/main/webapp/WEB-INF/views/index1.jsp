<!-- ����ȭ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="${path}/resources/css/index1.css">

<script type="text/javascript">



function popupOpen(){

	var popUrl = "Login.jsp";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}


</script>
<style>



</style>


</head>
<body style="margin:0">

	
	
<div class="color2">
<div class="text6">
<a href="javascript:popupOpen();" style="color:white;
text-decoration:none;">�α���            |</a>

     

</div>

<div class="text7">
<a href="Sign_up.jsp" style="color:white;
text-decoration:none;">ȸ������             |</a>

</div>

<div class="text8">
<a href="Mypage.jsp" style="color:white;
text-decoration:none;">����������	</a>

</div>
</div>





<ul id="first">

		<li><a href="#">ã�ƿ��ô� ��</a>
		<ul>
			<li><a href="#">����</a>
		</ul>
		</li>
			
		<li><a href="#">����</a>
		<ul>
			<li><a href="#">��ȭ����</a>
		</ul>
		</li>
		<li><a href="#">����</a>
		<ul>
			
			<li><a href="tht.jsp">Ư����</a>
		</ul>
		</li>
		<li><a href="#">��ȭ���</a>
		<ul>
			<li><a href="MovieList.jsp">�� ��ȭ</a>
			<li><a href="time.jsp">�ð�ǥ</a>
	
		</ul>
		</li>
		
		<a href="index1.jsp" style="
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
		<h1>�ڽ����ǽ�</h1>
		</div>


	
	
	<a href="#"><img src="/resources/image/R.png"  style="position:absolute; top:250px;left:150px; width:150px; height:260px;"/></a>

	<div class="text2">
	<h3>1</h3>
	</div>
	<a href="#"><img src="/resources/image/R.png"  style="position:absolute; top:250px;left:500px; width:150px; height:260px;"/></a>
	<div class="text3">
	
	
	<h3>2</h3>

	</div>
	<a href="#"><img src="/resources/image/R.png"  style="position:absolute; top:250px;left:850px; width:150px; height:260px;"/></a>
	<div class="text4">
	<h3>3</h3>
	
	</div>
	<a href="#"><img src="/resources/image/R.png"  style="position:absolute; top:250px;left:1200px; width:150px; height:260px;"/></a>
	<div class="text5">
 	

	<h3>4</h3>
	
	</div>
	</div>
	
	
	<img src="/resources/image/movie-theater.jpg" style="position:absolute; top:800px; left:0; right:0;width:40%; height:50%;"/>
	<div class="text10">
	<h2>���� ��ȭ���� �湮�� �ּż� �����մϴ�.</h2>
	<h2>���� ��ȭ���� ������ ���Ǹ� ���� �ֻ��� ���񽺸� ������ �帮�� �ֽ��ϴ�.</h2>
	<h2>����� ��ȭ ���� �ǽñ� �ٶ��ϴ�.</h2>
	</div>

	
	<div class="color1">

	<a href="#"> <img src="/resources/image/VIPLOUNGE.png" style="position:absolute; top:80px; left:150px; right 0; width:100px; height:100px;"/>
 	
 	<div class="text13">
 	<p>VIP ROUNGE<p>
	</div>
	<a href="#"> <img src="/resources/image/card.png" style="position:absolute; top:80px; left:500px; right 0; width:100px; height:100px;"/>
	<div class="text14">
	<p>���ϸ���ī��</p>
	</div>
	<a href="#"> <img src="/resources/image/membership.png" style="position:absolute; top:80px; left:850px; right 0; width:100px; height:100px;"/>
 	<div class="text15">
 	<p>�ɹ���</p>
 	</div>
 	<a href="#"> <img src="/resources/image/Event.png" style="position:absolute; top:80px; left:1200px; right 0; width:100px; height:100px;"/>
 	<div class="text16">
 	<p>�̺�Ʈ</p>
 	</div>
 	</div>
	
	
 <div class="text17">
 <h2>����</h2>
 <img src="/resources/image/headphones.png"  style="position:absolute; top:80px; left:150px; right:0;width:50px; height:50px;"/>
 <div class="text18">
 <p>������</p>
  </div>
 
 
 <img src="/resources/image/question.png"  style="position:absolute; top:80px; left:500px; right:0;width:50px; height:50px;"/>
 
 <div class="text19">
 <p>���ֹ�������</p>
 </div>
 <img src="/resources/image/friend.png"  style="position:absolute; top:80px; left:850px; right:0;width:50px; height:50px;"/>
  <div class="text20">
 <p>���/��ü����</p>
 </div>
 <img src="/resources/image/LostandFound.png"  style="position:absolute; top:80px; left:1200px; right:0;width:50px; height:50px;"/>
 <div class="text21">
 <p>�нǹ� ����</p>
 </div>
 </div>
 
<div class="image">
<img src="./resources/image/movie.png"  style="position:absolute; top:0;left:0; width:100%; height:100%"/>
<div class="text12">
<p>THT</p>
</div>

<div class="text11">
		<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ա� �����:��������, ���¹�ȣ:123-1234-1234-12 ������:ThT</h5>
		<h5>��ǥ�ڸ�:5��, ��ȣ��:ThT, �ּ� :���α� ��</h5>
		<h5>��ǥ��ȭ:1234-0234, �̸���:ThT@gmail.com</h5>
	</div>

</div>

 	

</body>
</html>