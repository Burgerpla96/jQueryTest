<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatePicker.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<!-- jQuery ui -->
<!--  
<script src="<c:url value="/js/jquery-ui,min.js"/>"></script>
-->
<!-- 구글의 cdn 
https://developers.google.com/speed/libraries#jquery-ui
-->
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- google jQuery ui cdn -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">




<script>
	$(function(){
		
		//Datepicker 웨젯 생성방법
		//1) option을  {}객체(json)로 함수의 인자로 처음부터 주거나
		//$('#datepicker').datepicker({dateFormat: "yy-mm-dd",showAnim:"bounce"});
		//2) datepicker()함수로 Datepicker위젯 생성후에 setter로 설정
		//2-1) 위젯 생성
		//$('#datepicker').datepicker();
		//2-2) Setter 옵션 설정
		//$('#datepicker').datepicker("option", "dateFormat","yy-mm-dd");
		//$('#datepicker').datepicker("option", "showAnim","bounce");
		//console.log('설정된 옵션 getter로 읽기: '+$('#datepicker').datepicker("option", "dateFormat"));
	
		var today = new Date();
		$('#datepicker').datepicker({
			dateFormat: "yy-mm-dd",
			showAnim:"bounce",
			minDate:new Date(today.getFullYear(),today.getMonth(),today.getDate()),
			buttonText: "달력",//showOn 과 buttonText를 같이 줘야만 버튼이 나온다.
			showOn: "both",//'both'면 text상자와 버튼 모두 선택해도 달력이 나오고, 'button'은 버튼을 눌러야만 달력이 나온다. 
			buttonImage: "<c:url value='/Images/calendar.png'/>",
			buttonImageOnly:true,//true면 버튼 테두리가 사라지고 이미지만 나온다.
			onSelect:function(dateText,inst){
				console.log('사용자가 선택한 날짜: ',dateText);
				$('#display').html(dateText);
				console.log('%O',inst);
				var currentDate = $( "#datepicker" ).datepicker( "getDate" );
				console.log('Datepicker객체의 getDate() 메서드 호출: ',currentDate);
			}
		});
		
		//방법2) jQuery로 css지정 
		$('.ui-datepicker-trigger').css({width:'26px',height:'26px',"vertical-align":'middle',"margin-left":'3px'});
		
		
	});
</script>
<!-- 방법1) style 태그에 css지정 -->
<!-- 
<style>
	.ui-datepicker-trigger{
		width: 30px;
		height: 30px;
		vertical-align: middle;
		margin-left: 3px;
	}
</style>
 -->	

</head>
<body>
	<fieldset>
		<legend>DatePicker</legend>
		<input type="text" id ="datepicker"/>
		<h2>선택한 날짜 아래에 표시하기</h2>
		<span id="display" style="color:red;font-size:1.5em"></span>
	</fieldset>
</body>
</html>