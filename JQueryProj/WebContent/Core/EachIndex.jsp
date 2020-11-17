<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EachIndex.jsp</title>
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
		text-align: center;
		line-height: 100px;
	}
</style>
<script>
	$(function() {
		//index(): 부모 자식 구조, 즉 같은 구조 안에서의 인덱스를 의미, 인덱스는 0부터 시작
		var clickDiv = $('div').click(function() {
			console.log('클릭한 div의 인덱스: ',$(this).index());
			//첫 번째 div는 fieldset의 자식 legend 다음이여서 인덱스는 1
			//마지막 div는 body 안에 fieldset 다음이여서 인덱스가 1
			
		});
		console.log(clickDiv.length);//5
		console.log(clickDiv.html());//무조건 첫 번째만 가져온다.
		console.log($('div').length);// 5
		console.log($('div').html());// a무조건 첫 번쨰
		console.log('===========clickDiv==============');
		clickDiv.each(function(index){
			console.log('index: ',index);
			console.log($(this).html());
		});
		console.log('===========$("div")==============');
		$('div').each(function(index){
			console.log('index: ',index);
			console.log($(this).html());
		});
		
		var colors = ['#D2691E','#808000','gold','#00FA9A','#9370DB'];
		//아래처럼 attr()함수를 적용하면 모든 div의 id값이 DIV, 고로 id를 각각 적용하려면 each를 사용!
		//$('div').attr({id:'DIV',style:"background-color:"+colors[0]});
		
		$('div').each(function(i) {
			$(this).attr({id:'DIV'+i,style:"background-color:"+colors[i]});
		});
		//동적으로 부여된 id값으로 객체 선택
		console.log('css()함수: ',$('#DIV2').css('backgroundColor'));//rgd()값으로
		console.log('attr()함수: ',$('#DIV2').attr('backgroundColor'));//색 명칭
		console.log('prop()함수: ',$('#DIV2').prop('backgroundColor'));//undefined
		
		
		//마우스오버에 따른 색변화 주기
		$('div').each(function(){
			//원래 배경색 얻기
			var bgColor = $(this).css('backgroundColor');
			$(this).hover(function(){
				$(this).css('backgroundColor', 'yellow');
			},function(){
				$(this).css('backgroundColor', bgColor);
			});
		});
		
		
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>each()함수 및 index()함수</legend>
		<div>DIV1</div>
		<div>DIV2</div>
		<div>DIV3</div>
		<div>DIV4</div>
	</fieldset>
	<div>DIV5</div>
</body>
</html>