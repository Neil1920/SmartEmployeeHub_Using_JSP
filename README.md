# Employee Record System

📌 **Project Overview**  
The Employee Record System is a dynamic web-based application that enables users to manage employee data effectively through Create, Read, Update, and Delete (CRUD) operations. Built using JSP and Java, this system simplifies data handling and improves administrative efficiency for small to medium-scale enterprises.

---

🚀 **Features**

**User Functionalities**  
- **View Employee List**: Display all employees in a tabular format.  
- **Add Employee**: Add new employee details.  
- **Edit Employee**: Update employee information.  
- **Delete Employee**: Remove employee from the system with confirmation.  

**Admin Functionalities**  
- Full control over employee data using CRUD operations.  
- Clean and user-friendly interface for easy navigation.

---

🛠️ **Technologies Used**

- **Frontend**: HTML5, CSS3 (Custom styling)
- **Backend**: JSP, Java Servlets
- **Database**: MySQL
- **JDBC**: Java Database Connectivity
- **Server**: Apache Tomcat
- **IDE**: Eclipse

---

📁 **Project Structure**

```
Employee-Crud-JSP/
├── src/
│   ├── EmpInfo/
│   │   ├── Employee.java
│   │   ├── EmployeeDAO.java
├── WebContent/
│   ├── addEmployee.jsp
│   ├── listEmployee.jsp
│   ├── updateEmployee.jsp
│   ├── deleteEmployee.jsp
│   ├── styles.css
├── WEB-INF/
│   ├── web.xml
├── README.md
```

---

🗄️ **Database Schema**

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    salary DOUBLE NOT NULL
);
```

---

🎯 **Usage Guide**

**User Workflow**  
- Navigate to `listEmployee.jsp` to view all employee records.  
- Click on "Add Employee" to input new details.  
- Use "Edit" to modify existing employee information.  
- Use "Delete" to remove an employee.

---

📌 **Project Highlights**

- Built using MVC principles.
- Lightweight and simple architecture.
- Easily extendable to include advanced features like authentication, file uploads, and department modules.

---

## 📸 Screenshots


- <img src = "output screenshots/1.png" alt = "1 image">
- <img src = "output screenshots/2.png" alt = "2 image">
- <img src = "output screenshots/3.png" alt = "3 image">
- <img src = "output screenshots/4.png" alt = "4 image">
- <img src = "output screenshots/5.png" alt = "5 image">
- <img src = "output screenshots/6.png" alt = "6 image">
- <img src = "output screenshots/7.png" alt = "7 image">
- <img src = "output screenshots/8.png" alt = "8 image">

---

