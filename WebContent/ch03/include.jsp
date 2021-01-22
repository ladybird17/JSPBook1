<!-- JSP웹프로그래밍 p103 5-2문제 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%! Calendar cal = Calendar.getInstance(); %>
    현재시간 : <%= cal.getTime() %>

</body>
</html>