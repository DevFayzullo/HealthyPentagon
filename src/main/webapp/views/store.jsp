<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/item.css">
<style>
.store_banner {
    text-align: center;
    margin: 20px 0 40px;
}
.store_banner img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}
</style>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="food_section">
<%
    String sql = "SELECT name, subtitle, url, image_url FROM stores";
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    while (rs.next()) {
        String name = rs.getString("name");
        String subtitle = rs.getString("subtitle");
        String storeUrl = rs.getString("url"); // ⚠️ url → storeUrl
        String image = rs.getString("image_url");
%>
    <div class="food_title_wrap">
        <div class="food_subtitle"><%= subtitle %></div>
        <div class="food_title">
            <%= name %> 
            (<a href="<%= storeUrl %>" target="_blank"><%= storeUrl %></a>)
        </div>
    </div>

    <div class="store_banner">
        <a href="<%= storeUrl %>" target="_blank">
            <img src="<%= image %>" alt="<%= name %> 배너">
        </a>
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
