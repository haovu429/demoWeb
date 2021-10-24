package com.haovu.utils;

import java.sql.*;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.naming.Context;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;


public class ConnectionPool {

    private Connection con;
    private static ConnectionPool pool = null;
    private static DataSource dataSource = null;

    private ConnectionPool() {
        try {
            System.out.println("Da vao khoi tao Pool");

            Hashtable env = new Hashtable();
            env.put(Context.INITIAL_CONTEXT_FACTORY, "java:/comp/");
            /*SimpleNamingContextBuilder builder = new SimpleNamingContextBuilder();
            builder.bind("jdbc/Oracle", ods);
            builder.activate();*/
            Context ic = new InitialContext(env);
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
            con = C3p0DataSource.getConnection("Ket noi pool");
            return con;
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
