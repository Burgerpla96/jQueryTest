<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Slice.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<style>
.bg {
	background-color: green;
	font-size: 1.4em
}
div {
	width: 100px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	border: 1px red solid; ​
}
</style>
<script>
	$(function(){
		//1) slice(index): 인덱스부터 끝까지
		//$('div').slice(2).addClass('bg');
		//2) slice(시작,끝): 시작부터 끝의 -1 인덱스까지 추출
		//$('div').slice(2,$('div').length).addClass('bg');
		//3) slice(-n): 오른쪽부터(끝에서부터) n개 추출
		//$('div').slice(-3).addClass('bg');
		
		//문제) slice응용- 버튼 누를때 마다 넘어가면서 class먹이기
		/*
		var index = 0;
		$('button').bind('click',function(){
			if(index != 0){
				$('div').slice(index-1,index).removeClass('bg');
			}
			$('div').slice(index,index+1).addClass('bg');
			index++;
			if(index==7) index=0;
		});
		*/
		/*
		var i =1;
		$('button').click(function(){
			$('div').slice(i-1).removeClass('bg');
			$('div:eq('+i+')').addClass('bg');
			i++;
			if(i==6) i=0;
		});		
		*/
		
		var index = 1;
		$('button').click(function(){
			$('div').slice(index-1).removeClass('bg');
			$('div').slice(index,index+1).addClass('bg');
			index++;
			if(index==6) index=0;
		});
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>slice(시작인덱스[,끝인덱스])</legend>
		<button>색상변경</button>
		<div class="bg">DIV1</div>
		<div>DIV2</div>
		<div>DIV3</div>
		<div>DIV4</div>
		<div>DIV5</div>
		<div>DIV6</div>
	</fieldset>
	
</body>
</html>