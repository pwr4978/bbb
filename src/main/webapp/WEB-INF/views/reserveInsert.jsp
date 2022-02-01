<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	 <link rel="stylesheet" href="${path}/resources/css/updown.css">  
     <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<style>
	*{
        font-size : 11px;
    	list-style : none;
    }

    body{
   	 background-color : #FDFCF0;
    }

    /* 라디오버튼 */
    input[type=radio]{
	    display : none;
	    margin : 10px;
    }

    input[type=radio]+label{
	    display : inline-block;
	    margin : 2px;
	    padding : 8px 19px;
	    font-size : 13px;
    } 


    

    .movierbtn:checked + label,
    .theaterrbtn:checked+label,
    .monthrbtn:checked+label,
    .daterbtn:checked+label,
    .timerbtn:checked+label{
	    background-color : black;
	    color : white;
    }

    label{
        cursor : pointer;
    }
    
    label:hover{
        background-color: rgb(77, 75, 75);
        color: white;
    }
        
    /* ---------- */

    /* header */

    .header{
	    height : 125px;
	    background-color : red;
    }

    /* reserve */

    .reserve-container{ /* 예약 큰박스*/
	    margin-top: 140px;
	    margin-bottom : 50px;
	    display : flex;
	    justify-content : center;
	    height : 500px;
	    width : 100%;
    }

    .reserve-title{ /* 예매 위 타이틀*/
	    border-bottom : 1px solid #dddddd;
	    background-color : #444444;
	    text-align : center;
	    color : #dddddd;
	    padding : 5px;
	    font-size : 13px;
	    font-weight : bold;
	    border : 1px solid #dddddd;
    }

    /* 칸별 사이즈 */
    .movie-part{
	    width : 15%;
	    border : 1px solid #dddddd;
	}

    .theater-part{
	    width : 15%;
	    border : 1px solid #dddddd;
    }

    .month-part{
	    width : 8%;
	    border : 1px solid #dddddd;
    }

    .date-part{
	    width : 10%;
	    border : 1px solid #dddddd;
    }

    .time-part{
	    width : 15%;
	    border : 1px solid #dddddd;
    }

    /* ---------- */

    .movie-list-wrapper,
    .movie-list{
    	border : 0;
    }

    #movie_li,
    #theater_li,
    #time_li{
	    padding-left : 0; 
	    text-align : center;
	    font-weight : bolder;
    }

    .monthd{
        padding-left : 0; 
        text-align : center;
        font-weight : bolder;
    }

    

    .rsvconfirm{
	    display : flex;
	    height : 150px;
	    justify-content : center;
	    width : 100%;
	    background-color : #393939;
	    font-size : 100px;
    }

    .showreserve{
        margin-right: 10px;
    }

    .rsv_wrapper{
	    display : flex;
	    align-items : center;
	    color : white;
    }

    .reserve-month{
    	overflow:auto;
    }

    #month_li{
	    padding-left : 0; 
	    text-align : center;
	    font-weight : bolder;
    }

    .datebox{
	    overflow : auto;
	    height : 470px;
	    text-align : center;
    }

    .date{
	    font-size : 20px;
	    background-color : blue;
    }

    #date_li{
	    padding-left : 0; 
	    text-align : center;
	    font-weight : bolder;
    }  

    .bottom{
	    height : 125px;
	    background-color : blue;
    }

    .clicked{
	    color : white;
	    background-color : #333333;
    }
	</style> 
</head>
<body>
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

