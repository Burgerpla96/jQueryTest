<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FadeInOut.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function(){
		//페이지 로드시 내용 숨기기
		$('.content').hide();
		//제목 클릭시, 내용 보이기
		//1) fadeIn() 함수 사용- show한 상태에서 제목 다시 클릭시 그대로이다.
		/*
		$('.title').click(function(){
			$(this)//클릭한 제목
			.next().fadeIn(2000,function(){
				//제목 아래의 tag(내용) 보이기
				$(this).css('background-color','yellow');
			});
		});
		*/
		//2) fadeToggle()함수사용-fadeOut(),fadeIn() 동시 구현
		/*
		$('.title').click(function(){
			$(this).next().fadeToggle(2000,function(){
				$(this).css('background-color','yellow');
			});	
		});
		*/
		//3) 제목누르면 다른 쪽 제목의 내용은 안 보이게
		$('.title').click(function(){
			console.log($(this).next().css('display'));
			//내부적으로 hide() 함수는 diplay를 none 주는것
			//클릭한 제목의 내용이 숨겨져 있다면
			if($(this).next().css('display')=='none'){
				$('.content').fadeOut();
				$(this).next().fadeIn(1000);				
			}
			else{//클릭한 제목의 내용이 보인다면
				$(this).next().fadeOut(1000);				
			}
		});
		
		
		
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<!-- ShowHide와 거의 같다. -->
		<legend>fadeOut(),fadeIn(),fadeToggle() 함수</legend>
			<div class="title" title="제목1">
				<h2>제목1</h2>
			</div>
			<div class="content">
				내용입니다1<br /> 내용입니다1<br /> 내용입니다1<br />
			</div>
			<div class="title" title="제목2">
				<h2>제목2</h2>
			</div>
			<div class="content">
				내용입니다2<br /> 내용입니다2<br /> 내용입니다2<br />
			</div>
			<div class="title" title="제목3">
				<h2>제목3</h2>
			</div>
			<div class="content">
				내용입니다3<br /> 내용입니다3<br /> 내용입니다3<br />
			</div>
	</fieldset>
</body>
</html>