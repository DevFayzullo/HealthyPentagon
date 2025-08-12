# Healthy Food Web Project 🍱🥗

A web-based **food information platform** featuring healthy diet recommendations, trusted ingredients, and user reviews.  
Built with **JSP (Java Server Pages)**, **MySQL**, and **Apache Tomcat 9** on the backend; **HTML5/CSS3/JavaScript** on the frontend.

> This README includes setup steps for **local development** with Tomcat and MySQL, plus database schema samples.

---

## 📸 Preview

![screenshot](./src/main/webapp/images/screenshot.png)

---

## 🔎 Features

- **Healthy Diets** (`diet_management.jsp`): tabs for protein, low-calorie, and low-sugar; data loaded dynamically from MySQL
- **Product Reviews** (`review.jsp`): card-style list with images and review counts
- **External Store Banners** (`store.jsp`): links to marketplaces (e.g., Coupang, Market Kurly)
- **Main Page** (`main.jsp`): curated banners and static highlights

---

## 🧱 Tech Stack

- **Frontend**: HTML5, CSS3 (utility styles), JavaScript (ES6+)
- **Backend**: JSP (Java Server Pages)
- **Database**: MySQL
- **Server**: Apache Tomcat 9.x

---

## 📂 Project Structure (key paths)

```
src/main/webapp/
├─ css/
│  ├─ style.css
│  └─ item.css
├─ images/
│  ├─ sides/  desserts/  review/  ... 
├─ views/
│  ├─ banner.jsp
│  ├─ diet_management.jsp
│  ├─ footer.jsp
│  ├─ header.jsp
│  ├─ healthy_diet.jsp
│  ├─ main.jsp
│  └─ review.jsp
├─ dbconn.jsp
└─ index.jsp
```

---

## 🗄️ Database Schema (sample)

### Table: `healthy_diets`
| Field       | Type         | Notes                                 |
|-------------|--------------|---------------------------------------|
| `id`        | INT PK       | Auto-increment                        |
| `category`  | VARCHAR(20)  | 'protein' | 'calorie' | 'low_sugar'  |
| `name`      | VARCHAR(255) | Item name                             |
| `kcal`      | INT          | Calories                               |
| `image_url` | VARCHAR(255) | Image link                             |

```sql
CREATE TABLE healthy_diets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(20) NOT NULL,
  name VARCHAR(255) NOT NULL,
  kcal INT,
  image_url VARCHAR(255)
);
```

### Table: `reviews`
| Field         | Type          | Notes                    |
|---------------|---------------|--------------------------|
| `id`          | INT PK        | Auto-increment           |
| `title`       | VARCHAR(255)  | Product name             |
| `content`     | TEXT          | Review content           |
| `review_count`| INT           | Number of reviews        |
| `image_url`   | VARCHAR(255)  | Image link               |

```sql
CREATE TABLE reviews (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  review_count INT DEFAULT 0,
  image_url VARCHAR(255)
);
```

> Tip: seed with a few rows in each table for development.

---

## 🧪 Local Setup

### 1) Prerequisites
- **JDK 17** (or 11+ compatible with your Tomcat setup)
- **Apache Tomcat 9.x**
- **MySQL 8.x** (or 5.7+)

### 2) Database
1. Create a database, e.g. `healthy_pentagon`.
2. Run the **CREATE TABLE** statements above.
3. Add sample data.
4. Update DB credentials in `dbconn.jsp`:
   ```jsp
   <%
     String url = "jdbc:mysql://localhost:3306/healthy_pentagon?serverTimezone=UTC&useSSL=false&characterEncoding=utf8";
     String user = "root";
     String password = "1234";
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection conn = DriverManager.getConnection(url, user, password);
   %>
   ```

### 3) Run with Tomcat
- Import as a **Java Web** project (e.g., Eclipse/IntelliJ).
- Configure **Tomcat 9** server.
- Set project as an artifact/deployment and run.

### 4) Access
- Open: `http://localhost:8080/<context-path>/views/main.jsp`
  - Or: `http://localhost:8080/<context-path>/index.jsp`

---

## 🧭 Roadmap
- [ ] Add **search & filter** on reviews
- [ ] Add **admin CRUD** for diets and reviews
- [ ] Extract DB access into **DAO** / use a JDBC pool
- [ ] i18n (KR/EN) for UI
- [ ] Unit tests for DAO layer

---

## 🤝 Contributing
PRs are welcome. Please open an issue first to discuss changes.

---

## 📄 License
MIT — see [LICENSE](./LICENSE).

---

## 🌍 Other Languages
- [🇰🇷 한국어 README](./README.md)
