<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link rel="stylesheet" href="../css/style.css">
<style>
/* 컨테이너: 카드 4개씩 균등 배치 */
.review-container {
	max-width: 1200px;
	margin: 40px auto;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}

/* 리뷰 카드 전체 */
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

.review-card:hover {
	transform: translateY(-4px);
}

/* 이미지 영역 - 정사각형 만들기 */
.review-image {
	width: 100%;
	height: 0;
	padding-bottom: 100%; /* 가로 길이의 100%만큼 높이 확보 (정사각형) */
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

.review-image img:hover {
	transform: scale(1.05);
}

/* 내용 영역 */
.review-content {
	padding: 12px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 100%;
}

/* 텍스트 */
.review-text {
	font-size: 14px;
	color: #333;
	line-height: 1.4;
	margin-bottom: 14px;
}

/* 제품명과 리뷰 수 */
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

.review_title, .review_subtitle {
	font-family: 'Noto Sans KR';
	margin: 0;
}

.review_title_wrap {
	display: flex;
	flex-direction: column;
	align-items: center; /* 좌우 정렬을 중앙으로 */
	text-align: center;
	/* 텍스트 자체도 중앙으로 */
	width: 100%;
	height: auto;
	margin-bottom: 20px;
	margin-top: 60px;
	text-align: center;
}

.review_title_wrap .review_title {
	font-size: 32px;
	font-weight: bold;
}

/* 반응형 */
@media ( max-width : 1024px) {
	.review-container {
		grid-template-columns: repeat(2, 1fr);
	}
}

@media ( max-width : 600px) {
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
		<!-- 리뷰 카드 시작 -->
		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review1.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">요즘 삼삼한 요리들 위주로 찾아 먹는데, 이북식 만두가 궁금해서
					주문해봤어요. 야채들도 신선하고, 만두 속도 알차서 둘이서 푸짐하게 먹었네요. 육수도 기대 이상으로 맛있어서 또 주문할
					것 같아요~</p>
				<div>
					<div class="review-title">이북식 만두전골 790g</div>
					<div class="review-count">리뷰 23</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review2.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">아무래도 생선찜이라 조리가 어렵진 않을까 걱정했는데 너무 간편하게 요리 할
					수 있어서 좋았구요! 칼칼한~양념과 제일 중요한건 가오리의 포실포실한 살이 먹던거랑 비슷하게 나올까? 싶었는데 강릉에서
					먹던 맛, 씹는 맛 그대로여서 너무 좋았습니다!</p>
				<div>
					<div class="review-title">강릉식 가오리찜 765g</div>
					<div class="review-count">리뷰 43</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review3.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">버섯이 진짜 듬뿍 들어있는데 소고기까지 들어있어서 넘 푸짐. 조리도 너무
					쉬워서 요리라곤 해본적 없는 남편이 만들어준건데도 맛있었어요 ㅋㅋ!!</p>
				<div>
					<div class="review-title">버섯 듬뿍 잡채 353g</div>
					<div class="review-count">리뷰 238</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review4.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">과일이 듬뿍 들어가서 자연스럽게 달달하고 육질이 부드럽네요. 영유아 아이들
					함께 먹기에 간이 세지 않고 부드러워 좋았어요. 오랜만에 재구매템인데 다음 장바구니에도 넣어야겠네요.</p>
				<div>
					<div class="review-title">과일숙성 바싹 돼지불고기 300g</div>
					<div class="review-count">리뷰 13</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review5.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">쌀로 만들어져서 속에 부담도 없고 저렇게 먹으면 진짜 맛있어요! 30살
					넘은 딸먹으라고 저렇게 해준거 너무 귀엽고 몽글몽글해요.맛있어서 4판 주문했습니다!</p>
				<div>
					<div class="review-title">미미 카스테라 115g</div>
					<div class="review-count">리뷰 5,256</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review6.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">고소한 감자샐러드에 베이컨이 콕콕 박혀있어서 식감도 좋고 감칠맛을
					올려줘요.</p>
				<div>
					<div class="review-title">베이컨감자 모닝샌드 128g</div>
					<div class="review-count">리뷰 1,143</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review7.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">에어프라이어에 15분정도 구워서 바삭해졌어요! 상추 깔고 샐러드처럼 먹으니
					훨 낫네용 2인분이 맞는것 같은 양입니다 간단하게 크림새우 먹을수있어서 행복했어요</p>
				<div>
					<div class="review-title">레몬크림새우 370g</div>
					<div class="review-count">리뷰 702</div>
				</div>
			</div>
		</div>

		<div class="review-card">
			<div class="review-image">
				<img src="../images/review/review8.webp" alt="이미지">
			</div>
			<div class="review-content">
				<p class="review-text">역시 전복내장죽 고소하고 맛있어요 재구매 예정이에요.세일할때 쟁여야겠어요.</p>
				<div>
					<div class="review-title">전복 내장죽 330g</div>
					<div class="review-count">리뷰 463</div>
				</div>
			</div>
		</div>
		<!-- 리뷰 카드 끝 -->
	</div>
	<jsp:include page="footer.jsp" />
	<!-- 하단 -->
</body>
</html>