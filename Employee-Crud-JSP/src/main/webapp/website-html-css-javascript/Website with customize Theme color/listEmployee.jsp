<%@ page import="java.util.*, java.sql.*" %>
<%@ page import="EmpInfo.*" %>
<%
    List<Employee> employeeList = EmployeeDAO.getAllEmployees();
    request.setAttribute("employees", employeeList);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" href="styles.css"> <%-- Make sure this points to your CSS file --%>
    <style>
        body {
            background: var(--light-bg);
            padding-top: 80px;
            font-family: 'Poppins', sans-serif;
        }

        .container {
            max-width: 1000px;
            margin: auto;
            padding: 20px;
            background: var(--white);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: var(--black);
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: var(--nav-main);
            color: var(--white);
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .action-btn {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 5px;
            margin-right: 5px;
            font-size: 14px;
        }

        .edit-btn {
            background-color: #3A9943;
            color: white;
        }

        .delete-btn {
            background-color: #c0392b;
            color: white;
        }

        .edit-btn:hover {
            background-color: #2d7742;
        }

        .delete-btn:hover {
            background-color: #a52a2a;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav>
        <!-- <div class="navbar">
            <a href="#">Employee Portal</a>
            <ul class="nav-links">
                <li><a href="addEmployee.jsp">Add Employee</a></li>
                <li><a href="listEmployee.jsp">View Employees</a></li>
            </ul>
            <div class="appearance">
                <div class="light-dark"><i class="fa fa-moon"></i></div>
            </div>
        </div> -->
    </nav>

    <div class="container">
        <h2>Employee List</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Actions</th>
            </tr>
            <%
                for (Employee e : employeeList) {
            %>
            <tr>
                <td><%= e.getId() %></td>
                <td><%= e.getName() %></td>
                <td><%= e.getSalary() %></td>
                <td>
                    <a href="updateEmployee.jsp?id=<%= e.getId() %>" class="action-btn edit-btn">Edit</a>
                    <a href="deleteEmployee.jsp?id=<%= e.getId() %>" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>

</body>
</html>
