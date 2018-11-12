package com.dao;



import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.modal.Image;


public class getEditFieldDAO {

	
	public static Image getData(Image img) {
    	
    	int id=img.getImage_id();
    	
    	
    	  try {
              Class.forName("com.mysql.jdbc.Driver");
              System.out.println("driver loaded");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");
              Statement st = con.createStatement();

              String query="select * from artist INNER JOIN image ON artist.artist_id = image.artist_id WHERE image.image_id="+"'"+id+"'";
              ResultSet rs=st.executeQuery(query);
              while(rs.next())
              {
            	  img.setImage_id(rs.getInt("image_id"));
            	  img.setPath(rs.getString("path"));
            	  img.setDescription(rs.getString("description"));
            	  img.setTitle(rs.getString("title"));
            	  img.setCategory(rs.getString("category"));
            	  img.setPrice(rs.getString("price"));
            	  img.setArtistname(rs.getString("fullname"));
              }
    	  
    	  }
    	  catch(Exception e) {
    		  System.out.println("Unable to connect to database"+e);
    	  }
    	return img;
	
	}

	
}
