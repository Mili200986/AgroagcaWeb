<%@page import="Controlador.DatabaseConnection"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultados de Búsqueda de Proveedores</title>
    <style>
        /* Tus estilos CSS originales aquí */
        body {
            background-color: gray;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        body {
    margin: 0;
    padding: 20;
    background-color:gray;
    font-family: "Cascade mono", sans-serif;
  }
  .container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 50px;
  }
  .result-row {
    display: flex;
    margin-bottom: 20px;
  }
  .column {
    flex: 1;
    padding: 10px;
    background-color: rgb(216, 235, 240);
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  .profile-image {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    object-fit: cover;
  }
  .contact-icons {
    display: flex;
    align-items: center;
    margin-top: 10px;
  }
  .contact-icon {
    width: 20px;
    margin-right: 10px;
  }

  .button-container {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
  }
  .button {
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
  }
  .button.red {
    background-color: #e74c3c;
    color: #fff;
  }
  .button.green {
    background-color: #2ecc71;
    color: #fff;
  }
    .imagen {
      position: absolute;
      top: 0;
      right: 50px;
      width: 210px;
      height: 210px;
    }
    </style>
</head>
<body>
    <img class="imagen" src="imagenes/logo.png" alt="logo" />

    <h1>Resultados de Búsqueda de Proveedores</h1>

    <%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Obtener una conexión a la base de datos
            conn = DatabaseConnection.getConnection();

            // Consulta SQL para obtener información de los proveedores (limitada a 5 resultados)
            String sql = "SELECT nombre, telefono, correo, imagen_perfil FROM proveedores LIMIT 5";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String nombre = rs.getString("nombre");
                String telefono = rs.getString("telefono");
                String correo = rs.getString("correo");
                String imagenPerfil = rs.getString("imagen_perfil");

    %>
                <div>
                    <h2><%= nombre %></h2>
                    <p>Teléfono: <%= telefono %></p>
                    <p>Correo: <%= correo %></p>
                    <img src="<%= imagenPerfil %>" alt="<%= nombre %>">
                </div>
    <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                DatabaseConnection.closeConnection(conn);
            }
        }
    %>

    <!-- Botón para volver atrás -->
    <form action="StartPage.jsp" method="post">
        <input type="submit" value="Volver a la Página de Inicio">
    </form>
    
    <!-- Logos de contacto -->
    <img src="imagenes/telefono.png" alt="Teléfono">
    <img src="imagenes/whatsapp_icon.png" alt="WhatsApp">
    <img src="imagenes/correo.png" alt="Correo">
</body>
</html>
