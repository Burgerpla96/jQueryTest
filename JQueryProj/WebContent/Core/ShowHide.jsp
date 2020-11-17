<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShowHide.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {
		//페이지 최초 로드시 내용 숨기기
		//$('.content').hide();
		//제목 클릭시, 내용 보이기
		//1) show() 함수 사용- show한 상태에서 제목 다시 클릭시 그대로이다.
		/*
		$('.title').click(function(){
			$(this)//클릭한 제목
			.next().show(2000,function(){
				//제목 아래의 tag(내용) 보이기
				$(this).css('background-color','yellow');
			});
		});
		*/
		
		//2) toggle()함수사용- 제목을 다시 클릭시 토글링 되어 보였던게(show) 다시 숨겨진다.(hide)
		/*
		$('.title').click(function(){
			$(this).next().toggle(2000,function(){
				$(this).css('background-color','yellow');
			});	
		});
		*/
		
		//문제) toggle() 함수 미사용 - show() 및 hide() 함수를 이용해
		//제목 클릭시 다른 제목의 내용은 사라지도록 하고, 클릭한 제목의 내용은 보여주게 하여라.
		/*
		//제목을 다시 누르면 사라지게 하지 않음.
		$('.title').click(function(){
			$('.content').hide();
			$(this).next().show(2000,function(){
				$(this).css('background-color','pink');
			});
		});
		*/
		//jQuery UI 사용하지 않은것 
		/*
		$('.title').click(function(){
			console.log($(this).next().css('display'));
			//내부적으로 hide() 함수는 diplay를 none 주는것
			//클릭한 제목의 내용이 숨겨져 있다면
			if($(this).next().css('display')=='none'){
				$('.content').hide();
				$(this).next().show(1000);				
			}
			else{//클릭한 제목의 내용이 보인다면
				$(this).next().hide(1000);				
			}
		});
		*/
		
		//jQuery ui 사용해서 위와 같은 기능 구현
		$('#accordion').accordion({
			collapsible: true,
			active: false, 
			animate: 200,
			activate:function(){
				console.log('activate event 발생');
			}
		});
		
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>show(),hide()함수</legend>
		<div id="accordion"> <!-- 제이쿼리 UI적용시 추가DIV -->
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
		</div>
	</fieldset>
</body>
</html>