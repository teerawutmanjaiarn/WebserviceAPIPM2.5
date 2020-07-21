/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pm2.pkg5.api;

import java.sql.*;
public class Conection {

    static Connection conn = null;
    static String base_URL = "jdbc:mysql://";
    static String server = "localhost";
    static String db = "pm2.5";
    static String u = "root";
    static String p = "12345678";

    public static Connection getConnection() {
        try {
            String con_string = base_URL + server + "/" + db;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(con_string, u, p);
            System.out.println("Connect Success");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
