package com.Administration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Connection_DB {

    private static Connection_DB dbConnection;

    private Connection connection;

    public Connection_DB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
            
            Statement sm = connection.createStatement();
       

        } catch (SQLException ex) {
            Logger.getLogger(Connection_DB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connection_DB.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Connection_DB getInstance() {
        if (dbConnection == null) {
            dbConnection = new Connection_DB();
        }
        return dbConnection;
    }

    public Connection getConnection() {
        return connection;
    }

    public Connection getCon() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
