<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selector02.jsp</title>
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
		eq(0)와 first: 자식, 부모관계 상관없이 선택된 객체에서 첫 번째 객체를 의미
		first-child: 자식, 부모 관계에서 첫 번째 자식인 객체(구조가 관계있다.)
		*/
		console.log('ul태그의 수: ',$('ul').length);
		//ul:first-child -> 자식으로 존재하는 ul중 첫 번째 ul.  fieldset의 자식으로 ul이 두개지만 모두 첫번째는 아니라 선택이 없다.
		console.log('ul:first-child의 수: ',$('ul:first-child').length);// 0 개
		$('ul:first li:even').css('color','red');
		$('ul:first li:odd').css('color','pink');
		$('ul:eq(1) li:even').css('color','green');
		$('ul:eq(1) li:odd').css('color','yellowgreen');
		
		$('ul:last-child li:first-child').css('background-color','yellow');
		$('ul:last li:last').css('background-color','#010101');
		//하드코딩 하지 않기.- 변수 이용
		var size = $('ul:last li').length;
		$('ul:last li:eq('+(size-1)+')').css('background-color','blue');
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>선택자 두번째</legend>
		<!-- li태그중 짝수번째는 글자색을 RED 홀수번째는 GREEN-->
		<ul>
			<li>가</li>
			<li>나</li>
			<li>다</li>
			<li>라</li>
		</ul>
		<!-- 첫번째 li의 백그라운드 YELLOW 마지막번쩨 li는 blue-->
		<ul>
			<li>A</li>
			<li>B</li>
			<li>C</li>
			<li>D</li>
			<li>E</li>
			<li>F</li>
		</ul>
	</fieldset>


</body>
</html>