<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form태그 실습 시작</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form04_process.jsp" name="member" method="post">
		<label for="id">아이디 : </label>
			<input type="text" name="id" id="id"><input type="button" value="아이디 중복 검사"><br><br>
		<label for="password">비밀번호 : </label>
			<input type="password" name="password" id="password"><br><br>
		<label for="name">이름 : </label>
			<input type="text" name="name" id="name"><br><br>
		<label for="phone1">연락처 : </label>
		<select id="phone1" name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="019">019</option>
		</select>
			-<input type="text" maxlength="4" size="4" name="phone2" id="phone2">
			-<input type="text" maxlength="4" size="4" name="phone3" id="phone3"><br><br>
		<label for="gender">성별 : </label>
			<input type="radio" name="gender" id="gender" value="남성" checked>남성
			<input type="radio" name="gender" id="gender" value="여성" checked>여성<br><br>
		<label for="hobby">취미 : </label>
			<!-- form05대신 04를 수정함. name을 hobby로 통일하여 배열로 받음 -->
			독서<input type="checkbox" name="hobby" id="hobby1" value ="독서" checked>
			운동<input type="checkbox" name="hobby" id="hobby2" value ="운동">
			영화<input type="checkbox" name="hobby" id="hobby3" value ="영화"><br><br>
		<button type="submit">가입하기</button>
		<button type="reset">다시쓰기</button>
	</form>
</body>
</html>