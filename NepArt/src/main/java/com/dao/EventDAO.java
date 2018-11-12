package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.modal.Event;



public class EventDAO {

	public List<Event> getEventList() {

	//	List<Event> eventList = new ArrayList<Event>();
		List<Event> eventList = new ArrayList<Event>();

		Connection connection = null;

		try {

			// Loading Driver Class
			Class.forName("com.mysql.jdbc.Driver");

			// Getting the Connection
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/nepart", "root", "nabish");

			Statement statement = connection.createStatement();

			ResultSet rs = statement.executeQuery("SELECT * FROM event");

			while (rs.next()) {

				// Defining Event Object
				Event event = new Event();

				event.setEvent_id(rs.getString("event_id"));
				event.setEventname(rs.getString("eventName"));
				event.setCategory(rs.getString("category"));
				event.setStartdate(rs.getString("startdate"));
				event.setEnddate(rs.getString("enddate"));
				event.setTicketprice(rs.getString("ticketprice"));
				event.setVenue(rs.getString("venue"));
				event.setLocation(rs.getString("location"));
				event.setDescription(rs.getString("description"));
				event.setEventpicture(rs.getString("eventpicture"));

				// Adding the Event Object to List
				eventList.add(event);
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

		return eventList;
	}
}