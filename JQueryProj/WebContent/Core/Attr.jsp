<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attr.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<style>
	.bg{
		background-color: green;
	}

</style>
<script>
	$(function() {
		/*
		속성 읽기: $('선택자').attr("태그의 속성명");
		위와 결과가 같다.
		- $('선택자').get(인덱스).태그의 속성명
		- this.태그의 속성명
		
		단, 해당 태그에 속성명 미 기술시에는 읽지 못 함
		속성 설정:  $('선택자').attr("태그의 속성명1", "값1")
				동시에 여러 속성 설정시에는 메서드 체인 or json 데이터 형식 사용
		속성 제거: $('선택자').removeAttr("태그의 속성명");
	
		속성 읽기시에는 prop()도 사용가능
		속성 읽기시에 만약 HTML 태그상에 속성이 기술이 안되어 있다면 
		attr()은 undefined,  prop()은 빈 문자열
		--checked 속성과 a tag의 href="#"도 서로 차이가 있다!!! 
		--prop으로 읽을때 checked 속성은 boolean값이고 a tag는 풀경로를 준다.
		
		
		removeProp()은 HTML 태그의 속성을 제거하지 못 한다.
		
		*/
		
		
		$('#add').click(function(){
			//attr() 함수 사용
			//메서드 체인
			/*
			$('#div').attr('title','여기를 클릭하세요').
			attr('class','bg').
			attr('style','width:100px; height:100px; text-align:center; line-height:100px').
			on('click',function(){
				$(this).html('jQuery');
			});
			*/
			
			//JSON data 형식
			/*
			$('#div').attr({'title':'Click Here', 'class':'bg',
				'style':'width:100px; height:100px; text-align:center; line-height:100px'})
				.on('click',function(){
					$(this).html('jQuery');
				}
			);
			*/
			
			//메서드 체인
			/*
			$('#div').
			prop('title','여기를 클릭하세요').
			prop('class','bg').
			prop('style','width:100px; height:100px; text-align:center; line-height:100px').
			on('click',function(){
				$(this).html('jQuery');
			});
			*/
			//JSON data 형식
			$('#div').prop({'title':'Click Here', 'class':'bg',
				'style':'width:100px; height:100px; text-align:center; line-height:100px'})
				.on('click',function(){
					$(this).html('jQuery');
				}
			);
			
		});
			
		
		
		$('#read').click(function(){
			/*
			attr() 은 HTML의 속성(attribute), 
			prop()은 자스의 프로퍼티(property)를 취급하는 함수!!
			체크 박스의 값이나 a tag의 href 속성값을 읽어보면 차이를 알 수 있다.
			*/
			console.log('체크박스의 checded속성(attr) : ',$(':checkbox').attr('checked'));//undefined
			console.log('체크박스의 checded속성(prop) : ',$(':checkbox').prop('checked'));//false
			//체크박스의 체크여부를 확인 할때는 prop()으로 확인 할 수 있다.!!!! 중요!!!! 기억!!
			console.log('a의 href속성(attr) : ',$('#atag').attr('href'));//#
			console.log('a의 href속성(prop) : ',$('#atag').prop('href'));//http://localhost:5050/JQueryProj/Core/Attr.jsp#
			
			console.log('div의 class속성(attr): ',$('#div').attr('class'));
			console.log('div의 class속성(prop): ',$('#div').prop('class'));
			
			//자스에서는 class나 style은 키워드로 사용됨으로 
			//this.class나 $('선택자').get(0).class 사용 불가
			// 고로 attr() 함수나 prop() 함수로 속성값을 읽어 와야 한다!!!!
			console.log('div의 class속성(get())', $('#div').get(0).class);//undefined
			
		});
		
		
		
		$('#remove').click(function(){
			$('#div').removeProp('class').removeAttr('style');
			//removeProp()은 제거 되지 않고, removeAttr()만 제거된다.
		});
		
		
				
		$('button:gt(2)').click(function(){
			$('img').attr('src','<c:url value="/Images/'+this.id+'.jpg"/>');
		});
		
		
		$('a:eq(0)').click(function(){
			console.log('표기하지 않은 속성 href(attr): ',$(this).attr('href'));//undefined
			console.log('표기하지 않은 속성 href(prop): ',$(this).prop('href'));//빈문자열
			console.log('표기하지 않은 속성 href(get(0).href): ',$(this).get(0).href);//빈문자열
			console.log('표기하지 않은 속성 href(this): ',this.href);//빈문자열
		});
		
		
		//value 속성이 없는 type=text 의 값 읽어오기: 무조건 val() 쓰기!!!!
		$('#button').click(function(){
			console.log('attr("value"): ',$(':text').attr('value'));//undefined
			console.log("prop('value'): ",$(':text').prop('value'));//빈문자열
			console.log('val(): ',$(':text').val());//빈문자열
		});
		
		
		//동적으로 체크박스 체크하기
		$('#chkbtn').click(function(){
			//$(':checkbox').attr('checked','checked');//[o]
			$(':checkbox').prop('checked',true);//[o]
		});
		
		
		
		
		
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>attr()함수 및 removeAttr(), prop()함수</legend>
		<button id="add">속성추가</button>
		<button id="read">속성읽기</button>
		<button id="remove">속성제거</button>
		<div id="div">DIV태그</div>
		<button id="1">1번 이미지</button>
		<button id="2">2번 이미지</button>
		<button id="3">3번 이미지</button>
		<button id="4">4번 이미지</button>
		<br/> 
		<img src="#" alt="이미지" /><br/>
		<a>href속성을 미 지정한 A태그</a><br/>
		​<input value="확인" type="button" id="button" /> 
		<input type="text" size="30" />
		<hr/>
		<input type='checkbox' /> 체크박스 
		<a href="#" id="atag">A태그</a>
		<input type="button" id="chkbtn" value="attr및 prop으로 체크 설정하기" />
	</fieldset>
</body>
</html>