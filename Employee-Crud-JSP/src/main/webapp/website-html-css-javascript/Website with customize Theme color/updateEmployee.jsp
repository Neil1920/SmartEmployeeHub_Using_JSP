<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="EmpInfo.*" %>
<jsp:useBean id="updateEmployee" class="EmpInfo.Employee" scope="request" />
<jsp:setProperty name="updateEmployee" property="*" />

<%
    int id = Integer.parseInt(request.getParameter("id"));

    for (Employee e : EmployeeDAO.getAllEmployees()) {
        if (e.getId() == id) {
            request.setAttribute("updateEmployee", e);
            break;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <link rel="stylesheet" href="your-styles.css"> <!-- Replace with your actual CSS file path -->
    <style>
        body {
            background: var(--light-bg);
            padding-top: 90px;
            font-family: 'Poppins', sans-serif;
        }

        .form-container {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: var(--nav-main);
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 500;
            margin-bottom: 6px;
            color: var(--black);
        }

        .form-group input[type="text"],
        .form-group input[type="number"] {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        .form-group button {
            background: var(--nav-main);
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
            width: 100%;
        }

        .form-group button:hover {
            background: var(--switchers-main);
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Update Employee</h2>
    <form action="updateEmployee.jsp" method="post">
        <input type="hidden" name="id" value="<jsp:getProperty name='updateEmployee' property='id' />">

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<jsp:getProperty name='updateEmployee' property='name' />" required>
        </div>

        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="text" id="salary" name="salary" value="<jsp:getProperty name='updateEmployee' property='salary' />" required>
        </div>

        <div class="form-group">
    <button type="submit" style="background-color: #007BFF; color: white; border: none; padding: 12px 20px; font-size: 16px; border-radius: 6px; cursor: pointer;">
        Save and Go Back
    </button>
</div>
    </form>
</div>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        EmployeeDAO.updateEmployee(updateEmployee);
        response.sendRedirect("listEmployee.jsp");
    }
%>

</body>
</html>
