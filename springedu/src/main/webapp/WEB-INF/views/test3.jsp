<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>제출한 데이터</h3>
${person }
${per }
<p>name: ${person.name}</p>
<p>age: ${person.age}</p>
<p>name1: ${per.name}</p>
<p>age2: ${per.age}</p>
</body>
</html>