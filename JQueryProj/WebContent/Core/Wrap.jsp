<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wrap.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		$(':button:first').on('click', function() {
			$('span:eq(0)').wrap('<strike></strike>');		
			$('span:eq(0)').wrap('<strong></strong>');
		});
		
		$(':button:last').one('click', function() {
			$('a').wrap('<li>');
		});//종료태그로 닫아주지 않아도 괜찮다.
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend> <span>wrap()함수</span> </legend>
		<h2> <span>포탈 사이트</span> </h2>
		<ul>
			<a href="http://www.naver.com/">네이버</a>
			<a href="http://www.daum.net/">다음</a>
			<a href="http://www.nate.com/">네이트</a>
		</ul>
		<hr />
		<button>span태그 감싸기</button>
		<button>a태그 감싸기</button>​
	</fieldset>
</body>
</html>