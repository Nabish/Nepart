package com.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ArtistLoginDAO;
import com.dao.ArtistImageDAO;
import com.modal.Artist;
import com.modal.Image;

@WebServlet(urlPatterns = "/getArtistLogin.do")
public class ArtistLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			
			Artist artist=new Artist();
		artist.setUsername(request.getParameter("username"));
		artist.setPassword(request.getParameter("password"));
	//	System.out.println(request.getParameter("username")+ "and"+ request.getParameter("password"));
		
		artist=ArtistLoginDAO.getArtist(artist);
		int id=artist.getArtist_id();
		if (artist.isValid())
	     {
			// Getting Event List from Database
		
			ArtistImageDAO img = new ArtistImageDAO();
			List<Image> imageList = img.getImageList(id);
			request.getSession().setAttribute("artist",artist);
			
			request.getSession().setAttribute("imageList", imageList);
			
			request.getRequestDispatcher("/WEB-INF/view/artistPage.jsp").forward(request, response);  		
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
