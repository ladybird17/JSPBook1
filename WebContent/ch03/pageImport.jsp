<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!-- 디렉티브 태그중 page import를 사용하면
일반 자바 프로젝트에서 클래스 파일을 사용하듯이
jsp에서도 사용 가능 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	Today is <%= new Date() %>
</body>
</html>