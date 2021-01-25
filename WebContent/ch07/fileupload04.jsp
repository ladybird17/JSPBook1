<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post"
	enctype="multipart/form-data" action="fileupload04_process.jsp">
		<label for="name">이름 : </label>
		<input type="text" name="name" id="name"><br>
		<label for="title">제목 : </label>
		<input type="text" name="title" id="title"><br>
		<label for="filename">파일 : </label>
		<input type="file" name="filename" id="filename"><br>
		<button type="submit">파일올리기</button>
	</form>
</body>
</html>