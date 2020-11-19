<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EndFind.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		//end(): 바로 이전에 선택된 객체를 반환 //prev는 구조상의 이전이고 end는 검색에서 이전 의미!!
		//$('선택자').find("찾을 선택자"): find는 선택된 객체의 하위에서 찾는다.
		$('button').click(function() {
			console.log($('div').find('p:eq(1)').find('b').html());
			console.log($('div').find('p:eq(1)').find('b').end().html());
			//console.log($('div').end().html());//에러
			$('span').css('color','red').eq(0).css('border','1px red solid').end().eq(2).css('border','5px green solid');
			//end는 span전체 의미
			
			
		});
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>end()함수/find(선택자)함수</legend>
		<span title="SPAN1">SPAN1</span> 
		<span title="SPAN2">SPAN2</span> 
		<span title="SPAN3">SPAN3</span>
		<div>
			<p>
				<b>축구</b>
			</p>
			<p>
				<b>농구</b>
			</p>
			<p>
				<b>배구</b>
			</p>
			<button>확인</button>
		</div>
	</fieldset>
</body>
</html>