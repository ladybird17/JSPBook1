<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement DELETE</title>
</head>
<body>
	<h2>삭제할 정보를 입력하세요</h2>
	<form action="delete02_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" name="id" id="id"><br>
		<br>
		<button type="submit">삭제</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>