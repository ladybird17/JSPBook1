<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"
	action="fileupload02_process.jsp">
		<label for="name1">이름1 : </label>
		<input type="text" name="name1" id="name1"><br>
		<label for="title1">제목1 : </label>
		<input type="text" name="title1" id="title1"><br>
		<label for="filename1">파일1 : </label>
		<input type="file" name="filename1" id="filename1"><br>
		
		<label for="name2">이름2 : </label>
		<input type="text" name="name2" id="name2"><br>
		<label for="title2">제목2 : </label>
		<input type="text" name="title2" id="title2"><br>
		<label for="filename2">파일2 : </label>
		<input type="file" name="filename2" id="filename2"><br>
		
		<label for="name3">이름3 : </label>
		<input type="text" name="name3" id="name3"><br>
		<label for="title3">제목3 : </label>
		<input type="text" name="title3" id="title3"><br>
		<label for="filename3">파일3 : </label>
		<input type="file" name="filename3" id="filename3"><br>
		
		<input type="submit" value="파일 여러개 올리기">
	</form>
</body>
</html>