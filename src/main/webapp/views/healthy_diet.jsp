<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강식단</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/item.css">
</head>
<body>
	<jsp:include page="header.jsp" /> <!-- 상단 -->
	
	<div class="diet_section">
	<div class="diet_title_wrap">
		<div class="diet_subtitle">건강한 식사의 시작</div>
		<div class="diet_title">내 몸에 맞는 맞춤 식단을 선택하세요</div>
	</div>

	<!-- 탭 버튼 -->
	<div class="diet_tabs">
		<div class="diet_tab active" data-tab="protein">단백질 식단</div>
		<div class="diet_tab" data-tab="calorie">칼로리 식단</div>
		<div class="diet_tab" data-tab="lowcarb">저당 식단</div>
	</div>
	
	<!-- 단백질 식단 -->
	<div class="diet_list_wrap active" id="tab-protein">
		<div class="diet_list">
			<!-- 음식 카드들 (생략 가능) -->
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet1.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">오리깻잎볶음 세트 375g</p>
						<p class="diet_kcal">535 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet2.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">영양 들깨 닭죽 세트 530g</p>
						<p class="diet_kcal">580 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet3.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">양지탕&두부찜 김치볶음 세트 600g</p>
						<p class="diet_kcal">490 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet4.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">일본식 돼지고기덮밥 세트 402g</p>
						<p class="diet_kcal">670 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet5.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">초당순두부찌개&어묵볶음 세트 600g</p>
						<p class="diet_kcal">650 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/high_protein_diet/high_protein_diet6.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">단백질 식단</p>
						<p class="diet_name">소이치킨덮밥 세트 350g</p>
						<p class="diet_kcal">465 kcal</p>
					</div>
				</a>
			</div>
			<!-- 추가 카드들 생략 -->
		</div>
	</div>
	
	<!-- 칼로리 식단 -->
	<div class="diet_list_wrap" id="tab-calorie">
		<div class="diet_list">
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie1.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">유린기 샐러드&유린기 드레싱 261g</p>
						<p class="diet_kcal">315 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie2.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">강된장 보리쌈밥 샐러드 261g</p>
						<p class="diet_kcal">360 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie3.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">구운버섯 오리엔탈 샐러드 249g</p>
						<p class="diet_kcal">330 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie4.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">레몬 쉬림프 샐러드 223g</p>
						<p class="diet_kcal">325 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie5.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">시나몬 허니버터 고구마샐러드 255g</p>
						<p class="diet_kcal">430 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/calorie/calorie6.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">칼로리 식단</p>
						<p class="diet_name">니수아즈 샐러드&레몬 드레싱 252g</p>
						<p class="diet_kcal">345 kcal</p>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!-- 저당 식단 -->
	<div class="diet_list_wrap" id="tab-lowcarb">
		<div class="diet_list">
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb1.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">오븐치킨 파히타 세트 288g</p>
						<p class="diet_kcal">555 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb2.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">도토리묵 비빔&비빔채소 세트 273g</p>
						<p class="diet_kcal">325 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb3.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">오야꼬동&브로콜리 깨소스무침 세트 322g</p>
						<p class="diet_kcal">345 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb4.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">수제고기 완자구이&김치볶음 세트 272g</p>
						<p class="diet_kcal">335 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb5.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">주꾸미덮밥 세트 363g</p>
						<p class="diet_kcal">525 kcal</p>
					</div>
				</a>
			</div>
			
			<div class="diet_card">
				<a href="#" class="diet_link">
					<div class="diet_thumbnail">
						<img src="../images/lowcarb/lowcarb6.jpg" alt="제품명">
					</div>
					<div class="diet_info">
						<p class="diet_description">저당 식단</p>
						<p class="diet_name">얼큰버섯전골 세트 555g</p>
						<p class="diet_kcal">500 kcal</p>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" /> <!-- 하단 -->

<script>
	document.querySelectorAll('.diet_tab').forEach(tab => {
		tab.addEventListener('click', () => {
			// 탭 버튼 상태 초기화
			document.querySelectorAll('.diet_tab').forEach(t => t.classList.remove('active'));
			// 탭 콘텐츠 초기화
			document.querySelectorAll('.diet_list_wrap').forEach(wrap => wrap.classList.remove('active'));

			// 선택한 탭 활성화
			tab.classList.add('active');
			const targetId = 'tab-' + tab.dataset.tab;
			document.getElementById(targetId).classList.add('active');
		});
	});
</script>
</body>
</html>