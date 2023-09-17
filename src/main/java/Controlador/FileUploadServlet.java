
package Controlador;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;

@WebServlet("/upload")
@MultipartConfig
public class FileUploadServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String jdbcURL = "jdbc:mysql://localhost:3306/agroagca";
        String dbUser = "root";
        String dbPassword = "admin";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Part cedulaPart = request.getPart("cedula");
            Part rutPart = request.getPart("rut");

            // Establecer una conexión a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Consulta SQL para insertar el archivo de cédula en la base de datos
            if (cedulaPart != null) {
                InputStream cedulaContent = cedulaPart.getInputStream();
                String cedulaSql = "INSERT INTO documentos_natural_person_buyer (nombre, archivo) VALUES (?, ?)";
                preparedStatement = connection.prepareStatement(cedulaSql);
                preparedStatement.setString(1, cedulaPart.getSubmittedFileName());
                preparedStatement.setBinaryStream(2, cedulaContent);
                preparedStatement.executeUpdate();
            }

            // Consulta SQL para insertar el archivo de Rut en la base de datos
            if (rutPart != null) {
                InputStream rutContent = rutPart.getInputStream();
                String rutSql = "INSERT INTO documentos_natural_person_buyer (nombre, archivo) VALUES (?, ?)";
                preparedStatement = connection.prepareStatement(rutSql);
                preparedStatement.setString(1, rutPart.getSubmittedFileName());
                preparedStatement.setBinaryStream(2, rutContent);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException | ClassNotFoundException | IOException e) {
            // Manejo de errores
            e.printStackTrace();
        } finally {
            // Cerrar conexiones y recursos
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        boolean errorDuringUpload = false;

        try {
            // Lógica para procesar la carga del archivo y validar
            // Si ocurre un error, establecer errorDuringUpload en true
            // ...
        } catch (Exception e) {
            errorDuringUpload = true;
        }

        // Establecer la variable errorDuringUpload como atributo de solicitud
        request.setAttribute("errorDuringUpload", errorDuringUpload);

        // Redirigir de nuevo a la página de carga
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Componentes/upload_modalNPB.jsp");
        dispatcher.forward(request, response);
    }
}
