package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.modal.Image;
public class ArtistImageDAO {
	public List<Image> getImageList(int id) {
		
		List<Image> imageList = new ArrayList<Image>();

		Connection connection = null;
		System.out.println(id);
		try {

			// Loading Driver Class
			Class.forName("com.mysql.jdbc.Driver");

			// Getting the Connection
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");

			Statement statement = connection.createStatement();
			
						
			ResultSet rs = statement.executeQuery("SELECT * FROM image where artist_id="+id);
			
			while (rs.next()) {

				// Defining Event Object
				Image img=new Image();

				img.setImage_id(rs.getInt("image_id"));
				img.setPath(rs.getString("path"));
				img.setTitle(rs.getString("title"));
				img.setDescription(rs.getString("description"));

				// Adding the Event Object to List
				imageList.add(img);
			}

			// Closing the Resources
			rs.close();
			statement.close();
			connection.close();

		} catch (SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		}

		return imageList;
	}
		
		
}