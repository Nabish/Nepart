package com.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.contactUsDAO;
import com.modal.contact;


@WebServlet(urlPatterns = "/contactus.do")
public class contactUs extends HttpServlet {

		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
			contact contact=new contact();
			
			contact.setName(request.getParameter("name"));
			contact.setEmail(request.getParameter("email"));
			contact.setMessage(request.getParameter("message"));
			contact.setPhone(request.getParameter("phone"));
			
			contact=contactUsDAO.setinfo(contact);
			
			request.getRequestDispatcher("/WEB-INF/view/ContactUs.jsp").forward(request, response);
			
			
		}
		}
	

