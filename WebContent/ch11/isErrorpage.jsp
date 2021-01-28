<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "isErrorPage_error.jsp" %>
<!--
isErrorPage 속성을 true로 설정하여
Exception 클래스를 사용할 수 있도록 함
isErrorPage 속성은 다른 문서의 errorPage로 설정된 파일에서
디렉티브 태그를 사용하여 설정
-->
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