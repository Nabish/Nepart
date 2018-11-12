package com.dao;



import java.sql.DriverManager;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.modal.Image;


public class editDescriptionDAO {

	
	public static Image editinfo(Image img) {
    	String title=img.getTitle();
    	String description=img.getDescription();
    	int id=img.getImage_id();
    	System.out.println(title);
    	
    	  try {
              Class.forName("com.mysql.jdbc.Driver");
              System.out.println("driver loaded");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
              Statement st = con.createStatement();

              String query="UPDATE image SET description="+"'"+description+"'"+" , title="+ "'" +title+"'"+" WHERE image_id="+id;
              st.executeUpdate(query);
    	  }
    	  catch(Exception e) {
    		  System.out.println("Unable to connect to database"+e);
    	  }
    	return img;
	
	}

	
}
