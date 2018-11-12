package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.modal.Customer;
public class CustomerLoginDAO {

    public static Customer getCustomer(Customer customer) {

    	String username=customer.getUsername();
    	String password=customer.getPassword();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("driver loaded");

            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/NepArt", "root", "nabish");
            System.out.println("connection success");

            Statement st = con.createStatement();
 //           System.out.println("id ::: " + );
            String query="select * from Customer where username='"
                            + username
                            + "' AND password='"
                            + password
                            + "'";
            ResultSet rs = st.executeQuery(query);
            boolean more=rs.next();
         
            if(more) {
          	  String username1 = rs.getString("username");
              String password1 = rs.getString("password");
  	     	
              System.out.println("Welcome " + username1);
              customer.setUsername(username1);
              customer.setPassword(password1);
              customer.setValid(true);
            }
            else{

                  System.out.println("Username or password is invalid");
              	customer.setValid(false);
            }
        }
        catch (Exception ex) 
        {
           System.out.println("Log In failed: An Exception has occurred! " + ex);
        }
        return customer;
    }
}


