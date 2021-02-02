<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	session.setAttribute("userID", "admin");
	session.setAttribute("userPW","1234");
	%>
	<h4>---세션을 삭제하기 전---</h4>
	<%
	String userID = (String)session.getAttribute("userID");
	String userPW = (String)session.getAttribute("userPW");
	out.println("설정된 세션 이름 userID : "+userID+"<br>");
	out.println("설정된 세션 값 userPW : "+userPW+"<br>");
	
	session.removeAttribute("userID");
	%>
	<h4>---세션을 삭제한 후---</h4>
	<%
	userID = (String)session.getAttribute("userID");
	userPW = (String)session.getAttribute("userPW");
	out.println("설정된 세션 이름 userID : "+userID+"<br>");
	out.println("설정된 세션 값 userPW : "+userPW+"<br>");
	%>
</body>
</html>