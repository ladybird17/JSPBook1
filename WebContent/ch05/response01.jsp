<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response01_process.jsp" method="post">
		<label for="userID">아이디 : </label>
		<input type="text" name="userID" id="userID" placeholder="아이디를 입력하세요"><br>
		<label for="userPW">비밀번호 : </label>
		<input type="password" name="userPW" id="userPW" placeholder="비밀번호를 입력하세요"><br>
		<button type="submit">전송</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>