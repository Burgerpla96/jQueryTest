<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormSelector.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {

	});
</script>
</head>
<body>
	<fieldset>
		<legend>jQuery의 폼 셀렉터</legend>
		<input type="button" value="Input Button" /><br /> 
		<input type="text" /><br />
		​<input type="password" /><br /> 
		<input type="checkbox" value="정치" name="inter" />정치 
		<input type="checkbox" value="경제" name="inter" />경제
		<input type="checkbox" value="연예" name="inter" />연예 <br /> 
		<input type="file" /><br /> 
		<input type="hidden" value="히든값" /><br /> 
		<input type="image" alt="이미지" src="<c:url value='/Images/1.jpg'/>" /><br />
		<input type="radio" value="남" name="gender" checked />남 
		<input type="radio" value="녀" name="gender" />녀 <br /> 
		<input type="reset" value="취소" /><br /> 
		<input type="submit" value="전송" /><br /> 
		<select>
			<option value="">학교를 선택하세요</option>
			<option value="초등학교">초등학교</option>
			<option value="대학교">대학교</option>
		</select><br /> ​
		<textarea>텍스트 에리어</textarea>
		<br />
		<button>값 읽기</button>
		<button>값 설정</button>
		<br />

	</fieldset>
</body>
</html>