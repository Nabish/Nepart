package com.modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class ConnectionFactory {
    Connection con;
    Statement stmt;
    ResultSet rs;
    boolean flag=false;
    
    public ConnectionFactory(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/NepArt";
            con=DriverManager.getConnection(url,"root","nabish");
            stmt=con.createStatement();
            System.out.println(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public Connection getConnection(){
       try{ Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/NepArt";
            con=DriverManager.getConnection(url,"root","nabish");
       }
       catch(Exception e){
           e.printStackTrace();
       }
       return con;
       }
}