<form action = "reserveAll.do" method=POST onsubmit ="return formnull()">	
	<input type = hidden class = "hidden-name" id = "usn" name = "username" value = ${ userID }>
	<div class = "reserve-container">
		<div class = "movie-part">
			<div class = "reserve-title">
				영화
			</div>
			<div class = "movie-list-wrapper">	
				<div class = "movie-list">
					<ul id = "movie_li">
							<!-- movie-name -->
						<li>
							<input type = radio class = "movierbtn" id = "mvn1" name="mvname" value = "movie1">
							<label for = "mvn1">영화제목1</label>	
						</li>
						<li>
							<input type = radio class = "movierbtn" id = "mvn2" name="mvname" value = "movie2">
							<label for = "mvn2">영화제목2</label>	
						</li>
						<li>
							<input type = radio class = "movierbtn" id = "mvn3" name="mvname"value = "movie3">
							<label for = "mvn3">영화제목3</label>	
						</li>
						<li>
							<input type = radio class = "movierbtn" id = "mvn4" name="mvname"value = "movie4">
							<label for = "mvn4">영화제목4</label>	
						</li>
						<li>
							<input type = radio class = "movierbtn" id = "mvn5" name="mvname"value = "movie5">
							<label for = "mvn5">영화제목5</label>	
						</li>
						
					</ul>
				</div>
			</div>
		</div>
		
		<div class = "theater-part">
			<div class = "reserve-title">
				극장
			</div>
			<div class = "theater-container">
				<div class = "theater-wrapper">
					<div class = "theater-location-wrapper">
						<ul id = "theater_li" >
							<li>  <!-- theater-location -->
								<input type = radio class = "theaterrbtn" id = "th1" name="theater" value="1상영관">
								<label for = "th1">1상영관</label>	
							</li>
							<li>
								<input type = radio class = "theaterrbtn" id = "th2" name="theater" value="2상영관">
								<label for = "th2">2상영관</label>
							</li>
							
							<li>
								<input type = radio class = "theaterrbtn" id = "th3" name="theater" value="3상영관">
								<label for = "th3">3상영관</label>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class = "month-part">
			<div class = "reserve-title">
				월
			</div>	<!-- month -->
			<div class = "reserve-month">
				<ul id = "month_li">
					<li>
						<input type = radio class = "monthrbtn" id = "mon1" name = "month" value = "1">
						<label for ="mon1">1월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon2" name = "month" value = "2">
						<label for ="mon2">2월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon3" name = "month" value = "3">
						<label for ="mon3">3월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon4" name = "month" value = "4">
						<label for ="mon4">4월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon5" name = "month" value = "5">
						<label for ="mon5">5월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon6" name = "month" value = "6">
						<label for ="mon6">6월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon7" name = "month" value = "7">
						<label for ="mon7">7월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon8" name = "month" value = "8">
						<label for ="mon8">8월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon9" name = "month" value = "9">
						<label for ="mon9">9월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon10" name = "month" value = "10">
						<label for ="mon10">10월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon11" name = "month" value = "11">
						<label for ="mon11">11월</label>
					</li>	
					<li>	
						<input type = radio class = "monthrbtn" id = "mon12" name = "month" value = "12">
						<label for ="mon12">12월</label>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div class = "date-part">
			<div class = "reserve-title">
				일
			</div>
			<div class = "datebox">
				<div class = "reserve-date" id = "rsvdate">
				</div>
			</div>
		</div>
		
		<div class = "time-part">
			<div class = "reserve-title">시간</div>
			<div class = "reserve-time">
				
				<div class="reserve-time-wrapper">
					<ul id = time_li>
						<li>
                            <input type = radio class = "timerbtn" id = "time1" name = "mvtime"  value = "12:20">
                            <label for = "time1">12:20</label>
                        </li>
                        <li>
                            <input type = radio class = "timerbtn" id = "time2" name = "mvtime" value = "14:50">
                            <label for = "time2">14:50</label>
                        </li>
                        <li>
                            <input type = radio class = "timerbtn" id = "time3" name = "mvtime" value = "17:20">
                            <label for = "time3">17:20</label>
                        </li>
                        <li>
                            <input type = radio class = "timerbtn" id = "time4" name = "mvtime" value = "19:50">
                            <label for = "time4">19:50</label>
                        </li>
                    </ul>

                </div>
			</div>
			<div class = "reservebtn">
				
					
	
			</div>
		</div> 
	</div>

	<div class = "rsvconfirm">	
			<div class = "rsv_wrapper">
				<div class = "showreserve" id = "rsv_name">
					영화 선택 
				</div>
				<div class = "showreserve" id = "rsv_theater">
					극장 선택
				</div> 
				<div>
				
				
				<div>
					<input type = "submit" value = "좌석선택">
				</div>
			</div>
	</div>
</form>	
	
	<div class="image">
<img src="./resources/image/movie.png"  style="position:absolute; top:0;left:0; width:100%; height:100%"/>
<div class="text12">
<p>THT</p>
</div>

<div class="text11">
		<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금 은행명:신한은행, 계좌번호:123-1234-1234-12 예금주:ThT</h5>
		<h5>대표자명:5조, 상호명:ThT, 주소 :종로구 경운동</h5>
		<h5>대표전화:1234-0234, 이메일:ThT@gmail.com</h5>
	</div>

