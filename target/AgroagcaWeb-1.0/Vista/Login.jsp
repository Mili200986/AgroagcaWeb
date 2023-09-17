<%-- 
    Document   : Login
    Created on : 9/09/2023, 12:04:34 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f0f0f0; 
            text-align: center; 
        }

        .imagen {
            position: absolute;
            top: 0;
            right: 50px;
        }

        h1 {
            font-family: 'Cascadia Mono', monospace;
            font-size: 95px;
        }

        input[type="text"],
        input[type="password"] {
            width: 300px;
            height: 50px; 
            margin: 10px; 
            border-radius: 10px; 
        }

        .username,
        .password {
            margin: 20px auto; 
            max-width: 400px; 
            font-size: 20px; 
            position: relative; 
        }

        .password .toggle-password {
            position: absolute;
            top: 50%; 
            right: 10px; 
            cursor: pointer;
            font-size: 24px; 
            color: #333; 
        }

        .get-into,
        .back {
            margin-top: 20px; 
        }

        .get-into button,
        .back button {
            background-color: green; 
            border-color: green; 
            color: white; 
            padding: 15px 30px; 
            font-size: 20px; 
            cursor: pointer;
            border-radius: 10px; 
        }

        .back {
            position: absolute;
            bottom: 10px;
            left: 10px; 
        }
    </style>
</head>

<body>
    <img class="imagen" src="imagenes/logo.png" alt="logo">

    <h1>LOGIN</h1>

    <form action="procesar_login.jsp" method="post"> 

        <div class="username">
            <h2>Username</h2>
            <input type="text" name="username">
        </div>

        <div class="password">
            <h2>Password</h2>
            <input type="password" name="password" style="height: 50px;"> 
            <i class="toggle-password fas fa-eye" id="togglePassword"></i>
        </div>

        <div class="get-into">
            <button type="submit" formaction="procesar_login.jsp"><strong>Get Into!</strong></button> 
        </div>

    </form>

    <form action="botones.jsp" method="post"> 
        <div class="back">
            <button type="submit" style="background-color: red; border-color: blue; color: white; padding: 15px 30px; font-size: 20px; border-radius: 10px;"><strong>Return</strong></button>
        </div>
    </form>

    <script>
        var passwordInput = document.querySelector('input[type="password"]');
        var togglePassword = document.getElementById('togglePassword');
        togglePassword.addEventListener('click', function () {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                togglePassword.classList.remove('fa-eye');
                togglePassword.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                togglePassword.classList.remove('fa-eye-slash');
                togglePassword.classList.add('fa-eye');
            }
        });
    </script>
</body>

</html>



