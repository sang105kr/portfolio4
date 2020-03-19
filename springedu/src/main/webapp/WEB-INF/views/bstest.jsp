<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" 
			href="${pageContext.request.contextPath }/webjars/bootstrap/4.4.1-1/css/bootstrap.css">

<title>Insert title here</title>
<style>
/* 	#sliding {
		display:flex;
		justify-content: center;
		width:100%;
	} */
</style>

</head>
<body>
<div class="mycontainer">
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" ></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2" class="active"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item " data-interval="3000">
      <img src="https://cdn.pixabay.com/photo/2017/04/24/11/18/drop-of-water-2256201__340.jpg" class="d-block w-100" alt="..." style="width: 600px; height: 200px">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>
    <div class="carousel-item" data-interval="3000">
      <img src="https://cdn.pixabay.com/photo/2019/05/11/17/35/mosque-4196145__340.jpg" class="d-block w-100" alt="..." style="width: 600px; height: 200px">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item active" data-interval="3000">
      <img src="https://cdn.pixabay.com/photo/2020/02/20/22/49/istanbul-4866138__340.jpg" class="d-block w-100" alt="..." style="width: 600px; height: 200px">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath }/webjars/jquery/3.4.1/jquery.js"></script>
<script src="${pageContext.request.contextPath }/webjars/popper.js/2.0.2/umd/popper.js"></script>
<script src="${pageContext.request.contextPath }/webjars/bootstrap/4.4.1-1/js/bootstrap.js"></script>
</body>
</html>