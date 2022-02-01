<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/Sign_up.css">
<title>회원가입</title>
</head>
<body>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
function popupOpen(){

	var popUrl = "Login.jsp";	

	var popOption = "width=400, height=400, left=700, right=500; top=400; resizable=no, scrollbars=no, status=no;";   

		window.open(popUrl,"",popOption);

	}


</script>
	


<div class="color">
<div class="text1">
<a href="<c:url value='/loginForm.do' />" style="color:black;
text-decoration:none;">로그인            |</a>           

</div>
<div class="text2">
<a href="<c:url value='/joinForm.do' />" style="color:black;
text-decoration:none;">회원가입             |</a>

</div>
<%-- <c:if test="${user != null }">
<div class="text3">
<a href="#" style="color:black;
text-decoration:none;">마이페이지	</a>

</div>
</c:if> --%>
</div>


<img src="/resources/image/movie-theater1.jpg" style="position:absolute; top:120px; left:0; right:0; bottom:0; width:100%; height:60%;"/>




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
			<li><a href="#">영화 극장</a> 
			<li><a href="#">특별관</a>
			
		</ul>
		</li>
		<li><a href="#">영화목록</a>
		<ul>
			<li><a href="MovieList">상영 영화</a>
			
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

<div class="container">
<form class="sign_up_form" method="post">
<table cellpadding="5" cellspacing="0">
<h1>회원가입</h1>

<tr>
<td>아이디 </td> 
<td><input type="text" id=id name="id" class="id_get" size="12" 
required oninvalid="this.setCustomValidity('6~12자의 영문 대소문자와 숫자를 사용해 아이디를 입력해주세요.')" oninput="this.setCustomValidity('')"></td>
<td>
<br>
<span class="id_er">4~12자의 영문 대소문자와 숫자를 사용해 입력해주세요.</span>
<span class="id_ga">사용 가능한 아이디입니다.</span>
<span class="id_bulga">아이디가 이미 존재합니다.</span>

</td>
</tr>
<tr>
<td>비밀번호 </td>  
<td><input type="password" class="pw_get" id="pw" name="pw" size="16" required oninvalid="this.setCustomValidity('8~16자 영문 대 소문자, 숫자, 특수문자를 사용해 비밀번호를 입력해주세요.')" oninput="this.setCustomValidity('')"></td>
<td>
<span class="pw_er">8~16자 영문 대 소문자, 숫자, 특수문자를 사용해 입력해주세요.</span>
<span class="pw_sc">사용가능한 비밀번호입니다.</span>
</td>
</tr>
<tr>
<td>비밀번호 확인</td>  
<td><input type="password" class="pw_get1" id="pw1" size="16" pattern=".{8,16}" required oninvalid="this.setCustomValidity('입력한 비밀번호를 입력해주세요.')" oninput="this.setCustomValidity('')"> </td>
<td>
<span class="pw_ch_sc">비밀번호가 일치합니다.</span>
<span class="pw_ch_fa">비밀번호가 일치하지 않습니다.</span>
<span class="pw_ch_er">비밀번호 확인을 입력해주세요.</span>
</td>
</tr>
<tr>
<td>이름 </td> 
<td><input type="text" id="name" class="name_get" name="name" required oninvalid="this.setCustomValidity('이름을 입력해주세요.')" oninput="this.setCustomValidity('')"></td>
<td>
<span class="name_er">이름을 올바르게 입력해주세요.</span>
</td>
</tr>
<tr>
<td>생년월일 </td>
<td> <input type="date" id="date" class="birth_get" name="birth" required oninvalid="this.setCustomValidity('생년월일을 입력해주세요.')" oninput="this.setCustomValidity('')"></td>
</tr>
<tr>
<td>연락처 </td>
<td> <input type="tel" id="tel" class="tel_get" name="tel" required oninvalid="this.setCustomValidity('연락처를 입력해주세요')" oninput="this.setCustomValidity('')"></td>
<td> <span class="tel_er">연락처를 올바르게 입력해주세요.</span> </td>
</tr>
<tr>
<td>이메일 </td> 
<td><input type="email" id="e-mail" name="email" class="mail_input" size="30" maxlength="30" required oninvalid="this.setCustomValidity('이메일주소를 입력해주세요.')" oninput="this.setCustomValidity('')"> <button type="button"><span class="mail_send">인증번호 전송</span></button><br></td>
<td><input class="mail_code_input" id="code_input_box_false" disabled="disabled" required oninvalid="this.setCustomValidity('인증번호를 입력해주세요')" oninput="this.setCustomValidity('')"><span id="code_bigu"></span></td>
<td>
<span class="mail_er">이메일 주소를 입력해주세요.</span>
<span></span>
</td>
</tr>
 <tr>
