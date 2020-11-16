<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selector01.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		//1) 선택된 제이쿼리 객체 수 얻기
		// -length 속성
		// size()함수: 3.0 이후는 removed, 대신 length 속성! 사용 권장
		//  https://api.jquery.com/ 에서 함수 사용버 확인!!! 중요! 
		console.log('a tag의 수: ',$('a').length);
		console.log('tr tag의 수: ',$('tr').length);
		
		/*
		선택자
		*= 는 포함을 의미
		$= '~로 끝나는'을 의미
		*/
		
		//2) $("선택자[속성*='속성값']") 형식으로 jQuery 객체 선택    
		//$("a[href*='naver']")//jQuery DOM 객체 반환
		$("a[href*='naver']").css('color','red').css('font-size','1.5em');
		$("a[href$='net']").css('color','green').css('font-size','.8em');
		$("a[href^='www']").css('color','#909090').html('NATE');
		
		//3) $("선택자:contains('문자열')"): 시작 태그와 종료 태그 사이의 내용으로 선택
		$("a:contains(이)").css('backgroundColor','black');
		//아래의 네이트는 위에서 html이 바뀌어 선택되지 않는다.
		
		//4) $("선택자:even") 혹은 $("선택자:odd") 인덱스는 0 부터이다
		$('table tr:even').css('backgroundColor','red');
		$('table tr:odd').css('backgroundColor','tomato');
		
		//5) $("선택자:first-child") 혹은 $("선택자:eq(인덱스)")
		//$('tr:first-child').css('backgroundColor','yellowgreen');
		$('tr:eq(0)').css('backgroundColor','yellowgreen');
		$('tr:eq(5)').css('backgroundColor','yellowgreen');
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>선택자 첫번째</legend>
		<ul style="list-style-type: decimal;">
			<li><a href="http://www.naver.com">네이버</a></li>
			<li><a href="http://www.daum.net">다음</a></li>
			<li><a href="www.nate.com">네이트</a></li>
		</ul>

		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr bgcolor="white">
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>2</td>
				<td>제목2</td>
				<td>작성자2</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td>
				<td>제목3</td>
				<td>작성자3</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td>
				<td>제목4</td>
				<td>작성자4</td>
				<td>2013-9-12</td>
			</tr>
		</table>
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr bgcolor="white">
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>2</td>
				<td>제목2</td>
				<td>작성자2</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td>
				<td>제목3</td>
				<td>작성자3</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td>
				<td>제목4</td>
				<td>작성자4</td>
				<td>2013-9-12</td>
			</tr>
		</table>
	</fieldset>
</body>
</html>