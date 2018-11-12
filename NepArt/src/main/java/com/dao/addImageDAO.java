package com.dao;



import java.sql.DriverManager;
import java.sql.PreparedStatement;



import com.mysql.jdbc.Connection;
import com.modal.Image;;


public class addImageDAO {

	
	public static Image setinfo(Image ui) {
    	PreparedStatement pstmt = null;
    	
    	String title=ui.getTitle();
    	String category=ui.getCategory();
    	String description=ui.getDescription();
    	String path=ui.getPath();
    	int id=ui.getArtist_id();
    	String price=ui.getPrice();
    	  try {
              Class.forName("com.mysql.jdbc.Driver");
              System.out.println("driver loaded");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");


              String query="insert into image(artist_id, title, category, description, path,price)"+" VALUES(?,?,?,?,?,?)";
              pstmt = con.prepareStatement(query);
              pstmt.setInt(1, id);
              pstmt.setString(2, title);
              pstmt.setString(3, category);
              pstmt.setString(4,description);
              pstmt.setString(5, path);
              pstmt.setString(6, price);
              
              pstmt.executeUpdate();
    	  }
    	  catch(Exception e) {
    		  System.out.println("Unable to connect to database"+e);
    	  }
    	return ui;
	
	}
}
