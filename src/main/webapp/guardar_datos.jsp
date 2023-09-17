<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    
    String url = "URL_agroagca"; 
    String usuario = "root"; 
    String contraseña = "admin"; 
    Connection connection = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, usuario, contraseña);

        
        String firstName = request.getParameter("nombre");
        String lastName = request.getParameter("apellido");
     

       
        String sql = "INSERT INTO NaturalPersonRegBuyer (first_name, last_name, document_type, document_number, address, contact_phone, email, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, firstName);
        preparedStatement.setString(2, lastName);
        
        int filasAfectadas = preparedStatement.executeUpdate();

        if (filasAfectadas > 0) {
            
            out.println("Los datos se han guardado correctamente en la base de datos.");
        } else {
            
            out.println("Error al guardar los datos en la base de datos.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
