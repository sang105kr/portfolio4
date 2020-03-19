<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="<c:url value='/resources/admin/css/reset.css' />">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-1/css/all.min.css" />
<link rel="stylesheet" href="<c:url value='/resources/admin/css/menu.css' />">        
<link rel="stylesheet" href="<c:url value='/resources/admin/css/layout.css' />">
<script></script>
</head>
<body>
	<div class="mycontainerAll">
		<div class="content">
			<!-- uppermost -->
			<div class="uppermost">
				<div class="mycontainer mycontainer-um"></div>
			</div>

			<!-- header -->
			<header>
				<div class="mycontainer mycontainer-h"></div>
			</header>

			<!-- nav -->
			<nav>
				<div class="mycontainer mycontainer-n clearfix">
		      <ul>
		        <li>
		          <a href="#">회원관리</a>
		          <ul>
		            <li><a href="<c:url value='/admin/memberList' />">회원목록</a></li>
		            <li><a href="">2Depth</a></li>
		          </ul>
		        </li>
		        <li>
		          <a href="#">1Depth</a>
		          <ul>
		            <li><a href="">2Depth</a></li>
		            <li><a href="">2Depth</a></li>
		          </ul>
		        </li>
		        <li>
		          <a href="#">1Depth</a>
		          <ul>
		            <li><a href="">2Depth</a></li>
		            <li><a href="">2Depth</a></li>
		          </ul>
		        </li>
		        <li>
		          <a href="#">1Depth</a>
		          <ul>
		            <li><a href="">2Depth</a></li>
		            <li><a href="">2Depth</a></li>
		          </ul>
		        </li>
		        <li>
		          <a href="#">1Depth</a>
		          <ul>
		            <li><a href="">2Depth</a></li>
		            <li><a href="">2Depth</a></li>
		          </ul>
		        </li>
		      </ul>							
				</div>
			</nav>

			<!-- main -->
			<main>
				<div class="mycontainer main-inner-box">
						
				</div>
			</main>

			<!-- footermenu -->
			<div class="footermenu">
				<div class="mycontainer mycontainer-fm">footer menu</div>
			</div>

			<!-- footer -->
			<footer>
				<div class="mycontainer mycontainer-f">footer</div>
			</footer>
		</div>
	</div>
</body>