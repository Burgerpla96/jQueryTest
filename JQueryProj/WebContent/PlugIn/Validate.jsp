<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->

<!--jquery validation용 cdn -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>

<script>
	$(function() {
		
		//3) validator 디폴트 설정
		//매개변수로 form 객체 받는다.
		//validate() 함수 코드 위에 작성해야한다.
		$.validator.setDefaults({
			submitHandler:function(formObj){
				//submit전 수행 로직
				alert('전송하기전 알람');
				//반드시 submit() 함수 호출
				formObj.submit();
			}			
		});
		
		

		//$('#frm').validate({rules:P{},messages:{}}); 이 형식으로 주기!
		
		//1) input type='submit'일때
		$('#frm').validate({
		rules:{//규칙 정하기, name 속성으로 키값을 가져온다.
			name:'required',
			id:{required:true,minlength:3,maxlength:6},//두 개 이상 규칙일시, required:true,...
			pwd:{required:true,minlength:4},
			pwd2:{required:true,minlength:4,equalTo:'#pwd'},
			inter:{required:true,minlength:2},
			sex:{required:true},
			sel:'required',
			file:'required',
			self:'required'
		},
		messages:{//규칙에 어긋났을 때 뿌려줄 메세지 정하기.(json형식)
			name:'이름을 입력하게나.',
			id:{required:'아디입력해',minlength:'아디가 적다.',maxlength:'아이디가 너무 길지도?..'},
			pwd:{required:'비번필요',minlength:'4자 이상'},
			pwd2:{required:'비번확인을 입력',minlength:'4자 이상!!',equalTo:'두 비번이 달라.달라.달라~'},
			inter:{required:'골라, 골라, 없는거 빼고 다 있다!~',minlength:'~두 개 이상 고르기 약속~'},
			sex:'성별을 선택',
			sel:'학력고르깅',
			file:'파.일.고.르.기.',
			self:'나를 소개해봐~'
		}});
		
		
		//2) input type='submit'버튼이 아닐때
		//.validate() 후에 .valid() 호출 true 반환시 .submit() 호출
		//단 focus는 따로 줘야한다.
		$(':button').click(function() {
			if($('#frm').valid()) $('#frm').submit();
		});
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<!-- https://jqueryvalidation.org/ -->
	<fieldset>
		<legend>제이쿼리의 플러그인을 사용한 유효성체크</legend>
		<span style="color: red; font-size: 1.8em"></span>
		<form method="post" action="http://www.nate.com" id="frm">
			​이름: <input type="text" name="name" /><br /> 
			<label for="id">아이디: </label> <input type="text" value="" name="id" id="id" /><br /> 
			비밀번호: <input type="password" name="pwd" id="pwd" /><br /> 
			비밀번호 확인:<input type="password" name="pwd2" /><br /> 
			관심분야: 
			<input type="checkbox" name="inter" value="A" id="pol" /> 정치
			<input type="checkbox" name="inter" value="B" /> 경제
			<input type="checkbox" name="inter" value="C" /> 스포츠

			<!--
			체크박스나 라디오버튼은 에러 메시지가
			첫번째 체크박스 나 첫번째 라디오버튼 다음에 표시됨.
			label태그를 이용해서 특정 위치(단,form태그안에서만)에
			에러메시지를 뿌려 줄 수 있다.
			for속성:name 속성에 지정한 값
			class속성:반드시 "error" 문자열
			-->
			<label for="inter" class="error"></label> <br /> 
			성별: 
			남자<input type="radio" name="sex" value="man" /> 
			여자<input type="radio" name="sex" value="woman" /> 
			<label for="sex" class="error"></label><br />

			<!-- 
			option태그의 value속성에 빈 문자열("")을
			설정하면 선택 하지 않은 것으로 간주한다.
			-->
			<select name="sel">
				<option value="">==학력을 선택하세요==</option>
				<option value="uni">대학교</option>
				<option value="high">고등학교</option>
				<option value="middle">중학교</option>
				<option value="ele">초등학교</option>
			</select><br /> <input type="file" name="file" /><br /> 자기소개<br />
			<textarea name="self" cols="50" rows="5"></textarea>
			<br /> 
			<input type="button" value="button타입" /> 
			<input type="submit" value="submit타입" /> 
			<input type="reset" value="취소" />
		</form>
	</fieldset>
</body>
</html>