<td colspan="4">
<input type="button" class="joingogo"  value="회원가입">
</td>     
</tr>
</table>
</form>
</div>




	<div class="text5">
	<p>ThT</p>
	</div>

	<img src="/resources/image/movie.png" alt="하단" style="position:absolute; top:585px; left:0; right:0;width:100%; height:20%;"/>
	<div class="text4">
		<p>입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</p>
		<p>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</p>
		<p>대표전화:1234-0234, 이메일:ThT@gmail.com</p>

</div>

<script>

var code = "";

// 유효성 검사 

var idVCh = false;      	// id중복확인
var pwV						// 비밀번호 확인
var pwCheckV= false;        // pw확인 일치 확인
var nameV= false;			// 이름확인
var telV= false;				// 폰번호확인
var mailCdV = false;       	// 인증번호 확인



$('.id_get').on("propertychange change keyup paste input", function(){

	var getId = $('.id_get').val();
	var data = {Id : getId} 
	var idReg = /^[A-za-z0-9]{6,12}/g;
	
	$.ajax({
		type : "post",
		url : "IdCheck",
		data : data,
		success : function(result){
			
				if(result != 'fail'){
					if(!idReg.test(getId)){
					$('.id_ga').css("display","none");
					$('.id_bulga').css("display", "none");
					$('.id_er').css("display", "inline-block");
					idVCh = false;
					}else{
						$('.id_ga').css("display","inline-block");
						$('.id_bulga').css("display", "none");
						$('.id_er').css("display", "none");
						idVCh = true;
					}
					
				} else {
					$('.id_er').css("display", "none");
					$('.id_bulga').css("display","inline-block");
					$('.id_ga').css("display", "none");	
					
					idVCh = false;
				}					
			
		
		}
	}); 	

});

$('.pw_get').on("propertychange change keyup paste input", function(){
    var pw = $('.pw_get').val();
    var pwReg = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
    
    if(!pwReg.test(pw)){
    	$('.pw_er').css("display", "inline-block");
    	$('.pw_sc').css("display", "none");
    	pwV	= false;
    } else{
    	$('.pw_er').css("display", "none");
    	$('.pw_sc').css("display", "inline-block");
    	pwV	= true;
    }
    
});

$('.pw_get1').on("propertychange change keyup paste input", function(){
	
    var pw = $('.pw_get').val();
    var pwck = $('.pw_get1').val();
    $('.pw_ch_er').css('display', 'none'); 
    
    if(pw == pwck){
        $('.pw_ch_sc').css('display','block');
        $('.pw_ch_fa').css('display','none');
        pwCheckV = true;
    }else{
        $('.pw_ch_sc').css('display','none');
        $('.pw_ch_fa').css('display','block');
        pwCheckV = false;
    }        
    
});  

$('.name_get').on("propertychange change keyup paste input", function(){
	var name = $('.name_get').val();
	var nameReg = /[ㄱ-힣]/;
	
	if(!nameReg.test(name)){
		$('.name_er').css("display","inline-block");
		nameV = false;
	}else{
		$('.name_er').css("display","none");
		nameV = true;
	}
});

$('.tel_get').on("propertychange change keyup paste input", function(){
	var tel = $('.tel_get').val();
	var telReg = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	
	if(!telReg.test(tel)){
		$('.tel_er').css("display","inline-block");
		telV = false;
	}else{
		$('.tel_er').css("display","none");
		telV = true;
	}
});


$(".mail_send").click(function(){
	var email = $(".mail_input").val();
	var codeInput = $(".mail_code_input");
	alert("메일을 확인해주세요.")
    $.ajax({
        
        type:"GET",
        url:"mailCheck?email=" + email,
        success:function(data){
        	
        	 codeInput.attr("disabled",false);  
        	 codeInput.attr("id","code_input_box_true")
        	 code = data;
        	 
        	 
        }
                
    });	
});

$(".mail_code_input").blur(function(){
	
	var inputCode = $(".mail_code_input").val(); 
	var codeResult = $("#code_bigu"); 
	
	if(inputCode == code){                            
		codeResult.html("인증번호가 일치합니다.");
		codeResult.attr("class", "correct");   
		mailCdV = true;
    } else {                                            
    	codeResult.html("인증번호를 다시 확인해주세요.");
    	codeResult.attr("class", "incorrect");
    	mailCdV = false;
    }    
    
    
});

$(document).ready(function(){
	 $(".joingogo").click(function(){
	    
	    
	    if(idVCh&&pwV&&pwCheckV&&mailCdV){
	    	
	    	alert("회원가입에 성공했습니다.")
            $(".sign_up_form").attr("action", "sign_up.do");
            $(".sign_up_form").submit();  	
            
        }   
	    return false;
	 });
	});

</script>

</body>
</html>