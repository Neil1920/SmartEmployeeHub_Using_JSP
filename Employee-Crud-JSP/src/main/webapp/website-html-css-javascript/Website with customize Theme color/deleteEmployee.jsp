<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="EmpInfo.EmployeeDAO, java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
    <link rel="stylesheet" href="your-styles.css"> <!-- Replace with actual CSS file path -->
    <style>
        body {
            background: var(--light-bg);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Poppins', sans-serif;
        }

        .message-box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            max-width: 500px;
            text-align: center;
        }

        .message-box h2 {
            font-size: 24px;
            color: var(--nav-main);
            margin-bottom: 15px;
        }

        .message-box p {
            font-size: 16px;
            color: var(--black);
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="message-box">
<%
    String idParam = request.getParameter("id");

    if (idParam != null && !idParam.isEmpty()) {
        try {
            int id = Integer.parseInt(idParam);

            // Delete employee record
            EmployeeDAO.deleteEmployee(id);
%>
            <h2 class="success" style="color: green;">Employee Deleted Successfully</h2>
            <p>Redirecting to employee list...</p>
            <script>
                setTimeout(function() {
                    window.location.href = 'listEmployee.jsp';
                }, 2000);
            </script>
<%
        } catch (NumberFormatException e) {
%>
            <h2 class="error">Invalid Employee ID</h2>
            <p>Please check the ID format and try again.</p>
<%
        } catch (SQLException e) {
%>
            <h2 class="error">Deletion Failed</h2>
            <p>Error: <%= e.getMessage() %></p>
<%
        }
    } else {
%>
        <h2 class="error">Missing Employee ID</h2>
        <p>Employee ID is required for deletion.</p>
<%
    }
%>
</div>

</body>
</html>
