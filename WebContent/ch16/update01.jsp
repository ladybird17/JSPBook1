<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
	<h2>수정할 정보를 입력하세요.</h2>
	<form action="update01_process.jsp" method="post">
		<label for="id">기존 아이디 : </label>
		<input type="text" name="id" id="id"><br>
		<label for="name">수정된 이름 : </label>
		<input type="text" name="name" id="name"><br>
		<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>