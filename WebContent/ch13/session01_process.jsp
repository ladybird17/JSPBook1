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
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	if(userId.equals("admin")&&userPw.equals("1234")){
		session.setAttribute("userID",userId);
		session.setAttribute("userPW",userPw);
		//session.setMaxInactiveInterval(10); //작동안되니까 쌤코드 참고해보기
		out.println("세션 설정을 성공했습니다.");
		out.println(userId+"님 환영합니다.");
	}
	else{
		out.println("세션 설정을 실패했습니다.");
	}
	%>
	<br><br>
	<a href="./session01.jsp">처음으로</a>
	<a href="./session02.jsp">세션정보</a>
</body>
</html>