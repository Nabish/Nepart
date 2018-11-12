package com.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerSignupDAO;
import com.modal.Customer;

@WebServlet(urlPatterns = "/addcustomerinfo.do")
public class addCustomer extends HttpServlet {

		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
			Customer c=new Customer();
			c.setFullname(request.getParameter("fullname"));
			c.setUsername(request.getParameter("username"));
			c.setAddress(request.getParameter("address"));
			c.setPhone(request.getParameter("phonenumber"));
			c.setGender(request.getParameter("gender"));
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			
			
			
			
			//c.setDob(request.getParameter("dob"));

			c=CustomerSignupDAO.setinfo(c);
			
			request.getRequestDispatcher("/WEB-INF/view/Index.jsp").forward(request, response);
			
			
		}
		}
	

