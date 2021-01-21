<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션 태그에 Date 클래스를 사용하여 현재 날짜와 시각 출력</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"/>
	<p><%out.print("오늘의 날짜 및 시각"); %></p>
	<p><%= date %>
</body>
</html>