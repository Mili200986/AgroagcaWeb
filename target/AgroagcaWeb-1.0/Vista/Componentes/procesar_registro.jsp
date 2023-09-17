<%-- 
    Document   : procesar_registro
    Created on : 16/09/2023, 8:39:55 p. m.
    Author     : USER
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Procesamiento de Registro</title>
</head>
<body>
    <h1>Procesamiento de Registro</h1>
    
    <%-- Obtener los parámetros enviados desde el formulario --%>
    <% String username = request.getParameter("username"); %>
    <% String password = request.getParameter("password"); %>
    <% String confirmPassword = request.getParameter("confirmPassword"); %>

    <%-- Validar los datos (puedes agregar tu lógica de validación aquí) --%>
    <% boolean isValid = true; %>
    <% if (!password.equals(confirmPassword)) { %>
        <% isValid = false; %>
    <% } %>

    <%-- Si los datos son válidos, realiza alguna acción (por ejemplo, almacenar en la base de datos) --%>
    <% if (isValid) { %>
        <p>Registro exitoso para el usuario: <%= username %></p>
        <%-- Aquí puedes agregar la lógica para almacenar en la base de datos, enviar un correo electrónico, etc. --%>
    <% } else { %>
        <p>Error: Las contraseñas no coinciden.</p>
        <%-- Aquí puedes mostrar un mensaje de error o redirigir al usuario al formulario de registro --%>
    <% } %>

    <p><a href="Register.jsp">Volver al registro</a></p>
</body>
</html>

