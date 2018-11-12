package com.dao;
import java.sql.*;

import com.mysql.jdbc.Connection;
import com.modal.Artist;
public class ArtistSignupDAO {

    public static Artist setinfo(Artist artist) {
    	PreparedStatement pstmt = null;
    	//int id=c.getC_id();
    	String fullname=artist.getFullname();
    	String username=artist.getUsername();
    	String address=artist.getAddress();
    	String phone=artist.getPhone();
      	String gender=artist.getGender();
      	String email=artist.getEmail();
    	String password=artist.getPassword();
    	String aboutyourself=artist.getAboutyourself();
   

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("driver loaded");

            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
            System.out.println("connection success");

            String query="insert into Artist(fullname, username,address,phone,gender,email,password,aboutyourself)"+" VALUES(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(query);
           
            pstmt.setString(1, fullname);
            pstmt.setString(2, username);
            pstmt.setString(3, address);
            pstmt.setString(4, phone);
            pstmt.setString(5, gender);
            pstmt.setString(6, email);
            pstmt.setString(7, password);
            pstmt.setString(8, aboutyourself);
            pstmt.executeUpdate();

            }

        
        catch(Exception ex)
        {
            System.out.println("Unable to connect to database."+ex);
        }
        return artist;
    }
    	
}
