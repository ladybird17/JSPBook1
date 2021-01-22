<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p164 응답 HTTP 헤더에 정보 추가하기
		p165 response 내장 객체로 5초마다 JSP 페이지 갱신하기
</title>
</head>
<body>

	Cache-control : <%= response.getHeader("Cache-control") %><br>
	contentType : <%= response.getHeader("contentType") %><br>
	date : <%= response.getHeader("date") %>
	
	<hr>

	<%
	response.setHeader("Cache-control","use_cache");
	response.addHeader("contentType","text/html; charset=utf-8");
	response.setDateHeader("date",1L);
	%>
	
	Cache-control : <%= response.getHeader("Cache-control") %><br>
	contentType : <%= response.getHeader("contentType") %><br>
	date : <%= response.getHeader("date") %>
	
	<hr>
	
	<p> 이 페이지는 5초마다 새로고침을 합니다.</p>
	
	<%
		response.setIntHeader("Refresh",5);
	%>
	<p><%= (new java.util.Date()) %> </p>
</body>
</html>