<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MauGallery.jsp</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

<!-- jQuery 사용을 위한 라이브러리 임베딩 -->
<!-- 1) 다운받은 .js파일 임베디드 -->
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
<!-- 2) CDN(Content Deliver Network) 주소 사용 -->
<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"  crossorigin="anonymous" ></script>
<script src="<c:url value="/js/maugallery.js"/>"></script>
<script src="<c:url value="/js/scripts.js"/>"></script>



<script>
	$(function(){
		
	});
</script>
</head>
<body>
	<div class="jumbotron jumbotron-fluid bg-info mb-0">
      <div class="container py-5 text-light">
        <h1 class="display-4">나만의 마우 갤러리</h1>
      </div>
    </div>
    
    <div class="container py-3">
      <div class="gallery" style="display:none;">
        <img
          data-gallery-tag="여자"
          class="gallery-item"
          src="https://images.pexels.com/photos/413727/pexels-photo-413727.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-danger d-flex flex-column text-warning justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">난 빨간 네모야!</p>
          </div>
        </div>
        <img
          data-gallery-tag="남자"
          class="gallery-item"
          src="https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="커피"
          class="gallery-item"
          src="https://images.pexels.com/photos/539432/pexels-photo-539432.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="남자"
          class="gallery-item"
          src="https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="강아지"
          class="gallery-item"
          src="https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="여자"
          class="gallery-item"
          src="https://images.pexels.com/photos/428338/pexels-photo-428338.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="강아지"
          class="gallery-item"
          src="https://images.pexels.com/photos/160846/french-bulldog-summer-smile-joy-160846.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-warning d-flex flex-column text-dark justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">야! 너도 </p>
          </div>
        </div>
        <img
          data-gallery-tag="커피"
          class="gallery-item"
          src="https://images.pexels.com/photos/434213/pexels-photo-434213.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="남자"
          class="gallery-item"
          src="https://images.pexels.com/photos/373899/pexels-photo-373899.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="여자"
          class="gallery-item"
          src="https://images.pexels.com/photos/1036621/pexels-photo-1036621.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="커피"
          class="gallery-item"
          src="https://images.pexels.com/photos/272887/pexels-photo-272887.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="강아지"
          class="gallery-item"
          src="https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-info d-flex flex-column text-warning justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">할 수 있어.</p>
          </div>
        </div>
        <img
          data-gallery-tag="여자"
          class="gallery-item"
          src="https://images.pexels.com/photos/247204/pexels-photo-247204.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="강아지"
          class="gallery-item"
          src="https://images.pexels.com/photos/59523/pexels-photo-59523.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
      </div>
      <hr />
      <i>뭐야 뭐야 나도 알려줘...</i>
    </div>

 
</body>
</html>