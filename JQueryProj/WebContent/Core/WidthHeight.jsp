<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WidthHeight.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<style>
	div {
		width: 100px;
		height: 100px;
		background-color: green;
		padding: 20px;
		border: 5px red solid;
		margin: 20px;
	}
</style>
<script>
	$(function(){
		/*
		width() 나 height() 는 padding,border,margin을 포함시키지 않고 계산
		outerWidth(), outerHeight()는  (기본값 false) 패딩하고 보더값 포함
		true로 설정 바꾸면 마진값도 포함
		*/
		
		var div = $('div');
		var width = div.width();
		var height = div.height();
		
		var outerWidth = div.outerWidth();
		var outerHeight = div.outerHeight();
		
		var includeMarginWidth = div.outerWidth(true);
		var includeMarginHeight = div.outerHeight(true);
		
		$('button').click(function() {
			console.log('(패딩/테두리/마진 미포함) width: %s, height: %s',width,height);
			console.log('(패딩/테두리 포함) outerWidth: %s, outerHeight: %s',outerWidth,outerHeight);
			console.log('(패딩/테두리/마진 포함) outerWidth: %s, outerHeight: %s',includeMarginWidth,includeMarginHeight);
			//.css하면 단위가 포함된다. width,height와 값이 같다.
			console.log('css()함수: 가로폭: %s, 세로폭: %s',div.css('width'),div.css('height'));
		});
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>width(),height(),outerWidth(),outerHeight()</legend>
		<div></div>
		<button>가로폭/세로폭 구하기</button>
	</fieldset>
</body>
</html>