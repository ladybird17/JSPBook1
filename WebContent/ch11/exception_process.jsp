<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "exception_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int a = Integer.parseInt(num1);/* 문자를 정수로 바꿔줌 */
	int b = Integer.parseInt(num2);
	int c = a/b;
	out.print(num1+"/"+num2+"="+c);
	%>
</body>
</html>