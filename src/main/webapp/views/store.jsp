<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/item.css">
</head>
<body>
	<jsp:include page="header.jsp" /><!-- 상단 -->

	<div class="food_section">
		<div class="food_title_wrap">
			<div class="food_subtitle">건강한 식재료부터 믿을 수 있는 뷰티</div>
			<div class="food_title">마켓컬리 (https://www.kurly.com/main)</div>
		</div>

		<!-- ✅ 배너 삽입 영역 -->
		<div class="store_banner">
			<a href="https://www.kurly.com/" target="_blank"> <img
				src="../images/store/kurly.jpg" alt="마켓컬리 프로모션 배너">
			</a>
		</div>
		
		<div class="food_title_wrap">
			<div class="food_subtitle">오늘 주문 내일 도착 보장</div>
			<div class="food_title">쿠팡프레시 (https://www.coupang.com/)</div>
		</div>

		<!-- ✅ 배너 삽입 영역 -->
		<div class="store_banner">
			<a href="https://www.coupang.com/" target="_blank"> <img
				src="../images/store/coupang.jpg" alt="마켓컬리 프로모션 배너">
			</a>
		</div>
	</div>
	<jsp:include page="footer.jsp" /><!-- 하단 -->
</body>
</html>