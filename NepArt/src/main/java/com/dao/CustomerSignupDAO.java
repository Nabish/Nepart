package com.dao;
import java.sql.*;

import com.mysql.jdbc.Connection;
import com.modal.Customer;
public class CustomerSignupDAO {

    public static Customer setinfo(Customer c) {
    	PreparedStatement pstmt = null;
    	//int id=c.getC_id();
    	String fullname=c.getFullname();
    	String username=c.getUsername();
    	String password=c.getPassword();
    	String email=c.getEmail();
    	String phone=c.getPhone();
    	String address=c.getAddress();
    	String gender=c.getGender();
    	   

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("driver loaded");

            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
            System.out.println("connection success");

            String query="insert into Customer(fullname, username,address, phone, gender, email ,password)"+" VALUES(?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(query);
           
            pstmt.setString(1, fullname);
            pstmt.setString(2, username);
            pstmt.setString(3, address);
            pstmt.setString(4, phone);
            pstmt.setString(5, gender);
            pstmt.setString(6, email);
            pstmt.setString(7, password);
            pstmt.executeUpdate();

            }

        
        catch(Exception ex)
        {
            System.out.println("Unable to connect to database."+ex);
        }
        return c;
    }
    	
}
