<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		//속성값 읽기 - css("css의 속성명")
		$('#get').on('click',function(){
			var div = $('div');
			var width = div.css('width');
			var height = div.css('height');
			console.log("가로폭: %s, 세로폭: %s",width,height);
			//var back = div.css('background-color');// rgb(255, 0, 0)로 반환
			//자스방식으로 접근 - 위와 결과 동일
			var back = div.css('backgroundColor');
			console.log('배경색(jQuery 객체): %s, 배경색(브라우저 객체): %s',back,div.get(0).style.backgroundColor);
			$('span').html('결과값: 가로폭-'+width+', 세로폭-'+height+', 배경색-'+back);
			
		});
		
		
		
		//속성값 설정 - css("css속성명","속성값")
		$('#set').click(function(){
			//메서드 체인
			//$('div').css('width','200px').css('height','200px').css('backgroundColor','green');
			
			//JSON 타입으로!!!!! 기억!
			$('div').css({width:'150px', 'height':'150px', "backgroundColor":'blue'});
		});
		
		
		
		
		
		
		//jQuery 방식
		/*
		var aTag = $('a').click(function(){//클릭한 a tag DOM 객체
			console.log('클릭된 A tag의 콘텐츠: '+$(this).html());
			console.log('선택된 a tag의 무조건 첫번째 콘텐츠(크게): '+aTag.html());//'크게'만 나온다.
		});
		console.log(aTag.html());//무조건 첫 번째 요소가 나온다.  --여기서는 '크게'
		*/
		/*
		var pTag = $('#article');
		$('a').click(function(){
			var fontSize = parseInt(pTag.css('font-size'));
			switch($(this).html()){
			case '크게': pTag.css('font-size',(fontSize+5)+'px'); break;
			case '작게': pTag.css('font-size',(fontSize-5)+'px'); break;
			case '진하게': pTag.css('fontWeight','bold'); break;
			case '보통': pTag.css('fontWeight','normal'); break;
			case '빨강': pTag.css('color','red'); break;
			case '그린': pTag.css('color','green'); break;
			case '검정': pTag.css('color','black'); break;
			case '기울이기': pTag.css('font-style','italic'); break;
			default: pTag.css('font-style','normal'); break;
			}
		});
		*/
		//하드코딩 없애기
		/*
		var cssAttr=['font-size','font-size','font-weight','font-weight','color','color','color','font-style','font-style'];
		var cssVal =[5,-5,'bold','normal','red','green','black','italic','normal'];
		var menuText=['크게','작게','진하게','보통','빨강','그린','검정','기울이기','똑바로'];
		var pTag = $('#article');
		
		var aTag=$('a').click(function(){
			console.log(aTag.index(this));
			//클릭한 인덱스
			var i = aTag.index(this);
			var size = parseInt(pTag.css('fontSize'));
			if($(this).html()==menuText[0] || $(this).html()==menuText[1])
				pTag.css(cssAttr[i],size+cssVal[i]+'px');
			else
				pTag.css(cssAttr[i],cssVal[i]);
		});
		*/
		
		
	});
</script>
</head>
<body>
	<fieldset>​
		<legend>string css("css속성명")--get,jQuery css("css속성명","속성값")--set</legend>
		​<span style="color: green; font-size: 1.8em">결과값:</span>
		<div style="width: 100px; height: 100px; background-color: red"></div>
		<button id="get">속성값 읽기</button>
		<button id="set">속성값 설정</button>​
		<hr />
		<a href="#">크게</a> | <a href="#">작게</a> | <a href="#">진하게</a> | 
		<a href="#">보통</a> | <a href="#">빨강</a> | <a href="#">그린</a> | 
		<a href="#">검정</a> | <a href="#">기울이기</a> | <a href="#">똑바로</a>
		<p id="article" style="font-size: 12px">
			기사 내용입니다<br /> 
			기사 내용입니다<br /> 
			기사 내용입니다<br /> 
			기사 내용입니다<br /> 
			기사 내용입니다<br />
		</p>
	</fieldset>
</body>
</html>