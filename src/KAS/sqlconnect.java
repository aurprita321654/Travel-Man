
package KAS;
import java.sql.*;


public class sqlconnect {
    Connection conn=null;
    public static Connection ConnectDB() {
        String url = "jdbc:sqlserver://localhost:1433;databaseName=AR";
        String user = "sa";
        String password = "123456";
        Connection con = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Connection established successfully.");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
