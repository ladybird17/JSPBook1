<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>---세션을 삭제하기 전---</h4>
	<%
	Enumeration<String> en = session.getAttributeNames();
	
	while(en.hasMoreElements()){
		String name = en.nextElement().toString();
		String value = session.getAttribute(name).toString();
		
		out.println("설정된 세션 이름 :"+name+"<br>");
		out.println("설정된 세션 값 :"+value+"<br>");
	}
	
	String userID = (String)session.getAttribute("userID");
	String userPW = (String)session.getAttribute("userPW");
	
	out.println("설정된 세션 이름 userID : "+userID+"<br>");
	out.println("설정된 세션 값 userPW : "+userPW+"<br>");
	
	if(request.isRequestedSessionIdValid()==true){
		out.print("세션이 유효합니다.");
	}
	else{
		out.print("세션이 유효하지 않습니다.");
	}
	
	session.invalidate();
	%>
	<h4>---세션을 삭제한 후---</h4>
	<%
	
	if(request.isRequestedSessionIdValid()==true){
		out.print("세션이 유효합니다.");
	}
	else{
		out.print("세션이 유효하지 않습니다.");
	}

	%>
</body>
</html>