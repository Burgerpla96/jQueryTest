<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToggleClass.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- Deprecated된 함수 사용시 아래 라이브러리 임베디드 -->
<script src="<c:url value="/js/jquery-migrate-1.4.1.js"/>"></script>

<style>
	div {
		width: 100px;
		height: 100px;
		background-color: green;
		border: 1px red solid
	}
	.invisible{
		display:none;
	}
</style>
<script>
	$(function(){
		/*
		1.9 이전 버전 toggle)함수로 toggleClass()처럼 구현하기
		-removeClass("클래스명")와 addClass("클래스명") use
		*/
		/*
		$('button').toggle(function(){
			$('div').addClass('invisible');
			$(this).html('보이기');
		},function(){
			$('div').removeClass('invisible');
			$(this).html('안보이기');
		});
		*/
		
		//toggleClass()로 구현
		$('button').click(function(){
			$('div').toggleClass('invisible');//선택한 tag에 CSS를 class명으로 toggling
			$(this).html($(this).html() =='보이기' ? '안보이기':'보이기');
		});
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>toggleClass('클래스명')</legend>
		<div></div>
		<button>안보이기</button>
	</fieldset>


</body>
</html>