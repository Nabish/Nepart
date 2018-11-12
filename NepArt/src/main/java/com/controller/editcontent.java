package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.editDescriptionDAO;
import com.dao.getEditFieldDAO;
import com.modal.Image;


@WebServlet(urlPatterns = "/editContent.do")
public class editcontent extends HttpServlet {
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		int id;
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String Sid=req.getParameter("id");
		 id=Integer.parseInt(Sid);
		System.out.print(id);
		Image img=new Image();
		img.setImage_id(id);
		img=getEditFieldDAO.getData(img);
		req.getSession().setAttribute("img",img);
		req.getRequestDispatcher("/WEB-INF/view/descriptionEdit.jsp").forward(req, resp);
		
		
		
		//img.setImage_id(id);
		
		
	}
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Image img=new Image();
		img.setImage_id(id);
		img.setTitle(req.getParameter("title"));
		img.setDescription(req.getParameter("description"));

		img=editDescriptionDAO.editinfo(img);
		req.getRequestDispatcher("/WEB-INF/view/artistPage.jsp").forward(req, resp);

	}

}