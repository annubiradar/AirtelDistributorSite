"# My Project" 
# 📌 Airtel Distributor Site

An online distributor management system for Airtel services, built using **Java (Servlets + JSP), MySQL, JDBC, and Tomcat 9**.  
The system allows admins to manage broadband, DTH, and recharge plans, while customers can submit service requests.

---

## 🚀 Features
- **Admin Panel**
  - Login system for admin.
  - Add / Manage Broadband, DTH, and Recharge Plans.
  - View customer service requests.

- **Customer Side**
  - Browse available broadband, DTH, and recharge plans.
  - Submit service requests online.
  - Mobile-responsive design.

---

## 🛠️ Tech Stack
- **Frontend:** JSP, HTML5, CSS3, Bootstrap (responsive UI)
- **Backend:** Java Servlets, JDBC
- **Database:** MySQL (Workbench)
- **Server:** Apache Tomcat 9
- **IDE:** Eclipse Dynamic Web Project

---

## 📂 Project Structure
```
AirtelDistributorSite/
 ├── src/
 │   └── com.airtel.servlet/    # Servlets
 │   └── com.airtel.dao/        # Database DAO classes
 │   └── com.airtel.model/      # Java Models
 ├── WebContent/
 │   ├── admin/                 # Admin JSP pages
 │   ├── customer/              # Customer JSP pages
 │   ├── index.jsp              # Homepage
 │   └── WEB-INF/               # web.xml, lib/
 ├── README.md
```

---

## ⚡ How to Run
1. Clone the repo:
   ```bash
   git clone https://github.com/YOUR_USERNAME/AirtelDistributorSite.git
   ```
2. Import as **Dynamic Web Project** in Eclipse.
3. Configure **Tomcat 9** in Eclipse.
4. Update `DBUtil.java` with your MySQL username & password.
5. Run project on server.
6. Access site:
   - Homepage → `http://localhost:8080/AirtelDistributorSite/`
   - Admin Login → `http://localhost:8080/AirtelDistributorSite/admin/login.jsp`

---

## 📸 Screenshots (Optional)
(Add screenshots of your homepage, admin dashboard, etc.)

---

## ✨ Future Enhancements
- Implement JWT authentication for admin.
- Add payment gateway for recharge.
- Improve UI with React or Angular frontend.
- Deploy on cloud (AWS / Azure / Heroku).
