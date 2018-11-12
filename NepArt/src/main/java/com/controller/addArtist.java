package com.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ArtistSignupDAO;
import com.modal.Artist;

@WebServlet(urlPatterns = "/addartistinfo.do")
public class addArtist extends HttpServlet {

		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
			Artist artist=new Artist();
			artist.setFullname(request.getParameter("fullname"));
			artist.setUsername(request.getParameter("username"));
			artist.setAddress(request.getParameter("address"));
			artist.setPhone(request.getParameter("phonenumber"));
			artist.setGender(request.getParameter("gender"));
			artist.setEmail(request.getParameter("email"));
			artist.setPassword(request.getParameter("password"));
			artist.setAboutyourself(request.getParameter("aboutyourself"));
			

			artist=ArtistSignupDAO.setinfo(artist);
			
			request.getRequestDispatcher("/WEB-INF/view/Index.jsp").forward(request, response);
			
			
		}
		}
	

