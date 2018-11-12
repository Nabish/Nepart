package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/signup.do")
public class signUpServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.getRequestDispatcher("/WEB-INF/view/signUp.jsp").forward(request, response);
	}
}
