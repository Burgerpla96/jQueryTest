<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TextHtml.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		/*
		innerHTML 가져오고 싶다면
		text() 혹은 html()  사용
		
		text() 는 태그는 제외하고 text만 가져온다.
		html() 은 태그까지 전부 가져온다.
		
		text("설정할 문자열") 혹은 html("설정할 문자열")  사용시
		text() 는 태그가 그대로 출력
		html() 은 태그를 해석해 출력
		*/
	
		
		$('button').click(function() {
			switch(this.id){
			case 'read': 
				var htmlString = $('div:eq(0)').html();
				var textString = $('div:eq(0)').text();
				console.log('html(): %s, text(): %s',htmlString,textString);
				break;
			case 'write': 
				//$('#display').html('<h3>시작태그와 종료태그사이(html)</h3>');
				$('#display').text('<h3>시작태그와 종료태그사이(text)</h3>');
				break;
			case 'img': 
				$('#display').html("<img src='<c:url value="/Images/1.jpg"/>' alt='이미지 동적 추가'/>");
				break;
			default:
				console.log($(this).html());
			}
		});
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>text() 및 html()함수</legend>
		<button id="read">읽기</button>
		<button id="write">쓰기</button>
		<button id="img">이미지 추가</button>
		<button id="btnText">버튼 태그사이의 텍스트 얻기</button>
		<div>
			<h2>제목입니다.</h2>
		</div>
		<div id="display"></div>
	</fieldset>
</body>
</html>