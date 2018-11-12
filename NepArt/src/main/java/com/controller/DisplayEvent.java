package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EventDAO;
import com.modal.Event;


@WebServlet(urlPatterns = "/event.do")
public class DisplayEvent extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		EventDAO dao = new EventDAO();

		// Getting Event List from Database
		List<Event> eventList = dao.getEventList();
		
		req.setAttribute("eventList", eventList);
		req.getRequestDispatcher("/WEB-INF/view/event.jsp").forward(req, resp);

		
		
	}

}