<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 관리</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/item.css">
</head>
<body>
<jsp:include page="header.jsp" />

<%
    String sql = "SELECT meal_date, meal_time, name, kcal, image_url FROM diet_meals ORDER BY meal_date DESC, FIELD(meal_time, '아침', '점심', '저녁')";
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);

    String currentDate = "";
    while (rs.next()) {
        String mealDate = rs.getString("meal_date");
        String mealTime = rs.getString("meal_time");
        String name = rs.getString("name");
        int kcal = rs.getInt("kcal");
        String img = rs.getString("image_url");

        if (!mealDate.equals(currentDate)) {
            if (!currentDate.equals("")) {
%>
            </div></div></div> <!-- dietmgmt_list_wrap & section end -->
<%
            }
            currentDate = mealDate;
%>
    <div class="dietmgmt_section">
        <div class="dietmgmt_title_wrap">
            <div class="dietmgmt_title"><%= mealDate %></div>
        </div>
        <div class="dietmgmt_list_wrap active">
            <div class="dietmgmt_list">
<%
        }
%>
                <div class="dietmgmt_card">
                    <a href="#" class="dietmgmt_link">
                        <div class="dietmgmt_thumbnail">
                            <img src="<%= img %>" alt="제품명">
                        </div>
                        <div class="dietmgmt_info">
                            <p class="dietmgmt_description"><%= mealTime %></p>
                            <p class="dietmgmt_name"><%= name %></p>
                            <p class="dietmgmt_kcal"><%= kcal %> kcal</p>
                        </div>
                    </a>
                </div>
<%
    }
    rs.close();
    stmt.close();
    conn.close();
%>
            </div>
        </div>
    </div>

<jsp:include page="footer.jsp" />
</body>
</html>
