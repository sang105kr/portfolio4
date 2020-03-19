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
				<%@ include file="uppermost.jsp" %>
			</div>

			<!-- header -->
			<header>
			<%@ include file="header.jsp" %>
			</header>

			<!-- nav -->
			<nav>
			<%@ include file="menu.jsp" %>
			</nav>

			<!-- main -->
			<main>
				<div class="mycontainer main-inner-box">
						
				</div>
			</main>

			<!-- footer -->
			<footer>
				<%@ include file="footer.jsp" %>			
			</footer>
		</div>
	</div>
</body>