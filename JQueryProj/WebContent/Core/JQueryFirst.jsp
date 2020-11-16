<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	이클립스에 제이쿼리 및 자스 자동완성기능 구현
	
	https://code-nen.tistory.com/8
 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryFirst.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
//순수 자바 스크립트만으로 구현
	/*
	window.onload = function(){
		var span = document.getElementById("jQuery");
		//console.log(span);
		span.style.color = 'red';
		span.innerHTML = '<strong>프로그램 진입점</strong>';
		var legend = document.getElementsByTagName('legend')[0];
		legend.onclick = function(){
			span.style.color = 'black';
			span.innerHTML = 'jQuery 첫 수업입니다.';
		};
	};
	*/
//제이쿼리 사용
	//프로그램 진입점 - 방법1) $(document).ready(function(){});
	/*
	$(document).ready(function(){
		//팩토리 함수 이용
		$('#jQuery').css("color","red").html('<strong>프로그램 진입점</strong>'); //.css() method  -jQuery DOM객체 반환
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html('jQuery 첫 수업입니다.');
		});
	});
	*/
	//프로그램 진입점 - 방법2) $().ready(function(){});
	/*
	$().ready(function(){
		//팩토리 함수 이용
		$('#jQuery').css("color","red").html('<strong>프로그램 진입점</strong>'); 
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html('jQuery 첫 수업입니다.');
		});
	});	
	*/
	//프로그램 진입점 - 방법3) $(function(){});   -- 간단한 팩토리 함수(가장 많이 쓴다.)
	/*
	$(function(){
		$('#jQuery').css("color","red").html('<strong>프로그램 진입점</strong>'); 
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html('jQuery 첫 수업입니다.');
		});
	});
	*/
	//프로그램 진입점 - 방법4) jQuery() -- $ 대신 jQuery 이용
	jQuery(function(){
		jQuery('#jQuery').css("color","red").html('<strong>프로그램 진입점</strong>'); 
		jQuery("legend:eq(0)").click(function(){
			jQuery('#jQuery').css("color","black").html('jQuery 첫 수업입니다.');
		});
	});
	
	
	
	
	
</script>
</head>
<body>
	<fieldset>
		<legend>jQuery 첫 걸음</legend>
		<span id="jQuery">jQuery 첫 수업입니다.</span>
	</fieldset>



</body>
</html>