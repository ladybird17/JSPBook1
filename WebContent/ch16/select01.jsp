<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResultSet SELECT</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<table border="1" width="300">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet rs = null;
			Statement smt = null;
			
			try{
				String query = "SELECT * FROM member";
				
				smt = conn.createStatement();
				rs = smt.executeQuery(query);
				
				while(rs.next()){
					String id = rs.getString("id");
					String pw = rs.getString("passwd");
					String name = rs.getString("name");
			%>
			<tr>
				<td><%= id %></td>
				<td><%= pw %></td>
				<td><%= name %></td>
			</tr>
			<%
				}
			}
			catch(SQLException ex){
				out.println("member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException : "+ex.getMessage());
			}
			finally{
				if(rs!=null){
					rs.close();
				}
				if(smt!=null){
					smt.close();
				}
				if(conn!=null){
					conn.close();
				}
			}
			%>
		</tbody>
	</table>
</body>
</html>