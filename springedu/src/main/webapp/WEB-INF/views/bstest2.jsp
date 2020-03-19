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
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script defer="defer" src="${pageContext.request.contextPath }/webjars/jquery/3.4.1/jquery.js"></script>
<script defer="defer" src="${pageContext.request.contextPath }/webjars/popper.js/2.0.2/umd/popper.js"></script>
<script defer="defer" src="${pageContext.request.contextPath }/webjars/bootstrap/4.4.1-1/js/bootstrap.js"></script>
			
<title>Insert title here</title>
<style>
	* {
		outline: 1px solid red;
	}
</style>
</head>
<body>
<div class="mycontainer">
  <div class="row">
    <div class="col-sm-8">col-sm-8</div>
    <div class="col-sm-4">col-sm-4</div>
  </div>
  <div class="row">
    <div class="col-sm">col-sm</div>
    <div class="col-sm">col-sm</div>
    <div class="col-sm">col-sm</div>
  </div>
</div>
</body>
</html>