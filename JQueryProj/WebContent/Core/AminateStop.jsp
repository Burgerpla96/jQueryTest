<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AnimateStop.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
	* {
		padding: 0;
		margin: 0;
	}
	div {
		width: 50px;
		height: 50px;
		background-color: red;
		position: relative;/* 부모기준*/
		left: 0;
		top: 0;
	}
</style>
<script>
	$(function(){
		//backgroundColor는 animate에서 변경이 안된다.
		//jQuery UI를 가져와야만 색이 바뀐다.
		$('#start').click(function(){
			$('#div').animate(
					{width:'+=100',height:'+=100',left:'+=100',backgroundColor:'green',opacity:0.25},
					3000,
					function(){
						console.log('애니가 끝남');
						//현재 객체의 top 및 left 좌표 얻기
						//$(선택자).position().top: top 좌표
						//$(선택자).position().left: left 좌표
						console.log('애니메이션 완료후: X좌표: %s, Y좌표: %s',$(this).position().left,$(this).position().top);
						console.log('애니메이션 완료후: 가로폭: %s, 세로폭: %s',$(this).width(),$(this).height());
						
					});
		});
		
		
		$('#stop').click(function(){
			$('#div').stop();
		});
		
		
		$('#back').click(function(){
			$('#div').animate(
					{width:'50px',height:'50px',left:'0',backgroundColor:'red',opacity:1},
					3000);
		});
		
		
		
	});
</script>
</head>
<body>
	<div id="div"></div>
	<button id="start">Start</button>
	<button id="stop">Stop</button>
	<button id="back">Back</button>
</body>
</html>