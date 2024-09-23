<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
        }

        th {
            background-color: #6e46b6;
            color: white;
            font-size: 16px;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        td img {
            border-radius: 8px;
        }

        a {
            text-decoration: none;
            color: white;
        }

        .action-btn {
            display: inline-block;
            background-color: #6e46b6;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-btn:hover {
            background-color: #5a2d82;
        }

        .pagination {
            margin-top: 20px;
            text-align: center;
        }

        .pagination a {
            display: inline-block;
            background-color: #6e46b6;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            margin: 0 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .pagination a:hover {
            background-color: #5a2d82;
        }

        .table-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
 <div>
        <div class="table-title">Student Data</div>

        <table>
            <tr>
                <th>Rollno</th>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>

            <c:forEach items="${data}" var="s">
                <tr>
                    <td>${s.rollno}</td>
                    <td>${s.name}</td>
                    <td>${s.username}</td>
                    <td>${s.password}</td>
                    <td><img alt="file not found" src="data:image/jpg;base64,${s.photo}" width="100px" height="100px"></td>
                    <td>
                        <a href="delete?rollno=${s.rollno}" class="action-btn">Delete</a>  <a href="edit?rollno=${s.rollno}" class="action-btn">Edit</a>
                        
                    </td>
                </tr>
            </c:forEach>
        </table>

        <div class="pagination">
            <a href="paging?pageNo=0">1</a>
            <a href="paging?pageNo=1">2</a>
            <a href="paging?pageNo=2">3</a>
        </div>
    </div>
</body>    
</html>