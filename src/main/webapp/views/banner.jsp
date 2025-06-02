<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>배너</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
</head>
<body>

    <div class="main-slider">
    <%
        if (conn != null) {
            String sql = "SELECT image_url, alt_text FROM banners";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String imgUrl = rs.getString("image_url");
                String altText = rs.getString("alt_text");
    %>
        <div>
            <a href="#"><img src="<%= imgUrl %>" alt="<%= altText %>" /></a>
        </div>
    <%
            }
            rs.close();
            stmt.close();
            conn.close();
        } else {
            out.println("❌ MySQL bilan ulanish mavjud emas (conn = null).");
        }
    %>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.main-slider').slick({
                infinite : true,
                slidesToShow : 4,
                slidesToScroll : 1,
                centerMode : true,
                centerPadding : '0px',
                arrows : true,
                dots : true,
                autoplay : true,
                autoplaySpeed : 3000,
                responsive : [ {
                    breakpoint : 1024,
                    settings : {
                        slidesToShow : 3,
                        centerMode : true,
                    }
                }, {
                    breakpoint : 768,
                    settings : {
                        slidesToShow : 1,
                        centerMode : true,
                    }
                } ]
            });
        });
    </script>
</body>
</html>
