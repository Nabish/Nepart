package com.dao;
import java.sql.*;

import com.mysql.jdbc.Connection;
import com.modal.contact;
public class contactUsDAO {

    public static contact setinfo (contact contact) {
    	PreparedStatement pstmt = null;
    	//int id=c.getC_id();
    	String name=contact.getName();
    	String email=contact.getEmail();
    	String phone=contact.getPhone();
    	String message=contact.getMessage();
    

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("driver loaded");

            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
            System.out.println("connection success");

            String query="insert into contactus(name,email,phone,message)"+" VALUES(?,?,?,?)";
            pstmt = con.prepareStatement(query);
           
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, phone);
            pstmt.setString(4, message);
            pstmt.executeUpdate();

            }

        
        catch(Exception ex)
        {
            System.out.println("Unable to connect to database."+ex);
        }
        return contact;
    }
    	
}
