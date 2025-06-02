<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link rel="stylesheet" href="../css/style.css">
<style>
.review-container {
	max-width: 1200px;
	margin: 40px auto;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}
.review-card {
	border: 1px solid #ddd;
	border-radius: 10px;
	overflow: hidden;
	background: #fff;
	display: flex;
	flex-direction: column;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
	transition: transform 0.3s;
}
.review-card:hover { transform: translateY(-4px); }
.review-image {
	width: 100%;
	height: 0;
	padding-bottom: 100%;
	position: relative;
	overflow: hidden;
}
.review-image img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: transform 0.3s ease-in-out;
}
.review-image img:hover { transform: scale(1.05); }
.review-content {
	padding: 12px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 100%;
}
.review-text {
	font-size: 14px;
	color: #333;
	line-height: 1.4;
	margin-bottom: 14px;
}
.review-title {
	font-size: 15px;
	font-weight: 600;
	color: #111;
	margin-bottom: 4px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.review-count {
	font-size: 13px;
	color: #888;
}
.review_title_wrap {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	width: 100%;
	margin: 60px 0 20px;
}
.review_title_wrap .review_title {
	font-size: 32px;
	font-weight: bold;
}
@media (max-width: 1024px) {
	.review-container {
		grid-template-columns: repeat(2, 1fr);
	}
}
@media (max-width: 600px) {
	.review-container {
		grid-template-columns: 1fr;
	}
}
</style>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="review_title_wrap">
	<div class="review_title">리뷰 모음</div>
</div>

<div class="review-container">
<%
    String sql = "SELECT * FROM reviews";
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    while (rs.next()) {
        String image = rs.getString("image_url");
        String text = rs.getString("content");
        String product = rs.getString("title"); // TO‘G‘RILANGAN QATOR
        int count = rs.getInt("review_count");
%>
	<div class="review-card">
		<div class="review-image">
			<img src="<%= image %>" alt="이미지">
		</div>
		<div class="review-content">
			<p class="review-text"><%= text %></p>
			<div>
				<div class="review-title"><%= product %></div>
				<div class="review-count">리뷰 <%= count %></div>
			</div>
		</div>
	</div>
<%
    }
    rs.close();
    stmt.close();
    conn.close();
%>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>
