<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="newEmployee" class="EmpInfo.Employee" scope="request" />
<jsp:setProperty name="newEmployee" property="*" />
<%@ page import="EmpInfo.*" %>

<html>
<head>
    <title>Add Employee</title>

    <!-- Google Font and External CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #F0F8FF;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            width: 400px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #24292d;
            font-size: 24px;
            text-align: center;
        }

        .form-container label {
            font-size: 16px;
            display: block;
            margin: 12px 0 6px;
            color: #24292d;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        .form-container input[type="submit"] {
            margin-top: 20px;
            background: #4070f4;
            color: #fff;
            font-size: 18px;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
        }

        .form-container input[type="submit"]:hover {
            background: #0b3cc1;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add Employee</h2>
    <form action="addEmployee.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required>

        <label for="salary">Salary:</label>
        <input type="text" name="salary" required>

        <input type="submit" value="Add Employee">
    </form>
</div>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        EmployeeDAO.addEmployee(newEmployee);
        response.sendRedirect("listEmployee.jsp");
    }
%>

</body>
</html>
