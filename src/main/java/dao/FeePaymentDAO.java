package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class FeePaymentDAO {

    public Connection getConnect() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/collegefee",
            "root",
            "AmNa@@2606"
        );

        return con;
    }
}