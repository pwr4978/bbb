<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href = "reserveSeat.css" rel = "stylesheet">
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
    	
        input[type=checkbox]{
            display : none;
        }
        
        input[type=checkbox]+label{
            display : inline-block;
            text-align: center;
        }

        input[type=checkbox]:checked + label{
            background-color: gray;
            color: white;
        }

        label{
            width:20px;
            height:20px;
            padding: 5px;
            border: 1px solid;
            margin: 3px 0.5px;
            cursor : pointer;
        }
        .seat {
            width: 30px;
            height: 30px;
        }
        
        .seatsky{
        	height : 100px;
        }
        
        .seatmom{
        	text-align : center;
        	
        	display : flex;
        }
        
        .lsb,
        .rsb{
        	width : 20%;
        }
        .seatBox{
        	background-color : #424242;
        	width : 60%;
        	border : 1px solid;
        	border-radius : 15px;
        }
        .header{
        	/* background-color : #424242; */
        }
        
        .header-name{
        	
            height : 50px;
            text-align : center;
            font-size : 30px; 
            border-bottom : 1px solid; 
            color : rgb(211, 202, 202);
        }
        
        .movie-confirm{
            display : flex;
            
            /* justify-content : space-between; */
            /* background-color : yellow; */
            
        }
        
        .mccenter{
           margin-bottom : 15px;
           color : rgb(211, 202, 202);
           margin : auto;
           text-align : left;
           /* background-color : red; */
        }
        
        .mcright{
            color : rgb(211, 202, 202);
            /* width : 30%; */
            margin : auto;
            /* background-color : blue; */
            text-align : left;
        }
        
        .mcpay {
        	background-color : rgb(211, 202, 202);
        	margin : auto;
        	/* background-color : green; */
        	
        }
        .selectSeat{
            text-align : center;
            background-color : white;
        }
        
        .selectSeatup,
        .selectSeatdown{
        	height : 50px;
        	background-color : white;
        }
	
		.screen{
			font-size : 30px;
			font-weight : bolder;
			display: flex;
            text-align: center;
            align-items: center;
            justify-content: center;
		}
		
        .reserveSeat{

            
        }

        .seatMain{
            display: flex;
            text-align: center;
            align-items: center;
            justify-content: center;
        }
        
        .rsvSeatL{
            width : 8%;
        }
        
        .reserveSeat1{
        	width : 20%;
        }
        
        .reserveSeat2{
        	width : 45%;
        }
        
        .reserveSeat3{
        	width : 20%;
        }
        
        .rsvSeatR{
        	width : 8%;
        }

        .seatEng{
            width:20px;
            height:20px;
            padding: 5px;
            border: 1px solid; 
            margin: 6px 30px;
            border-color : white;
        }

        .left4{
            /* margin-right: 50px;  */
            text-align: right;
        }

        .center8{
            margin-left: 50px;
            margin-right: 50px;
        }

        .right4{
            /* margin-left: 50px;  */
            text-align: left;
        }

        #seatI1+label,
        #seatI16+label,
        #seatJ1+label,
        #seatJ2+label,
        #seatJ15+label,
        #seatJ16+label,
        #seatK1+label,
        #seatK2+label,
        #seatK3+label,
        #seatK14+label,
        #seatK15+label,
        #seatK16+label
        {
            display: none;
            text-align: right;
        }
    </style>
</head>
<body>
<form action = "reserveSeat.do" method = "POST" onsubmit="return formnull2()">
	<div class = "seatsky"></div>
	<div class = "seatmom">
		<div class = "lsb"></div>	
		<div class = "seatBox">
			<div class = "header">
				<div class = "header-name">
					인원/좌석
				</div>
				<div class ="movie-confirm">
					<div class = "mcleft">
						
					</div>
						
				
					<div class ="mccenter">
						<span>예매자 ID : ${ user.id }</span><br>
						<span>영화제목 : ${ reserveVO.mvname }</span><br>
						<span>상영관 : ${ reserveVO.theater }</span><br>
						<span>상영 날짜 : ${ reserveVO.month }월 ${ reserveVO.day }일  ${ reserveVO.mvtime } </span><br>
						
						<!-- <span id = seatbun>좌석번호 : </span> -->
					</div>
					<div class = "mcright">
						
						<span>선택 좌석 수 : </span>
						<span id = seatnum></span><br>
						<span>가격 : </span>
						<span id = allprice></span><br>
					</div>
					<div class = "mcpay">
						<input type = submit id = "paybtn" value = "결제하기">
					</div>
				</div>
				 
			</div>
		
			<input type = hidden name = "username" value = ${ userID }>
			<input type = hidden name = "mvname" value = ${reserveVO.mvname }>
			<input type = hidden name = "theater" value = ${ reserveVO.theater }>	
			<input type = hidden name = "month" value = ${ reserveVO.month }>
			<input type = hidden name = "day" value = ${ reserveVO.day }>
			<input type = hidden name = "mvtime" value = ${ reserveVO.mvtime }>
			<div class = "selectSeatup"></div>
			<div class = "selectSeat">
				<div>
					<div class = "screen">
						<div class = screen1></div>
						<div class = screen2></div>
						<div class = screen3>SCREEN</div>
						<div class = screen4></div>
						<div class = screen5></div>
						
						
					</div>
		            <div class = "seatMain">
						<div class = "rsvSeatL">
		                    <div class = "seatEng">A</div>
		                    <div class = "seatEng">B</div>
		                    <div class = "seatEng">C</div>
		                    <div class = "seatEng">D</div>
		                    <div class = "seatEng">E</div>
		                    <div class = "seatEng">F</div>
		                    <div class = "seatEng">G</div>
		                    <div class = "seatEng">H</div>
		                    <div class = "seatEng">I</div>
		                    <div class = "seatEng">J</div>
		                    <div class = "seatEng">K</div>
		                    
		                </div>
		                
		                    
		                <div class="reserveSeat1"></div>
		                <div class="reserveSeat2"></div>
		                <div class="reserveSeat3"></div>
		                <div class="rsvSeatR"></div>
		                
		            </div>
		        </div>
			</div>
			<div class = "selectSeatdown"></div>
		</div>
		<div class = "rsb"></div>
	</div>
	<div class = "Seatbottom">
		
	</div>
