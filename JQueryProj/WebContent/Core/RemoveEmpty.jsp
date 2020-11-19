<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RemoveEmpty.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		/*
		$('선택자') 하면 무조건 jQuery 객체 반환
		해당 객체가 없어도 null 이나 undefind로 출력되지 않고 jQuery.fn.init(0) 로 나온다.
		해당 객체 존재 유무는 null이 아닌 $('선택자').length==0으로 판단하기!!!!!!
		*/
		console.log($('h2')==null?'h2요소가 없다.': 'h2요소가 있다.');
		console.log($('h2')=='undefind'?'h2요소가 없다.': 'h2요소가 있다.');
		console.log($('h2').length==0?'h2요소가 없다.': 'h2요소가 있다.');
		console.log($('h2'));
		
		$(':button').click(function() {
			console.log($(this).is(':button:first'));
			//:button:first에서 :button이 빠지면 :first는 구조적으로 첫번째 tag인지 묻는것
			
			if($(this).is(':button:first')){
				//완전 사라짐. 메모리에서 요소자체가 삭제된다.
				$('div').remove();	
			}
			else{
				$('div').empty();//content만을 비운다.
				//$('div').html('');//위와 효과가 같다.
			}
			console.log($('div').length==0?'div요소가 없다.': 'div요소가 있다.');
		});
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>remove()및 empty()함수</legend>
		<button>REMOVE</button>
		<button>EMPTY</button>
		<div style="color: green; border: 1px red solid">DIV</div>
	</fieldset>
</body>
</html>