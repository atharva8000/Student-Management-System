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

        .register-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        .register-container h2 {
            color: white;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .register-container input[type="text"],
        .register-container input[type="password"],
        .register-container input[type="file"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            outline: none;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        .register-container input[type="submit"] {
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

        .register-container input[type="submit"]:hover {
            background-color: #7340a3;
        }

        /* Styling the file input to match the design */
        .register-container input[type="file"] {
            background-color: transparent;
            color: white;
            cursor: pointer;
        }

        .register-container input[type="file"]::-webkit-file-upload-button {
            background-color: #5a2d82;
            color: white;
            border: none;
            border-radius: 25px;
            padding: 10px;
            cursor: pointer;
        }

        .register-container input[type="file"]::-webkit-file-upload-button:hover {
            background-color: #7340a3;
        }
    </style>
</head>
<body>
 <div class="register-container">
        <h2>Register</h2>
        <form action="save" method="post" enctype="multipart/form-data">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="file" name="image" required>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>