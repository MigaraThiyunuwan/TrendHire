
package com.classes;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnector {

    final static String URL = "jdbc:mysql://localhost:3306/trendhire"; 
    final static String DB_USER = "root";
    final static String DB_PASSWORD = "";
    final static String DRIVER = "com.mysql.jdbc.Driver";
    static Connection con;

    public static Connection getCon() {
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
}

