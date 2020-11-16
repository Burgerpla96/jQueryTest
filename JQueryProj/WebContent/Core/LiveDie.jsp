<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LiveDie.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- Deprecated된 함수 사용시 아래 라이브러리 임베디드 -->
<script src="<c:url value="/js/jquery-migrate-1.4.1.js"/>"></script>


<style>
div {
	width: 200px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	background-color: black;
	color: white;
	border: 2px solid white;
}
</style>

<script>
	$(function() {
		//bind() 함수로 이벤트 바인딩 -- 동적으로 추가한 div에는 이벤트가 바인딩되지 않는다.
		/*
		$('div').bind('click',function(){
			$(this).after('<div>동적으로 추가한 div</div>');
		});
		*/
		/*
		live() 및 die() 함수는 1.9버전부터 제거됨
		따라서 상위 버젼에서 사용시에는 1.9 버전 미만 라이브러리를 임베드하거나 혹은 마이그레이션 라이브러리를 현 최신 버전쓰기...
		혹은 최근에는 live 나 bind 대신 on() 함수를 사용, 단 기능은 bind와 같다.
		*/
		/*
		$('div').live('click',function(){
			$(this).after('<div>동적으로 추가한 div</div>');
		});
		*/
		//이벤트 발생을 없앤다.
		/*
		$('button').click(function(){
			$('div').die('click');
		});
		*/
		
		//on으로 바인딩한 이벤트는 off로 이벤트 해제
		$('div').on('click',function(){
			$(this).after('<div>동적으로 추가한 div</div>');
		});
		$('button').click(function(){
			$('div').off('click');
		});		
		
		// 선택자: gt('인덱스') - '인덱스'보다 큰 것들 선택
		$('table tr:gt(0)').mouseover(function(){
			$(this).css('backgroundColor','yellowgreen');
		}).mouseout(function(){
			$(this).css('backgroundColor','gold');
		});
		
		//children('선택자') 함수
		$('table tr:gt(0)').click(function(){
			console.log('클릭한 tr의 자식인 td의 갯수: '+$(this).children().length);
			if($(this).children().length > 2){
				var title = $(this).children('td:eq(1)').html();
				var name = $(this).children(':eq(2)').html();
				console.log('클릭한 행의 제목: %s, 작성자: %s',title,name);
			}
		});
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>live("이벤트명",콜백함수),die("해제할이벤트명"),children([선택자])함수,on("이벤트명",콜백함수),off("해제할이벤트명"),gt(인덱스)</legend>
		<div>미리 만들어 놓은 DIV</div>
		<button>이벤트 해제</button>
		<!--각 행에 마우스 오버시에는 행의 배경색이 gray 마우스 아웃시에는 배경색이 white 
		단,제목에는 적용하지 마세요..... -->
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
			<tr bgcolor="white">
				<td>총계</td>
				<td colspan='3'>세개 셀 병합</td>
			</tr>
		</table>
	</fieldset>
</body>
</html>