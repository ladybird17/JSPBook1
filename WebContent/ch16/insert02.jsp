<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement INSERT</title>
</head>
<body>
<!--
문제 2. insert02.jsp 를 참고하여
update, delete 페이지를 작성하세요.
 -->
	<form action="insert02_process.jsp" method="post">
		<label for="userName">이름 : </label>
		<input type="text" name="userName" id="userName"><br>
		<label for="userPw">비밀번호 : </label>
		<input type ="password" name="userPw" id="userPw"><br>
		<br>
		<button type="submit">추가</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>