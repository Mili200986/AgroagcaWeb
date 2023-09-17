
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/agroagca";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "admin";

    // Método para establecer la conexión a la base de datos
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Error al cargar el controlador JDBC", e);
        }
    }

    // Método para cerrar la conexión a la base de datos
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}


