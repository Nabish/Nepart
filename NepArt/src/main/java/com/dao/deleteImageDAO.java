package com.dao;



import java.sql.DriverManager;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.modal.Image;


public class deleteImageDAO {

	
	public static Image delete(Image img) {
    	
    	int id=img.getImage_id();
    	
    	
    	  try {
              Class.forName("com.mysql.jdbc.Driver");
              System.out.println("driver loaded");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
              Statement st = con.createStatement();

              String query="DELETE FROM image WHERE image_id="+id;
              st.executeUpdate(query);
    	  }
    	  catch(Exception e) {
    		  System.out.println("Unable to connect to database"+e);
    	  }
    	return img;
	
	}

	
}
