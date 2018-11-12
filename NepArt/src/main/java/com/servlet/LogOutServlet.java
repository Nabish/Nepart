package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/Logout.do")
public class LogOutServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("/WEB-INF/view/Index.jsp").forward(request, response);
	}
}
