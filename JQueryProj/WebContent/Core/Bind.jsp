<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bind.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- 부트스트랩 -->
<link href="<c:url value="/Bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<script>
	$(function() {
		//자식 태그로 존재하는 div 중 첫 번째 div 태그
		console.log('div:first-child의 innerHTML: ',$('div:first-child').html());
		//div 태그 중 첫번째 div tag
		//console.log('div:first의 innerHTML: ',$('div:first').html());
		//console.log('div:eq(0)의 innerHTML: ',$('div:eq(0)').html());
		//console.log('마지막 자식인 div의 갯수: ',$('div:last-child').length);
		
		// 2개 fieldset의 마지막 자식 div와 여러 div를 가진 div의 마지막 자식 div
		console.log('div:last-child의 innerHTML: ',$('div:last-child').html());//2개가 선택되면 첫 번쨰것만 보여준다.
		//모든 것에 적용하려면 each()함수 사용,  이와 다르게 이벤트 설정에서는 모두 적용된다.
		console.log('[선택된 모든 자식인, 모든 div태그들의 시작태그와 종료태그 사이의 값 출력하기]')
		$('div:last-child').each(function(){
			console.log($(this).html());
		}); 
		//클릭 이벤트는 자주 사용하기에 함수로 정의되어있음
		/*
		$('button').click(function(){
			//$(this)는 $(선택자).jQuery 함수() 안에서     해당 선택자를 지칭!!
			$(this).html('<strong>'+$(this).html()+' 버튼이 클릭 되었어요</strong>');
		});
		*/
		/*
		 마우스 이벤트:
       mousedown  누르기
       mouseup  마우스 누른거 다시 들기
       mouseover 커서 위에 놓기
       mouseout 커서 넘기기
		*/
		//3가지 버튼이 모두 선택된다.
		$('button').bind('mousedown',function(){
			$(this).html('<strong>'+$(this).html()+' 버튼이 클릭 되었어요</strong>');
		}).bind('mouseup',function(){
			$(this).html('클릭');
		});
		
		
		$('div:eq(3)>div').bind('mouseover',function(){
			$(this).css({'backgroundColor':'pink','color':'black'});
		}).bind('mouseout',function(){
			$(this).css({'backgroundColor':'black','color':'pink'});
		});
		
		console.log('몇 번째인지 확인: '+$('div:eq(2)').html());
		console.log('몇 번째인지 확인2: '+$('div:eq(5)').html());
		/*
		팩토리 함수내부에서는 아래와 같다. 
		// html 공부에서 script 안에 기술된 자스 이벤트 함수에서와 다르다.
		
		this와 $(this)의 차이점
		this - 브라우저 DOM 객페
		$(this) - jQuery DOM 객체
		모두 이벤트 핸들러에서 이벤트가 발생한 객체를 의미!
		*/
		
		$('div:eq(3) div').bind('click',function(){
			console.log('$(this).title : ',$(this).title);//jQuery DOM 객체에는 title 속성으로 접근 불가
			console.log('$(this).get(0).title : ',$(this).get(0).title);
			console.log('this.title : ',this.title);
			
			switch(this.id){
			case 'naver': location.href = 'https://www.naver.com';break;
			case 'daum': location.href = 'https://www.daum.net';break;
			default : location.href = 'https://www.nate.com';			
			}
			
		});
		
		
		//이벤트 바인딩 
		$('div:last h2').bind('click',function(){
			console.log($(this).html());
		});
		//이벤트 해제
		//bund() method로 바인딩한 이벤트는 
		//unbind("해제할 이벤트명")메서드로 언바인딩
		//언바인딩하면  다시 눌러도 이벤트가 발생하지 않는다.
		$('input[type=button]').click(function(){
			$('div:last h2').unbind('click');
		});
		
		
		
		
	});
</script>
</head>
<body>
	<div class="container">
  		<div class="page-header">
  			<h1>jQuery Event 다루기<small>bind("이벤트명",콜백함수)</small></h1>
  		</div>
  		
		<div>div1</div>
		<button class="btn btn-default">클릭1</button>
		<button class="btn btn-info">클릭2</button>
		<button class="btn btn-success">클릭3</button>
		<div>
			<div id="naver" title="네이버">네이버</div><!-- 인덱스로 따지면 2번째 div -->
			<div id="daum" title="다음">다음</div>
			<div id="nate" title="네이트">네이트</div>
		</div>
		<div>
			<h2 style="background-color: red">unbind테스트</h2>
			<input type="button" value="이벤트해제" />
		</div>
	</div>
</body>
</html>