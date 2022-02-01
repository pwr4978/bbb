<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<style>
		.confirmheader{
			height : 250px;
		}
		
		.confirmmain{
			display : flex;
			width : 100%;
			text-align : center;
		}
		
		.mainC{
			width : 300px;
			text-align : center;
			align-items : center;
			border : 2px solid;
			height : 400px;
			display : flex;
			border-radius : 15px;
			margin : auto;
		}
	
		.mainCC{
			margin : auto;
			text-align : left;
			
		}
	
		.button{
			margin:auto;
		}
	</style>
</head>
<body>
	<div class = confirmheader>
	
	</div>
	
	<div class = confirmmain>
		<div class = mainL>
		</div>
		<div class = mainC>
			<div class = mainCL></div>
			<div class = mainCC>
				<div class = mainCC1></div>
				<div class = mainCC2>
					<p>예약자 : ${ userID }<p>
					<p>영화제목 : ${reserveVO.mvname }</p>
					<p>상영관 : ${ reserveVO.theater }</p>
					<p>상영날짜 : ${ reserveVO.month }월 ${ reserveVO.day }일</p>
					<p>상영시간 : ${ reserveVO.mvtime }</p>
					<p>예매좌석 : ${ reserveVO.mvseat }</p>
					<p>가격 : ${ reserveVO.mvprice }</p>
					<input type = hidden id = "username" name = "username" value =${ reserveVO.username }>
					<input type = hidden id = "mvname" name = "mvname" value = "${reserveVO.mvname }">
					<input type = hidden id = "theater" name = "theater" value = "${ reserveVO.theater }">
					<input type = hidden id = "month" name = "month" value = ${ reserveVO.month }>
					<input type = hidden id = "day" name = "day" value = ${ reserveVO.day }>
					<input type = hidden id = "mvtime" name = "mvtime" value = ${ reserveVO.mvtime }>
					<input type = hidden id = "mvseat" name = "mvseat" value = "${ reserveVO.mvseat }">
					<input type = hidden id = "mvprice" name = "mvprice" value = "${ reserveVO.mvprice }">
					<button id = "Paybtn" name = "psub" onclick = "requestPay()">결제하기</button>
				</div>
				<div class = mainCC3></div>
			</div>
			<div class = mainCR></div>
		</div>
		<div class = mainR></div>	
	</div>
	
	<div class = confirmbottom></div>

	<script>
		function requestPay(){
			IMP.init('imp01198544');
			
			
			var usernameval = $('input[name=username]').val();
			var mvnameval = $('input[name=mvname]').val();
			var theaterval = $('input[name=theater]').val();
			var monthval = $('input[name=month]').val();
			var dayval = $('input[name=day]').val();
			var mvtimeval = $('input[name=mvtime]').val();
			var mvseatval = $('input[name=mvseat]').val();
			var mvpriceval = $('input[name=mvprice]').val();
			
			IMP.request_pay({
			    pg : 'html5_inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : mvnameval,
			    amount : mvpriceval, //판매 가격
			    /* buyer_email : mmail, */
			    buyer_name : usernameval,
			    /* buyer_tel : mtel, */
			  	
			    
			    
			}, function(rsp) {

			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        
			        msg += '영화제목 : ' + mvnameval + " ";
			        msg += '상영시간 : ' + monthval+"월"+dayval+"일 "+ mvtimeval + " ";
			        msg += '좌석 : '+ mvseatval + " ";
			        msg += '결제 금액 : ' + mvpriceval + " ";
			        alert(msg);
			        
			        jQuery.ajax({
			        	 url : 'reserveSucess.do',
					     type : 'POST',
					     dataType : 'json',
					     data : {
					    	 username :usernameval,
					    	 mvname : mvnameval,
					    	 theater : theaterval,
					    	 month : monthval,
					    	 day : dayval,
					    	 mvtime : mvtimeval,
					    	 mvseat : mvseatval
					     }
			        })
			        
			        location.href = 'gopayConfirm';
			        
			    } else {
			        var msg = '결제에 실패하였습니다. 예약페이지로 돌아갑니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			        alert(msg);
			        
			        jQuery.ajax({
			        	 url : 'reserveCancel.do',
					     type : 'POST',
					     dataType : 'json',
					     data : {
					    	 username :usernameval,
					    	 mvname : mvnameval,
					    	 theater : theaterval,
					    	 month : monthval,
					    	 day : dayval,
					    	 mvtime : mvtimeval,
					    	 mvseat : mvseatval
					     }
			        })
			        
			        location.href = 'returnInsert';
			        
			    }
			});
		}
	</script>
</body>
</html>