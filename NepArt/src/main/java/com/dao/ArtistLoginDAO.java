package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


import com.modal.Artist;
public class ArtistLoginDAO {

    public static Artist getArtist(Artist artist) {

    	String username=artist.getUsername();
    	String password=artist.getPassword();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("driver loaded");

            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/NepArt", "root", "nabish");
            System.out.println("connection success");

            Statement st = con.createStatement();
 //           System.out.println("id ::: " + );
            String query="select * from Artist where username='"
                            + username
                            + "' AND password='"
                            + password
                            + "'";
            ResultSet rs = st.executeQuery(query);
            boolean more=rs.next();
         
            if(more) {
          	  String Ausername = rs.getString("username");
              int id=rs.getInt("Artist_id");
              String Aemail = rs.getString("email");
              
              String Aabout = rs.getString("aboutyourself");
//              System.out.println("Welcome " + id);
              artist.setArtist_id(id);
              artist.setUsername(Ausername);
              artist.setEmail(Aemail);
              
              artist.setAboutyourself(Aabout);
              artist.setArtist_id(id);

              artist.setValid(true);
            }
            else{

                  System.out.println("Username or password is invalid");
              	artist.setValid(false);
            }
        }
        catch (Exception ex) 
        {
           System.out.println("Log In failed: An Exception has occurred! " + ex);
        }
        return artist;
        
    }
  
}