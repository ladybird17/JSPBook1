<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INSERT</title>
</head>
<body>
	<form action="insert01_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" name="id" id="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type ="password" name="pw" id="pw"><br>
		<label for="name">이름 : </label>
		<input type="text" name="name" id="name"><br>
		<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>