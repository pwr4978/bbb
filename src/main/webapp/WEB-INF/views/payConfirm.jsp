<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "mypage.do" method = "POST">
		<p>결제가 완료되었습니다</p>
		<p>마이페이지에서 확인하세요</p>
		<p>예약자 : ${userID }</p>
		<input type = hidden name = username value = ${ userID }>
		<input type = submit value = "마이페이지">
	</form>
</body>
</html>