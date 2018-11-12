package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modal.Image;
import com.dao.CategoriesDAO;

@WebServlet(urlPatterns = "/Categories.do")
public class Categories extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String value=request.getParameter("button");
		CategoriesDAO cate=new CategoriesDAO();
		List<Image> imageList = cate.getImageList(value);
		request.setAttribute("button", value);
		request.setAttribute("imageList", imageList);
		request.getRequestDispatcher("/WEB-INF/view/Categories.jsp").forward(request, response);  		

		System.out.println(value);
	}
}
