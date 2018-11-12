package com.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerLoginDAO;
import com.modal.Customer;

@WebServlet(urlPatterns = "/getCustomerLogin.do")
public class CustomerLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			
			Customer customer=new Customer();
		customer.setUsername(request.getParameter("username"));
		customer.setPassword(request.getParameter("password"));
		
		customer=CustomerLoginDAO.getCustomer(customer);
		
		if (customer.isValid())
	     {
			request.getSession().setAttribute("name",customer);
			request.getRequestDispatcher("/WEB-INF/view/CustomerPage.jsp").forward(request, response);  		
			return; 
	     }
		        
	     else 
	    	 request.setAttribute("errorMessage", "Invalid Credentials!!");
			request.getRequestDispatcher("/WEB-INF/view/Index.jsp").forward(request, response);
	} 
			
			
	catch (Throwable theException) 	    
	{
	     System.out.println(theException); 
	}
	       }
		}
