<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement UPDATE</title>
</head>
<body>
	<h2>수정할 정보를 입력하세요</h2>
	<form action="update02_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" name="id" id="id"><br>
		<label for="name">이름 수정 : </label>
		<input type="text" name="name" id="name"><br>
		<label for="pw">비밀번호 수정 : </label>
		<input type ="password" name="pw" id="pw"><br>
		<br>
		<button type="submit">수정</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>