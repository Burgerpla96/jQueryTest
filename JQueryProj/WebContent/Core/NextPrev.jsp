<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextPrev.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		$('#next').click(function(){
			$('#third').next().css({color:'red',fontSize:'1.8em'});
			console.log('%O',$('#next').next());//다음 요소가 없어도 에러는 안난다.
		});
		$('#prev').click(function(){
			console.log('%O',$('#third').prev().prev().prev().html());//undefined 선택 객체가 없다.
			$('#third').prev().prev().css({color:'red',fontSize:'1.8em'});
		});
		
		/*
		var count = 0;
		$('#continue').click(function() {
			$('li').css({color:'black',fontSize:'1em'});
			switch (count){
			case 0: $('#third').prev().prev().css({color:'red',fontSize:'1.8em'}); break;
			case 1: $('#third').prev().css({color:'red',fontSize:'1.8em'}); break;
			case 2: $('#third').css({color:'red',fontSize:'1.8em'}); break;
			case 3: $('#third').next().css({color:'red',fontSize:'1.8em'}); break;
			case 4: $('#third').next().next().css({color:'red',fontSize:'1.8em'}); break;
			default: $('#third').next().next().next().css({color:'red',fontSize:'1.8em'});
			}
			count++;
			if(count==6) count=0;
		});
		*/
		
		var liObj = $('li:first');
		var index = 0;
		var length = $('li').length;
		$('#continue').click(function() {
			
			//index가 0 일때 즉 처음일때,
			//마지막 li 객체에 도달했을때-마지막 li 객체를 원래대로
			if(index==0) $('li:last').css({color:'black',fontSize:'1em'});
			//이전 li 객체를 원래대로
			else liObj.prev().css({color:'black',fontSize:'1em'});
			
			//해당  li 객체를 CSS로 변경
			liObj.css({'color':'red',fontSize:'2em'});
			//인덱스 증가
			index++;
			if(index != length)//인덱스 증가
				liObj = liObj.next();
			else {
				//index를 다시 0으로 초기화
				index = 0;
				//liObj에 처음 객체를 저장
				liObj = $('li:first');
			}
			
		});
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>next() 및 prev()함수</legend>
		<button id="next">다음</button>
		<button id="prev">이전</button>
		<button id="continue">계속</button>​ 
		<ul>
			<li>JAVA</li>
			<li>JSP</li>
			<li id="third">FRAMEWORK</li>
			<li>JQUERY1</li>
			<li>JQUERY2</li>
			<li>JQUERY3</li>
		</ul>
	</fieldset>
</body>
</html>