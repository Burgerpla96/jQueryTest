<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toggle.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- Deprecated된 함수 사용시 아래 라이브러리 임베디드 -->
<!--  -->
<script src="<c:url value="/js/jquery-migrate-1.4.1.js"/>"></script>



<style>
div {
	width: 100px;
	height: 100px;
	background-color: green;
	border: 1px red solid
}
</style>

<script>
	$(function() {
		/*
		1.9 이전 버전의 toggle(콜백함수1, 콜백함수2);
		toggle() 함수는 click이벤트 바인딩 되어있음
		즉 클릭시 토글림 됨
		콜백 함수 두 개를 왔다갔다.
		*/
		$('button:eq(0)').toggle(function(){
			$('div:first').css('display','none');
			$(this).html('보이기');
		},function(){
			$('div:first').css('display','');
			$(this).html('안보이기');
		});
		
		//1.9 이후 버전부터는 토글링 하고자하는 해당 객체에 toggle() 함수를 붙인다.
		$('button:eq(1)').click(function(){
			//$('#div').toggle();//위와 똑같이 구현
			var button = $(this);
			$('#div').toggle(3000,//토글링에 걸리는 시간을 밀리초로 준다.
				function(){
					console.log('토글링이 완료 되었어요.');
					var text = button.html();
					button.html(text=='보이기' ? '안보이기' : '보이기');
				}
			);
		});
		
		
		$('button:last').click(function(){
			$('.div').toggle(2000);
		});
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>toggle(콜백함수,콜백함수)함수:1.9이전 버전 테스트</legend>
		<div></div>
		<button>안보이기</button>
	</fieldset>

	<fieldset>
		<legend>toggle([Duration][,콜백함수])함수:1.9이후 버전 테스트(위와 동일하게)</legend>
		<div id="div"></div>
		<button>안보이기</button>
	</fieldset>

	<fieldset>
		<legend>toggle([Duration][,콜백함수])함수:1.9이후 버전 테스트</legend>
		<div class="div" style="background-color: red"></div>
		<div class="div" style="display: none; background-color: green"></div>
		<button>토글링</button>
	</fieldset>
</body>
</html>