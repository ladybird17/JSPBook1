<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 데이터 형식 유효성 검사하기</title>
</head>
<script type="text/javascript">
	function checkMember(){
		//정규 표현식
		
		// 시작 문자는 영어 소문자, 대문자, 한글만 가능
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		// 시작글자가 한글, 끝글자도 한글, 0번이상 반복되는 글자
		var regExpName = /^[가-힣]*$/;
		
		// 시작문자가 숫자, 숫자가 0번이상 반복, 숫자로 끝남
		var regExpPw = /^[0-9]*$/;
		
		// /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/
		var regExpPhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
		/*
		시작문자는 숫자와 영문자1자이상의 문자
		이후의 글자는 특수문자-_\,가 있거나 없을 수 있으며
		숫자나 영문자 0번이상 반복된다.
		--------------------------------------------------
		이후에 @문자가 반드시 포함되며
		이후의 글자는 특수문자-_\,가 있거나 없을 수 있으며
		숫자나 영문자 0번이상 반복된다.
		--------------------------------------------------
		이후에 . 문자가 반드시 포함되며, 영문자가 2자 혹은 3자로 끝남
		*/
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
		
		var id = form.id.value;
		var name = form.name.value;
		var pw = form.pw.value;
		var phone = form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
		var email = form.email.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요!");
			form.id.select();
			return;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요!");
			return;
		}
		if(!regExpPw.test(pw)){
			alert("비밀번호는 숫자만 입력해주세요!");
			return;
		}
		if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해주세요!");
			return;
		}
		if(!regExpEmail.test(email)){
			alert("이메일 입력을 확인해주세요!");
			return;
		}
		
		form.submit();
	}
</script>
<body>
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
	<label for="id">아이디 : </label>
	<input type="text" name="id"><br>
	<label for="pw">비밀번호 : </label>
	<input type="password" name="pw"><br>
	<label for="name">이름 : </label>
	<input type="text" name="name"><br>
	<label for="phone1">연락처 : </label>
		<select name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="019">019</option>
		</select>
		-<input type="text" maxlength="4" size="4" name="phone2">
		-<input type="text" maxlength="4" size="4" name="phone3">
	<label for="email">이메일 : </label>
	<input type="text" name="email"><br>
	<br>
	<button type="button" onclick="checkMember()">가입하기</button>
	</form>
</body>
</html>