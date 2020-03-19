<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>로 그 인</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/resset.css' />">
  <link rel="stylesheet" href="<c:url value='/resources/css/out.css' />">
  <script src="<c:url value='/resources/js/out.js' />"></script>
</head>
<body>
  <div class="mycontainer">
    <div class="login-wrapper">
      <form id="frm" action="<c:url value='/member/out' />" method="post">
        <div><h3 class="login-title">회원 탈퇴</h3></div>
        <div class="login-content">
          <div><input type="text" name="id" id="id" placeholder="아이디" value="${sessionScope.member.id }" readOnly></div>
          <div><span id="idMsg"></span></div>
          <div><input type="password" name="pw" id="pw" placeholder="비밀번호"></div>
          <div><span id="pwMsg" class="errmsg"><c:if test="${!empty svr_msg}">${svr_msg }</c:if></span></div>
          <div><input type="submit" name="" id="outBtn" value="탈 퇴"></div>
        </div>
      </form>
      <div class="find_info">
        <a href="#">비밀번호 찾기</a>
      </div>
    </div>
  </div>
</body>
</html>