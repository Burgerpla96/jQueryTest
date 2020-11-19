<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JCarousel.jsp</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jcarousel.basic.css'/>">


<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->

<script src="<c:url value='/js/jquery.jcarousel.min.js'/>"></script>
<script src="<c:url value='/js/jcarousel.basic.js'/>"></script>
<script>
	$(function(){
		
	});
</script>
</head>
<body>
	 <div class="wrapper">
            <h1>Basic carousel</h1>

            <div class="jcarousel-wrapper">
                <div class="jcarousel">
                    <ul>
                        <li><img src="<c:url value='/Images/img1.jpg'/>" width="600" height="400" alt=""></li>
                        <li><img src="<c:url value='/Images/img2.jpg'/>" width="600" height="400" alt=""></li>
                        <li><img src="<c:url value='/Images/img3.jpg'/>" width="600" height="400" alt=""></li>
                        <li><img src="<c:url value='/Images/img4.jpg'/>" width="600" height="400" alt=""></li>
                        <li><img src="<c:url value='/Images/img5.jpg'/>" width="600" height="400" alt=""></li>
                        <li><img src="<c:url value='/Images/img6.jpg'/>" width="600" height="400" alt=""></li>
                    </ul>
                </div>


                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                <a href="#" class="jcarousel-control-next">&rsaquo;</a>
                
                <p class="jcarousel-pagination">
                    
                </p>
            </div>
        </div>
</body>
</html>