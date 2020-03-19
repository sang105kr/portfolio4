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
					<table border="1">
						<caption><h3>회원 목록</h3></caption>
						<colgroup>
							<col width="20%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
						</colgroup>
						<thead>
							<tr>
								<th>회원아이디</th>
								<th>비밀번호</th>
								<th>전화번호</th>
								<th>별칭</th>
								<th>성별</th>
								<th>지역</th>
								<th>생년월일</th>
								<th>생성일</th>
								<th>수정일</th>
							</tr>
						</thead>
						<tbody>	
							<c:forEach var="rec" items="${memberList }">
							<tr>
								<td>${rec.id}</td>
								<td>${rec.pw }</td>
								<td>${rec.tel }</td>
								<td>${rec.nickname}</td>
								<td>${rec.gender }</td>
								<td>${rec.region }</td>
								<td>${rec.birth}</td>
								<td>${rec.cdate }</td>
								<td>${rec.udate }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>						
				</div>
			</main>

			<!-- footer -->
			<footer>
				<%@ include file="footer.jsp" %>			
			</footer>
		</div>
	</div>
</body>