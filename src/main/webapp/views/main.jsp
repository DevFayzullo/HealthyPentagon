<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<link rel="stylesheet" href="css/item.css">
</head>
<body>

<%
    String[] categories = {"곁들임", "디저트"};
    String[] subtitles = {"맛과 조화를 이루는 작은 행복", "주말의 행복을 만끽하는 방법"};
    String[] titles = {"완벽한 한 끼를 위한 곁들임 요리", "디저트와 함께하는 티타임"};

    for (int i = 0; i < categories.length; i++) {
        String category = categories[i];
        String subtitle = subtitles[i];
        String title = titles[i];
%>
    <div class="food_section">
        <div class="food_title_wrap">
            <div class="food_subtitle"><%= subtitle %></div>
            <div class="food_title"><%= title %></div>
        </div>
        <div class="food_list_wrap">
            <div class="food_list">
<%
        String sql = "SELECT name, description, kcal, image_url FROM foods WHERE category = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, category);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
%>
                <div class="food_card">
                    <a href="#" class="food_link">
                        <div class="food_thumbnail">
                            <img src="<%= rs.getString("image_url") %>" alt="제품명">
                        </div>
                        <div class="food_info">
                            <p class="food_description"><%= rs.getString("description") %></p>
                            <p class="food_name"><%= rs.getString("name") %></p>
                            <p class="food_kcal"><%= rs.getInt("kcal") %> kcal</p>
                        </div>
                    </a>
                </div>
<%
        }
        rs.close();
        ps.close();
%>
            </div>
        </div>
    </div>
<%
    }
    conn.close();
%>

</body>
</html>
