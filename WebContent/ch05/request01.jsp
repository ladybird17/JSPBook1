<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<label for="userID">아이디 : </label>
		<input type="text" name="userID" id="userID">
		<label for="userPW">비밀번호 : </label>
		<input type="text" name="userPW" id="userPW">
		<input type="submit" value="전송">
	</form>
	
	<input type="text" name="userEmail">
	
	<form action="request03.jsp" type="get">
		<input type="text" name="id"><br>
		<input type="email" name="email"><br>
		<button type="submit">request03으로 이동</button>
	</form>
</body>
</html>