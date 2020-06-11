package com.tools;

import java.sql.*;
/*
 * 数据库连接
 */
public class ConnDB {
	 private static String driver="com.mysql.cj.jdbc.Driver";
     private String url="jdbc:mysql://localhost:3306/shop?&useSSL=false&serverTimezone=UTC";
     private String user="root";
     private String password="tnn444";
     private static Connection con = null;
     private static Statement stmt = null;
        
     public ConnDB() {
        try {
            //注册JDBC驱动程序
            Class.forName(driver);
            //建立连接
            con = DriverManager.getConnection(url, user, password);
            if (!con.isClosed()) {
                System.out.println("数据库连接成功");
            }
            stmt = con.createStatement();
            String sql;
            sql="select * from information";
            ResultSet ret =stmt.executeQuery(sql);
            while (ret.next()) {
                String userName = ret.getString("userName");
                String passWord = ret.getString("passWord");
                System.out.println("username:   " + userName + "   password:   " + passWord );
            }
        } catch (ClassNotFoundException e) {
            System.out.println("数据库驱动没有安装");

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }
    }

    public int executeUpdate(String s) {
        int result = 0;
        System.out.println("--更新语句:"+s+"\n");
        try {
            result = stmt.executeUpdate(s);
        } catch (Exception ex) {
            System.out.println("执行更新错误！");
        }
        return result;
    }

    public ResultSet executeQuery(String s) {
        ResultSet rs = null;
        System.out.print("--查询语句:"+s+"\n");
        try {
            rs = stmt.executeQuery(s);
        } catch (Exception ex) {
        	ex.printStackTrace();
        }
        return rs;
    }
    public void execQuery(String s){
        try {
            stmt.executeUpdate(s);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
        	e.printStackTrace();
            System.out.println("执行插入错误！");
        }
    }

    public void close() {
        try {
            stmt.close();
            con.close();
        } catch (Exception e) {
        }
    }
    
}
