<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   	
<div class="mycontainer mycontainer-um">
    <div class="logo"><a href="<c:url value='/' />"><i class="fab fa-blogger fa-2x"></i></a></div>
<!--     <div class="search">
        <input type="text" title="검색" class="search_input">
        <button type="button" class="search_button">검색</button>
    </div> -->
    <div><p><b>관리자메뉴</b></p></div>
    <!-- 로그인 전 -->
<%--     <c:if test="${empty member }" >
    <div class="gnb">
        <a href="<c:url value='/loginForm' />">Sign in</a> <span>|</span>
        <a href="<c:url value='/member/joinForm' />">Sign up</a>
		</div>
		</c:if>
		<!- 로그인 후 ->
		<c:if test="${!empty member }" >
    <div class="gnb">
        <a href="<c:url value='/logout' />">logout</a> <span>|</span>
        <a href="<c:url value='/member/modifyForm/${sessionScope.member.id }' />">${member.nickname}님</a><span>|</span>
        <a href="<c:url value='/member/outForm' />">회원탈퇴</a>
    </div>
		</c:if> --%>
</div>
