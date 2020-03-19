<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>           
<!DOCTYPE html>
<html lang="ko">
    <head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">        
		<title> Spring Framework </title>
		<!-- Bootstrap CSS -->
<%-- 		<link rel="stylesheet" 
					href="${pageContext.request.contextPath }/webjars/bootstrap/4.4.1-1/css/bootstrap.css">
	 --%>	
		<link rel="stylesheet" href="<c:url value='/resources/css/reset.css' />">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-1/css/all.min.css" />
		<link rel="stylesheet" href="<c:url value='/resources/css/menu.css' />">                  
		<link rel="stylesheet" href="<c:url value='/resources/css/layout.css' />">
<%-- 		<script defer="defer" src="${pageContext.request.contextPath }/webjars/jquery/3.4.1/jquery.js"></script>
		<script defer="defer" src="${pageContext.request.contextPath }/webjars/popper.js/2.0.2/umd/popper.js"></script>
		<script defer="defer" src="${pageContext.request.contextPath }/webjars/bootstrap/4.4.1-1/js/bootstrap.js"></script>
 --%>		
    </head>
    <body>
        <div class="mycontainerAll">
            <div class="content">
                <!-- uppermost -->
                <div class=	"uppermost">
								<%@ include file="include/uppermost.jsp" %>							
                </div>
                
        
                <!-- nav -->
                <nav>
								<%@ include file="include/menu.jsp" %>
                </nav>
       
                <!-- header -->
                <header>
								<%@ include file="include/header.jsp" %>
                </header>
								<!-- main -->
								<main>
								    <div class="mycontainer main-inner-box">
								    <h1> 여기는 메인페이지</h1>
<!-- 								        <div class="mycontainer mycontainer-sc">
								            <aside id="sidemenu">sidemenu</aside>
								            <article>content</article>
								            <aside id="sidebanner">sidebanner</aside>
								        </div> -->
								    </div>
								</main>
                <!-- footermenu -->
                <div class="footermenu">
                <%@ include file="include/footermenu.jsp" %>	
                </div>
        
                <!-- footer -->
                <footer>
                <%@ include file="include/footer.jsp" %>		
                </footer>
            </div>
        </div>
    </body>
</html>

