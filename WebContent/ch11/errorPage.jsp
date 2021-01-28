<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<!-- 클라이언트로부터 요청값이 없기 때문에 변수 name에 값이 없음 -->
	<%
	String name = request.getParameter("name");
	name = name.toUpperCase();/* 오류가 발생하게됨 */
	%>
	<p> name 파라미터 : <%= name %>
</body>
</html>