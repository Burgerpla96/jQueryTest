<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormSelector.jsp</title>
<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script>
	$(function() {
		
		//1) input 과 :input 선택자
		// $(":input") - input 태그 뿐만 아니라 폼의 하위요소 태그 모두 선택
		console.log('input tag 선택자: ', $('input').length);//13
		console.log('(:input) form 선택자', $(':input').length);//17( input, textarea, select 포함)
		console.log(':button 선택자', $(':button').length);//input type='button' 외에도 <button>도 포함
		
		/*
		val() 함수- 폼의 하위요소의 값을 읽어오거나 설정
		.val() - 읽기
		.val('값') - 설정 
		*/
		$('button').click(function() {
			switch($(this).html()){
			case "값 읽기":
				$(':button').each(function(i){
					//console.log('%d번째 버튼의 타입: %s',i,$(this).attr('type'));
					if($(this).is('[type=button]')){//input type='button'인 태그
						console.log('%d번째 버튼의 value속성: %s',i,$(this).val());
					}
					else{//<button> 태그들
						//버튼 태그는 val() 로 읽을 수 없다. 즉 value 속성이 없다.
						//console.log('%d번째 버튼의 value속성: %s',i,$(this).val());
						console.log('%d번째 버튼의 value속성: %s',i,$(this).html());
					}
				});
				//2) input type='text'
				//:text나 혹은 input[type='text']
				console.log('type=text의 입력값',$(':text').val());//하나밖에 없어서 each 불필요
				console.log('type=text의 갯수:',$(':text').length);
				
				//3) input type='password'
				//:password 나 혹은 input[type='password']
				console.log('type=password의 입력값',$(':password').val());//하나밖에 없어서 each 불필요
				console.log('type=password의 갯수:',$(':password').length);
				
				//4) input type='checkbox'
				// .val()은 첫번째 체크박스의 value 값을 읽어 온다. 
				//체크된 것만 읽을때: $(":checkbox:checked")에 each() 함수 적용해서 읽기
				//주의!: $(":checked") 하면 체크박스, 라디오 버튼, 선택상자 모두 포함헤서 가져온다.
				console.log('체크된 총 요소 수: ',$(':checked').length);
				//4-1) $(":checked").val() 하면 체크에 상관없이 체크박스에서의 첫 번째 값을 읽어온다.
				console.log('$(":checkbox").val(): ',$(':checkbox').val());
				//4-2) 방법1- 체크된 것만 읽어 오기
				console.log('[체크된 것만 읽어 오기]');
				console.log('1. :checkbox:checked와 each() 함수');
				$(':checkbox:checked').each(function(){
					console.log($(this).val());
				});
				console.log('2. :checkbox와 filter() 함수와 each() 함수');
				$(':checkbox').filter(':checked').each(function(){
					console.log($(this).val());
				});
				console.log('3. :checkbox와 if로 체크된 것 판단 후, each() 함수');
				$(':checkbox').each(function(){
					if($(this).prop('checked')==true){ //읽어 올때는 주로 prop()쓰기
						console.log($(this).val());
					}
				});
				//5) input type='file'
				console.log('type=file의 value: ',$(':file').val());
				//6) input type='hidden'
				/*
				:hidden으로 선택하지 않고
				input[type=hidden] 나 :input:hidden으로 선택
				*/
				//console.log('type=hidden의 value: ', $(':hidden').val());//빈문자열
				console.log('$(":input:hidden"): ', $(':input:hidden').val());
				console.log('$("input[type=hidden]"): ', $('input[type=hidden]').val());
				//7) input type ='image'
				//value값 얻어 올 수 없다. value속성 없음.
				console.log('$(":image").val(): ', $(':image').val());
				console.log('$(":image").prop("value"): ', $(':image').prop("value"));
				console.log('$("input[type=image]").val(): ', $('input[type=image]').val());
				//8) input type='radio'
				//선택에 상관 없이 무조건 첫 번째 요소값만을 읽어옴 $(":radio").val()
				console.log('$(":radio").val(): ',$(':radio').val());
				//체크된 것만 얻기
				console.log('$(":radio:checked").val(): ',$(':radio:checked').val());
				//9) reset 및 submit button
				console.log('$(":reset").val(): ',$(':reset').val());
				//버튼 태그도 type=submit임 고로 무조건 첫 번째만 가져온다.
				console.log('$(":submit").val(): ',$(':submit').val());
				console.log('$(":input[type=submit]").val(): ',$(':input[type=submit]').val());
				//10) select tag
				//$('select').val() - 선택된 값을 가져옴
				// :select form 선택자 없다. 
				console.log('$("select").val(): ',$('select').val());
				console.log('$(":selected").val(): ',$(':selected').val());
				console.log('$("select").children(":selected").val(): ',$('select').children(':selected').val());
				//11) textarea: val()/html()/text()
				//:textarea 폼 셀렉터는 없다.
				console.log('$("textarea").val()',$("textarea").val());//val만 동적으로 읽을 수 있다!!!!
				console.log('$("textarea").html()',$("textarea").html());
				console.log('$("textarea").text()',$("textarea").text());
				break;
				
			default: //값 설정
				//폼의 하위 요소값 설정하기
				//1) input type='button'
				$(':button:eq(0)').val('입력버튼');
				//2) input type='text'
				$(':text').val('아이디를 입력하세요.');
				//3) input type= 'password'
				$(':password').val('비번입력해요');
				//4) checkbox 설정 
				//방법1] 반드시 배열 초기화자[]로 값 설정-- 동적으로 값 설정시 많이 사용
				/*
				var checkedBox = [];//new Array();와 같다.
				checkedBox.push('정치');
				checkedBox.push('연예');
				$(':checkbox').val(checkedBox);				
				*/
				// 배열 바로 넣기
				//$(':checkbox').val(['경제','연예']);
				//방법2] attr() 함수로 checked 속성 이용
				$(':checkbox[value=연예],:checkbox[value=경제]').attr('checked','checked');
				//5)input type='radio'
				$(':radio').val(['녀']);
				//6) select tag
				//방법1] val() 사용
				//$('select').val('대학교');
				//$('select').val(['대학교']);//배열로 주기 가능
				//방법2] attr() 사용 -selected 속성 이용
				$('select').children('[value=대학교]').attr('selected','selected');
				//7) textarea
				$('textarea').val("안녕하세요\r\n반가워요.");
				
				
				
				
			}
		});
		
		
		
		
		
		
		
		
		
		

	});
</script>
</head>
<body>
	<fieldset>
		<legend>jQuery의 폼 셀렉터</legend>
		<input type="button" value="Input Button" /><br /> 
		<input type="text" /><br />
		​<input type="password" /><br /> 
		<input type="checkbox" value="정치" name="inter" />정치 
		<input type="checkbox" value="경제" name="inter" />경제
		<input type="checkbox" value="연예" name="inter" />연예 <br /> 
		<input type="file" /><br /> 
		<input type="hidden" value="히든값" /><br /> 
		<input type="image" alt="이미지" src="<c:url value='/Images/1.jpg'/>" /><br />
		<input type="radio" value="남" name="gender" checked />남 
		<input type="radio" value="녀" name="gender" />녀 <br /> 
		<input type="reset" value="취소" /><br /> 
		<input type="submit" value="전송" /><br /> 
		<select>
			<option value="">학교를 선택하세요</option>
			<option value="초등학교">초등학교</option>
			<option value="대학교">대학교</option>
		</select><br /> ​
		<textarea>텍스트 에리어</textarea>
		<br />
		<button type="submit">값 읽기</button>
		<button>값 설정</button>
		<br />

	</fieldset>
</body>
</html>