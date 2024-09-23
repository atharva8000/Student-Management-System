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

        .login-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        .login-container h2 {
            color: white;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            outline: none;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        .login-container input[type="submit"] {
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

        .login-container input[type="submit"]:hover {
            background-color: #7340a3;
        }

        .login-container a {
            color: white;
            display: block;
            margin-top: 15px;
            font-size: 14px;
            text-decoration: none;
        }

        .login-container a:hover {
            text-decoration: underline;
        }

        .login-container .remember-me {
            color: white;
            display: flex;
            justify-content: start;
            align-items: center;
        }

        .login-container .remember-me input[type="checkbox"] {
            margin-right: 5px;
        }
    </style>
</head>
<body>
 <div class="login-container">
        <h2>Login</h2>
        <form action="login">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <div class="remember-me">
                <input type="checkbox" name="remember">Remember me
            </div>
            <input type="submit" value="Login">
            <a href="preregister">Don't have an account? Register</a>
        </form>
    </div>
</body>
</html>