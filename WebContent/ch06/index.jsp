<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Checkbox의 데이터 전송시 (다중선택가능)</h3>
	<form action="process_checkbox.jsp" method="post">
		<label>취미 : </label><br>
		<input type="checkbox" id="reading" name="reading" value="취미는 독서">
		<label for=reading>독서</label><br>
		<input type="checkbox" id="exercise" name="exercise" value="취미는 운동">
		<label for="exercise">운동</label><br>
		<input type="checkbox" id="movie" name="movie" value="취미는 영화">
		<label for="movie">영화</label><br><br>
		<button type="submit">전송</button>
	</form>
	<br><br><br>
	<h3>radio box의 데이터 전송시 (하나만 선택)</h3>
	<form action="process_radiobox.jsp" method="post">
		<label>취미 : </label><br>
		<input type="radio" id="read" name="hobby" value="독서!">
		<label for="read">독서</label><br>
		<input type="radio" id="exe" name="hobby" value="운동!">
		<label for="exe">운동</label><br>
		<input type="radio" id="mov" name="hobby" value="영화!">
		<label for="mov">영화</label><br><br>
		<!-- name을 꼭 동일한 hobby로 맞춰줘야함 -->
		<button type="submit">전송</button>
	</form>
</body>
</html>