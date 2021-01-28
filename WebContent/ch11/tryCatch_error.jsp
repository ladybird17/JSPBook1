<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Try Catch Exception</title>
</head>
<body>
	<p> 잘못된 데이터가 입력되었습니다T.T
	<p> <%= "숫자 1 : "+request.getParameter("num1") %>
	<p> <%= "숫자 2 : "+request.getParameter("num2") %>
</body>
</html>