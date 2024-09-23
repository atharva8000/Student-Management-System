<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #6e46b6, #b6479d);
            font-family: Arial, sans-serif;
        }

        .update-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        .update-container h2 {
            color: white;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .update-container input[type="text"],
        .update-container input[type="password"],
        .update-container input[type="file"] {
            width: 60%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            outline: none;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        .update-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 25px;
            background-color: #5a2d82;
            color: white;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }

        .update-container input[type="submit"]:hover {
            background-color: #7340a3;
        }

        /* Styling the file input to match the design */
        .update-container input[type="file"] {
            background-color: transparent;
            color: white;
            cursor: pointer;
        }

        .update-container input[type="file"]::-webkit-file-upload-button {
            background-color: #5a2d82;
            color: white;
            border: none;
            border-radius: 25px;
            padding: 10px;
            cursor: pointer;
        }

        .update-container input[type="file"]::-webkit-file-upload-button:hover {
            background-color: #7340a3;
        }

        .update-container pre {
            text-align: left;
            font-size: 16px;
            color: white;
        }

    </style>
</head>
<body>
 <div class="update-container">
        <h2>Update Student Information</h2>
        <form action="update">
            <input type="hidden" name="rollno" value="${stu.rollno}">
            <pre>
Name:      <input type="text" name="name" value="${stu.name}">
Username:  <input type="text" name="username" value="${stu.username}">
Password:  <input type="text" name="password" value="${stu.password}">
Image:     <input type="file" name="image">
            </pre>
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>