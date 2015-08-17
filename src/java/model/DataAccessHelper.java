/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hainam1421
 */
public class DataAccessHelper {
    private Connection con;
    private final String HostName = "localhost";
    private final String port = "1433";
    private final String dbName = "OnlineShopForDVD";
    private final String use = "sa";
    private final String pass = "123456";
    private final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
    private final String URL = "jdbc:sqlserver://" + HostName + ":" + port + ";database=" + dbName;
    
   protected void driverTest() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (java.lang.ClassNotFoundException e) {
            throw new Exception("JDBC Driver not found!");
        }
    }

    protected Connection getConnection() throws Exception {
        if (this.con == null) {
            driverTest();

            try {
                this.con = DriverManager.getConnection(URL, use, pass);
            } catch (SQLException e) {
                throw new Exception("Can not connect to DataBase Server: " + URL + e.getMessage());
            }
        }
        return this.con;
    }
    
    protected void getClose(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccessHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
