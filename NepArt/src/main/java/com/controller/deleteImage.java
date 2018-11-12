package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.deleteImageDAO;
import com.modal.Image;


@WebServlet(urlPatterns = "/deleteImage.do")
public class deleteImage extends HttpServlet {
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		int id;
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String Sid=req.getParameter("id");
		 id=Integer.parseInt(Sid);
		System.out.print(id);
		Image img=new Image();
		img.setImage_id(id);
		img=deleteImageDAO.delete(img);
		req.getRequestDispatcher("/WEB-INF/view/artistPage.jsp").forward(req, resp);
		
		
		
		//img.setImage_id(id);
		
		
	}
}