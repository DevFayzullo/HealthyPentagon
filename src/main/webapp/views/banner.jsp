<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>배너</title>

<!-- Slick CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

</head>
<body>

	<div class="main-slider">
		<div>
			<a href="#"> <img src="images/banners/banner1.jpg" alt="배너1" />
			</a>
		</div>
		<div>
			<a href="#"> <img src="images/banners/banner2.jpg" alt="배너2" />
			</a>
		</div>
		<div>
			<a href="#"> <img src="images/banners/banner3.jpg" alt="배너3" />
			</a>
		</div>
		<div>
			<a href="#"> <img src="images/banners/banner4.jpg" alt="배너4" />
			</a>
		</div>
		<div>
			<a href="#"> <img src="images/banners/banner5.jpg" alt="배너5" />
			</a>
		</div>
		<div>
			<a href="#"> <img src="images/banners/banner6.jpg" alt="배너6" />
			</a>
		</div>
	</div>

	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Slick JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

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

			// 슬라이드 투명도 조절 함수와 이벤트 제거해서 모든 슬라이드가 동일 강조됨
		});
	</script>
</body>
</html>