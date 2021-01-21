<!-- JSP웹프로그래밍 p102 4번문제 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	현재 날짜 : <%= new Date() %>
	<br>
	5의 제곱 : <%= Math.pow(5, 2) %>
</body>
</html>