<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<title>헤더</title>
<header class="main-header">
	<div class="header-inner">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/">
				<img src="${pageContext.request.contextPath}/images/logo.png" alt="로고">
			</a>
		</div>
		<nav class="main-nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/views/healthy_diet.jsp">건강식단</a></li>
				<li><a href="${pageContext.request.contextPath}/views/diet_management.jsp">식단 관리</a></li>
				<li><a href="${pageContext.request.contextPath}/views/store.jsp">스토어</a></li>
				<li><a href="${pageContext.request.contextPath}/views/review.jsp">리뷰</a></li>
			</ul>
		</nav>
	</div>
</header>