</form>
	<script>
	    
        let test = [];
	    let selectedSeats = new Array();
	    let selectedSeatsMap = [];
	    const seatWrapper1 = document.querySelector(".reserveSeat1");
	    const seatWrapper2 = document.querySelector(".reserveSeat2");
	    const seatWrapper3 = document.querySelector(".reserveSeat3");

	    let clicked = "";
	    let div = "";
	
	    for (let i = 1; i <= 11; i++) {
	        div = document.createElement("div");
            div.classList = "left4";
	        seatWrapper1.append(div);
	        for (let j = 1; j <= 4; j++) {
	            const input = document.createElement('input');
                const label = document.createElement('label');
	            input.type = "checkbox";
	            input.name = "mvseat";
	            input.classList = "seat";
                

	            //3중포문을 사용하지 않기위해 
	            mapping(input, label, i, j);
	            div.append(input);
                div.append(label);
	            
	            input.addEventListener('click',function(e){
	            	getCheckedCnt();
	            });
	        }
	    }

        for (let i = 1; i <= 11; i++) {
	        div = document.createElement("div");
            div.classList = "center8";
	        seatWrapper2.append(div);
	        for (let j = 5; j <= 12; j++) {
	            const input = document.createElement('input');
                const label = document.createElement('label');
	            input.type = "checkbox";
	            input.name = "mvseat";
	            input.classList = "seat";
                

	            //3중포문을 사용하지 않기위해 
	            mapping(input, label, i, j);
	            div.append(input);
                div.append(label);
	            
	            input.addEventListener('click',function(e){
	            	getCheckedCnt();
	            });
	        }
	    }

        for (let i = 1; i <= 11; i++) {
	        div = document.createElement("div");
            div.classList="right4";
	        seatWrapper3.append(div);
	        for (let j = 13; j <= 16; j++) {
	            const input = document.createElement('input');
                const label = document.createElement('label');
	            input.type = "checkbox";
	            input.name = "mvseat";
	            input.classList = "seat";
                

	            //3중포문을 사용하지 않기위해 
	            mapping(input, label, i, j);
	            div.append(input);
                div.append(label);
	            
	            input.addEventListener('click',function(e){
	            	getCheckedCnt();
	            });
	        }
	    }
	
	    //좌석에 id,value 설정
	    function mapping(input, label, i, j) {
	        if (i === 1) {
	            input.value = "A" + j;
	            input.id = "seatA" + j;
                label.append(j);
                label.htmlFor = "seatA" + j;
	        } else if (i === 2) {
	            input.value = "B" + j;
	            input.id = "seatB" + j;
                label.append(j);
                label.htmlFor = "seatB" + j;
	        } else if (i === 3) {
	            input.value = "C" + j;
	            input.id = "seatC" + j;
                label.append(j);
                label.htmlFor = "seatC" + j;
	        } else if (i === 4) {
	            input.value = "D" + j;
	            input.id = "seatD" + j;
                label.append(j);
                label.htmlFor = "seatD" + j;
	        } else if (i === 5) {
	            input.value = "E" + j;
	            input.id = "seatE" + j;
                label.append(j);
                label.htmlFor = "seatE" + j;
	        } else if (i === 6) {
	            input.value = "F" + j;
	            input.id = "seatF" + j;
                label.append(j);
                label.htmlFor = "seatF" + j;
	        } else if (i === 7) {
	            input.value = "G" + j;
	            input.id = "seatG" + j;
                label.append(j); 
                label.htmlFor = "seatG" + j;
	        } else if (i === 8) {
	            input.value = "H" + j;
	            input.id = "seatH" + j;
                label.append(j); 
                label.htmlFor = "seatH" + j;
	        } else if (i === 9) {
	            input.value = "I" + j;
	            input.id = "seatI" + j;
                label.append(j); 
                label.htmlFor = "seatI" + j;
	        } else if (i === 10) {
	            input.value = "J" + j;
	            input.id = "seatJ" + j;
                label.append(j); 
                label.htmlFor = "seatJ" + j;
	        } else if (i === 11) {
	            input.value = "K" + j;
	            input.id = "seatK" + j;
                label.append(j); 
                label.htmlFor = "seatK" + j;
            }
	    };


	    // 클릭시 화면에 표시

	    function getCheckedCnt(){
	    	const query = 'input[name="mvseat"]:checked';
	    	const selectedElements = document.querySelectorAll(query);
	    	
	    	const selectedElementsCnt = selectedElements.length;
	    	const pprice = selectedElementsCnt*8000;
	    	
	    	//가격표시하면서 넘겨주기
	    	document.getElementById('allprice').innerHTML = pprice
	    		+ '<input type = hidden name = mvprice value = '+ pprice + '>';
	    	document.getElementById('seatnum').innerHTML = selectedElementsCnt;
	    	
	    	
	    }
	    
	    function formnull2(){
	    	if($("input:checkbox[name=mvseat]").is(":checked")==false){
	    		alert('좌석을 선택해 주세요');
	    		return false;
	    	}
	    }
	</script>
	
	
	
	
</body>
</html>