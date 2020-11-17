<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hover.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<style>
	.bg{
		background-color: gray;
	}

</style>
<script>
	$(function() {
		//mouseover()함수  mouseout() 함수
		/*
		$('tr:gt(0)').mouseover(function(){
			$(this).addClass('bg');
		}).mouseover(function(){
			$(this).removeClass('bg');
		});
		*/
		
		//hover() 함수 위의 두개를 합침
		/*
		$('tr:gt(0)').hover(function(){
			$(this).addClass('bg');
		},function(){
			$(this).removeClass('bg');
		});
		*/
		
		$('img').hover(function(){
			this.src = "<c:url value='/Images/2.jpg'/>";
		},function(){
			this.src = "<c:url value='/Images/1.jpg'/>";
		});
		
		//문제) 이미지에 마우스 오버시 이미지 크기를 가로폭은 2배 
		//세로폭은 1.5배로 마우스 아웃시에는 원래 크기로...
		
		//get(index) 메서드로 jQuery DOM 객체를 브라우저 DOM 객체로 변환후 css 적용
		var width = parseInt($('img').get(0).style.width);
		var height = parseInt($('img').get(0).style.height);
		$('img').hover(function(){
			this.style.width = width*2 + 'px';
			this.style.height = height*2 + 'px';
		},function(){
			this.style.width = width + 'px';
			this.style.height = height + 'px';
		});
		
		
	

	});
</script>
</head>
<body>
	<fieldset>
		<legend>hover(콜백함수1,콜백함수2)</legend>
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr bgcolor="white">
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>2</td>
				<td>제목2</td>
				<td>작성자2</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td>
				<td>제목3</td>
				<td>작성자3</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td>
				<td>제목4</td>
				<td>작성자4</td>
				<td>2013-9-12</td>
			</tr>
		</table>
		<hr/>
		​<img src="<c:url value='/Images/1.jpg'/>" alt="이미지" style="width: 100px; height: 100px" /> ​
	</fieldset>
	
</body>
</html>