<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
	<h2>삭제할 정보를 입력하세요.</h2>
	<form action="delete01_process.jsp" method="post">
		<label for="id">삭제할 아이디 : </label>
		<input type="text" name="id" id="id"><br>
		<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>