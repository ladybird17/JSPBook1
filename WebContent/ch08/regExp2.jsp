<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규표현식의 표현방법</title>
</head>
<script type="text/javascript">
	function checkForm(){
		var form = document.frm;
		
		// 검색할 정규 표현식
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|가-힣|]/;
		
		//검색받을 텍스트
		var str = form.name.value;
		
		if(!regExp.test(str)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			return;
		}
		
		str = form.age.value;
		regExp = /^[0-9]/;
		
		if(!regExp.test(str)){
			alert("나이는 숫자만 입력할 수 있습니다.");
			return;
		}
		
		str = form.phone.value;
		regExp = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
		if(!regExp.test(str)){
			alert("전화번호는 숫자만 형식에 맞춰 입력해주세요.\nxxx-xxxx-xxxx");
			return;
		}
	}
</script>
<body>
	<form name="frm">
		<label for="name">이름</label>
		<input type="text" name="name"><br>
		<label for="age">나이</label>
		<input type="text" name="age"><br>
		<label for="phone">전화번호</label>
		<input type="text" name="phone"><br>
		<button type="button" onclick="checkForm()">전송</button>
	</form>
</body>
</html>