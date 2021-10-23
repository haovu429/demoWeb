package com.haovu.utils;

import java.sql.*;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class ConnectionPool {

    private static ConnectionPool pool = null;
    private static DataSource dataSource = null;

    private ConnectionPool() {
        try {
            System.out.println("Da vao khoi tao Pool");
            InitialContext ic = new InitialContext();
            dataSource = (DataSource)
                    ic.lookup("java:/comp/env/jdbc/heroku_1c11f491448b1cd");
        } catch (NamingException e) {
            System.out.println(e);
        }
    }
    public static synchronized ConnectionPool getInstance() {
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }

    public Connection getConnection() {
        try {
            System.out.println("Da chay vao get con");
            return dataSource.getConnection();
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

    public void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
