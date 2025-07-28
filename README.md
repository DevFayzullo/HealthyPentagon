# Healthy Food Web Project 🍱🥗

이 프로젝트는 건강한 식단, 믿을 수 있는 식재료, 사용자 리뷰 등을 포함한 웹 기반 식품 정보 플랫폼입니다.

---

## 🛠 기술 스택

- **Frontend**: HTML5, CSS3, JavaScript
- **Backend**: JSP (Java Server Pages)
- **Database**: MySQL
- **Server**: Apache Tomcat 9.x

---

## 📁 디렉토리 구조

```
├── css/
│   ├── style.css         #천제 스타일
│   ├── item.css           #아이템 스타일
├── images/
│   ├── sides/, desserts/, review/ ... #이미지
├── views/
│   ├── banner.jsp             # 배너 페이지
│   ├── diet_management.jsp    # 식단 관리 페이지
│   ├── footer.jsp             # 푸터 페이지
│   ├── header.jsp             # 헤더 페이지
│   ├── healthy_diet.jsp       # 건강 식단 페이지
│   ├── main.jsp               # 메인 페이지
│   ├── review.jsp             # 사용자 리뷰
│   ├── store.jsp              # 외부 쇼핑몰 배너
├── dbconn.jsp                 # DB 연결
├── index.jsp                  # 메인


```

---

## 📌 주요 기능

### 1. 건강 식단 추천 (`diet_management.jsp`)
- 단백질, 칼로리, 저당 식단 탭
- MySQL DB에서 동적으로 데이터 로딩

### 2. 제품 리뷰 목록 (`review.jsp`)
- 사용자 리뷰, 이미지, 리뷰 수 등 표시
- 정사각형 카드 레이아웃

### 3. 외부 쇼핑몰 배너 (`store.jsp`)
- 마켓컬리, 쿠팡 등 외부 링크 배너 삽입

### 4. 메인 페이지 (`main.jsp`)
- 추천 반찬 및 디저트 고정 이미지 나열

---

## 🗃 DB 테이블 요약

### `healthy_diets`
| 필드 | 설명 |
|------|------|
| id | PK |
| category | '단백질', '칼로리', '저당' |
| name | 식품 이름 |
| kcal | 칼로리 |
| image_url | 이미지 링크 |

### `reviews`
| 필드 | 설명 |
|------|------|
| id | PK |
| title | 제품명 |
| content | 리뷰 내용 |
| review_count | 리뷰 수 |
| image_url | 이미지 링크 |

---

## ▶️ 실행 방법

1. MySQL 데이터베이스 세팅
   - `healthy_diets` 및 `reviews` 테이블 생성
   - 테스트용 데이터 삽입

2. Apache Tomcat 실행 후 프로젝트 deploy

3. 브라우저에서 `http://localhost:8080/프로젝트경로/views/main.jsp` 접속

---

## 🙋 문의

문의 및 피드백: **[DevFayzullo]** ([GitHub](https://github.com/DevFayzullo), fayzullo.coder@gmail.com)

---

## 👥 팀원 소개

| 이름         | 역할              | GitHub 프로필                          |
|--------------|-------------------|----------------------------------------|
| DevFayzullo(줄로)  | 프론드앤드 개발   | [DevFayzullo](https://github.com/DevFayzullo) |
| 김진성             | 디자이너         | [Zzing279](https://github.com/Zzing279) |
| Ariel(아리엘)      | 백앤드 개발       | [yxcks1709](https://github.com/yxcks1709) |

---

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 제공됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참고하세요.

---

**© 2025 Healthy Food Web — JSP 기반 식품 정보 플랫폼**
