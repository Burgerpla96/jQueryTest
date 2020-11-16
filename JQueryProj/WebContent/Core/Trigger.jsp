<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trigger.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function(){
		//버튼에 클릭 이벤트 발생시 어떤 일이 수행되도록 설정
		$('button').click(function(){
			console.log($(this).html()+'을 클릭했어요.');
		});
		
		//버튼을 클릭하지 않아도, '이벤트명'이 실행 되도록 설정(새로고침에 한 번만 이벤트가 발생한다.)
		$('button').trigger('click');
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>trigger('이벤트명')</legend>
		<button>버튼</button>
	</fieldset>
</body>
</html>