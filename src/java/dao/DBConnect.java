package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnect {

    public static Connection getConnecttion() {
        Connection cons = null;
        try {
             Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
             cons=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=cnpm;username=sa;password=emsehanhphuc");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }

    public static void main(String[] args) {
        System.out.println(getConnecttion());
    }

}
