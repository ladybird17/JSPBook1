<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects p152</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<label for=name>이름 : </label>
		<!-- id와 class는 jsp를 위한 부분.
		name은 사용자 입력 데이터를 request 객체에 담아 전송 시
		서버에서 알아볼 수 있는 구분자 역할임. -->
		<input type="text" id="name" name="name">
		<input type="submit" value="전송">
		<!-- <button type="submit">전송</button> -->
	</form>
</body>
</html>