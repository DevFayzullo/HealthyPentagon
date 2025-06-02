<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강식당</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/item.css">
</head>
<body>
<jsp:include page="header.jsp" />

<div class="diet_section">
	<div class="diet_title_wrap">
		<div class="diet_subtitle">건강한 식사의 시작</div>
		<div class="diet_title">내 몸에 맞는 맞춤 식당을 선택하세요</div>
	</div>

	<!-- 탭 버튼 -->
	<div class="diet_tabs">
		<div class="diet_tab active" data-tab="단백질">단백질 식당</div>
		<div class="diet_tab" data-tab="칼로리">칼로리 식당</div>
		<div class="diet_tab" data-tab="저당">저당 식당</div>
	</div>

<%
    String[] categories = {"단백질", "칼로리", "저당"};
    for (String category : categories) {
        String cssClass = category.equals("단백질") ? "diet_list_wrap active" : "diet_list_wrap";
%>
	<div class="<%= cssClass %>" id="tab-<%= category %>">
		<div class="diet_list">
<%
        String sql = "SELECT * FROM healthy_diets WHERE category = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, category);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String img = rs.getString("image_url");
            String cat = rs.getString("category");
            String name = rs.getString("name");
            int kcal = rs.getInt("kcal");
%>
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="<%= img %>" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description"><%= cat %> 식당</p>
						<p class="diet_name"><%= name %></p>
						<p class="diet_kcal"><%= kcal %> kcal</p>
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
<%
    }
    conn.close();
%>
</div>

<jsp:include page="footer.jsp" />

<script>
	document.querySelectorAll('.diet_tab').forEach(tab => {
		tab.addEventListener('click', () => {
			document.querySelectorAll('.diet_tab').forEach(t => t.classList.remove('active'));
			document.querySelectorAll('.diet_list_wrap').forEach(wrap => wrap.classList.remove('active'));
			tab.classList.add('active');
			const targetId = 'tab-' + tab.dataset.tab;
			document.getElementById(targetId).classList.add('active');
		});
	});
</script>
</body>
</html>
