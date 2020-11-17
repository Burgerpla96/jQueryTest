<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>  
/*
 * jQuery로 DOM객체를 얻어오는 메서드(jQuery DOM 객체가 아니다!!!!)
	$(선택자).get(인덱스)는 자바스크립트로 문서개체를 얻어오는 document.getElementById()와 같다 
         즉 자바스크립트 방식과 혼용하려면 get()메서드 이용
    DOM 객체를 얻으므로 DOM객체로 jQuery 메서드를 사용할 수는 없다.
 */
	$(function() {
		//팩토리함수로 $()  jQuery DOM를 얻을 수 있다.
		var jQueryDom = $('#naver');//제이쿼리 DOM 객체
		//2. 자스로 브라우저 DOM 객체 얻기
		var jsDom = document.getElementById('naver');//DOM 객체(브라우저 DOM 객체)!
		console.log('jQueryDom: %O',jQueryDom);
		console.log('jsDom: %O',jsDom);
		//jQueryDom.css('color','red').html('NAVER');//[o]
		//jsDom.css('color','red').html('NAVER');//[x] DOM객체에는 css(),html() 함수가 없다.
		jsDom.style.color = 'red';
		jsDom.innerHTML = 'NAVER';
		//3. jQuery함수로 브라우저 DOM객체 얻기
		//get(index): jQuery DOM객체를 자스 DOM객체로 변환 - index는 0부터 시작
		//console.log($('#naver').href)//undefined
		//제이쿼리 DOM객체를 브라우저 DOM 객체로 변환
		console.log($('#naver').get(0).href);
		
		$('input[type=button]:first').click(function(){
			//1. 자스 함수 이용 
			console.log('java script 사용: ',document.getElementById('txt').value);
			//2. jQuery 함수 이용
			console.log('제이쿼리 함수 사용(get): ',$('#txt').get(0).value);
			console.log('제이쿼리 함수 사용(val): ',$('#txt').val());
		});
		
		
		//문제) '텍스트 변경하기' 버튼 클릭시 '실습입니다.' 로 변경
		//1. 자스 이용
		/*
		var span = document.getElementsByTagName('span')[0];
		var button = document.getElementsByTagName('input')[2];
		button.addEventListener("click",function(){
			span.style.color = 'gold';
			span.style.fontSize = '1.5em';
		});
		*/
		/*
		button.onclick = function() {
			span.style.color = 'gold';
			span.style.fontSize = '1.5em';
		}
		*/
		//2. jQuery 함수 이용
		$('input[type=button]:eq(1)').click(function(){
			//$('span').css('color','gold').css('font-size','1.5em');
			
			//jQuery DOM 객체를 브라우저 DOM 객체로 변환후 css 적용
			$('span').get(0).style.color = 'gold';
			$('span').get(0).style.fontSize = '1.5em';
			
		});
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>get(인덱스)함수</legend>
		<input type="text" placeholder="텍스트값" value="텍스트값" id="txt" /> <input type="button" value="확인" />
		<ul style="list-style-type: decimal;">
			<li><a href="http://www.naver.com" id="naver">네이버</a></li>
			<li><a href="http://www.daum.net">다음</a></li>
			<li><a href="http://www.nate.com">네이트</a></li>
		</ul>
		<h2>실습하기</h2>
		<span>실습입니다</span> <input type='button' value="텍스트변경하기" />
	</fieldset>
</body>
</html>