<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>예약현황</h1>
	<table border="2">
	<thead>
		<tr>
			<th>이름</th><th>영화제목</th><th>상영관</th><th>상영시간</th><th>좌석</th><th>가격</th>
		</tr>
	</thead>
		<c:forEach var="imsi" items="${alist}">
			<tr>
				<td>${imsi.username }</td>
				<td>${imsi.mvname}</td>
				<td>${imsi.theater}</td>
				<td>${imsi.month}월${imsi.day}일${imsi.mvtime}</td>
				<td>${imsi.mvseat}</td>
				<td>${imsi.mvprice}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>