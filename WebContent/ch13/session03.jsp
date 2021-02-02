<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name;//세션명 저장 변수
	String value;//세션값 저장 변수
	
	Enumeration en = session.getAttributeNames();
	int i = 0;
	
	//남아있는 데이터 존재 여부 확인 후 이름과 값 받아 출력
	while(en.hasMoreElements()){
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		
		out.println("설정된 세션의 속성 이름 ["+i+"] :"+name+"<br>");
		out.println("설정된 세션의 속성 값 ["+i+"] :"+value+"<br>");
	}
	%>
</body>
</html>