</div>
	
	<script>
		//선택 상영관 표시-----------------------------------------
		
		var th1 = document.getElementById('th1');
		var th2 = document.getElementById('th2');
		var th3 = document.getElementById('th3');
		
		var thname = "";
		
		function theater_name(){
			document.getElementById("rsv_theater").innerHTML = "상영관 : " + thname;
		}
		
		th1.onclick = function(){
			thname = document.getElementById('th1').value;
			theater_name();
		}
		th2.onclick = function(){
			thname = document.getElementById('th2').value;
			theater_name();
		}
		th3.onclick = function(){
			thname = document.getElementById('th3').value;
			theater_name();
		}
		
		//선택 영화제목 표시 ----------------------------------------
		
		var mvn1 = document.getElementById('mvn1');
		var mvn2 = document.getElementById('mvn2');
		var mvn3 = document.getElementById('mvn3');
		var mvn4 = document.getElementById('mvn4');
		var mvn5 = document.getElementById('mvn5');
		
		var mvname = "";
		
		function movie_name(){
			document.getElementById("rsv_name").innerHTML = "영화 : " + mvname;
		}
		
		mvn1.onclick = function(){
			mvname = document.getElementById('mvn1').value;
			movie_name();
		}
		mvn2.onclick = function(){
			mvname = document.getElementById('mvn2').value;
			movie_name();
		}
		mvn3.onclick = function(){
			mvname = document.getElementById('mvn3').value;
			movie_name();
		}
		mvn4.onclick = function(){
			mvname = document.getElementById('mvn4').value;
			movie_name();
		}
		mvn5.onclick = function(){
			mvname = document.getElementById('mvn5').value;
			movie_name();
		}
		
		//날짜----------------------------------------------------
		
		/* <div class = "reserve-date" id = "rsvdate"> */
		
		const reservedate = document.querySelector(".reserve-date");
		let div = "";
		let label = "";
		
		const date = new Date();
		const lastDay = new Date(date.getFullYear(), date.getMonth()+1, 0).getDate();
		
		var mon1 = document.getElementById('mon1');
		var mon2 = document.getElementById('mon2');
		var mon3 = document.getElementById('mon3');
		var mon4 = document.getElementById('mon4');
		var mon5 = document.getElementById('mon5');
		var mon6 = document.getElementById('mon6');
		var mon7 = document.getElementById('mon7');
		var mon8 = document.getElementById('mon8');
		var mon9 = document.getElementById('mon9');
		var mon10 = document.getElementById('mon10');
		var mon11 = document.getElementById('mon11');
		var mon12 = document.getElementById('mon12');
		
		const lastDay1 = new Date(date.getFullYear(), 1, 0).getDate();
		const lastDay2 = new Date(date.getFullYear(), 2, 0).getDate();
		const lastDay3 = new Date(date.getFullYear(), 3, 0).getDate();
		const lastDay4 = new Date(date.getFullYear(), 4, 0).getDate();
		const lastDay5 = new Date(date.getFullYear(), 5, 0).getDate();
		const lastDay6 = new Date(date.getFullYear(), 6, 0).getDate();
		const lastDay7 = new Date(date.getFullYear(), 7, 0).getDate();
		const lastDay8 = new Date(date.getFullYear(), 8, 0).getDate();
		const lastDay9 = new Date(date.getFullYear(), 9, 0).getDate();
		const lastDay10 = new Date(date.getFullYear(), 10, 0).getDate();
		const lastDay11 = new Date(date.getFullYear(), 11, 0).getDate();
		const lastDay12 = new Date(date.getFullYear(), 12, 0).getDate();
		
		mon1.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay1; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon2.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay2; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon3.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay3; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon4.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay4; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon5.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay5; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon6.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay6; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon7.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay7; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon8.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay8; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon9.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay9; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon10.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay10; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon11.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay11; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		
		mon12.onclick = function(){
			
			reservedate.innerHTML = '';
			
			for(let i=1; i<=lastDay12; i++){
				div = document.createElement("div");
				div.classList = "monthd";
				label = document.createElement("label");
				const input = document.createElement('input');
				
				input.type = "radio";
				input.name = "day";
				input.classList = "daterbtn";
				input.id = "day"+i;
				input.value = i;
				
				label.append(i+"일")
				label.htmlFor = "day"+i;
				
				div.append(input);
				div.append(label);
				
				reservedate.append(div);
			}	
		} 
		

        const datebtn = document.getElementsByClassName('daterbtn');
        const rsvmonth = document.getElementById('rsv_month');
        const selectmonth = document.getElementsByClassName('monthrbtn');

        datebtn.onclick = function(){
            var radiovalue = $('input[name="day"]:checked').val();
            rsvmonth.innerHTML = radiovalue;
        }
        
        function NOID(){
        	var uid = '<%=(String)session.getAttribute("userID")%>';
        	
        	
        }
	
        var movierbtn = document.getElementByClassName('movierbtn').value;
        var theaterbtn = document.getElementByClassName('theaterrbtn').value;
        var monthrbtn = document.getElementByClassName('monthrbtn').value;
        var daterbtn = document.getElementByClassName('daterbtn').value;
        var seatbtn = document.getElementById('Seatbtn');
        
         function formnull(){
        	 if($("input:radio[name=mvname]").is(":checked") == false) {
        		 alert('영화를 선택해 주세요');
         		 return false;
        	 }else if($("input:radio[name=theater]").is(":checked") == false) {
        		 alert('상영관을 선택해 주세요');
         		 return false;
        	 }else if($("input:radio[name=month]").is(":checked") == false) {
        		 alert('날짜를 선택해 주세요');
         		 return false;
        	 }else if($("input:radio[name=day]").is(":checked") == false) {
        		 alert('날짜를 선택해 주세요');
         		 return false;
        	 }else if($("input:radio[name=mvtime]").is(":checked") == false) {
        		 alert('시간을 선택해 주세요');
         		 return false;
        	 }
        	 

        }
	</script>
</body>
</html>