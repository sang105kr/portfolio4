<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   	

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
        <a href="#">대쉬보드</a>
        <ul>
          <li><a href="">2Depth</a></li>
          <li><a href="">2Depth</a></li>
        </ul>
      </li>
      <li>
        <a href="#">게시판관리</a>
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
