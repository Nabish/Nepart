package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.fileutils.TextReader;
import com.modal.Image;
import com.dao.addImageDAO;

import javax.servlet.http.Part;

/**
 * A Java servlet that handles file upload from client.
 * @author www.codejava.net
 * 
 */
@WebServlet(urlPatterns = "/uploadArtistimages.do")
//@MultipartConfig(maxFileSize = 34000000)

@MultipartConfig(
		fileSizeThreshold=1024*1024*10, //10MB
		maxFileSize=1024*1024*50, //50mb
		maxRequestSize=1024*1024*100//100MB
	)



public class addImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "E:/upload";
	int id;
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Artistid=req.getParameter("id");
		 id=Integer.parseInt(Artistid);
		 System.out.println("aid"+id);
		 req.getRequestDispatcher("/WEB-INF/view/UploadImages.jsp").forward(req, resp);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String path;
		Part ti=request.getPart("title");
		String title=(String)TextReader.readtext(ti);
		Part des=request.getPart("description");
		String description=(String) TextReader.readtext(des);
		Part cat=request.getPart("category");
		String category=(String) TextReader.readtext(cat);
		Part pri=request.getPart("price");
		String price=(String) TextReader.readtext(pri);
		
		//System.out.println(tit+des+cate);
		//Getter setter
		
		
		Part uploadFile = request.getPart("uploadFile");
		if(null == uploadFile) {
			System.out.println("Null obj");
			return;
		}
        InputStream inputStream = null;
        OutputStream outputStream = null;
        PrintWriter writer = response.getWriter();
        try {
        	File dest = new File(UPLOAD_DIRECTORY, UUID.randomUUID().toString()+".jpg");
            outputStream = new FileOutputStream(dest);
            inputStream = uploadFile.getInputStream();
            int read;
            final byte[] buffer = new byte[1024];
            while ((read = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, read);
            }
            path=dest.getAbsolutePath();
            System.out.println(dest.getAbsolutePath());
           // System.out.println(request.getServerName()+request.getServerPort());
        }finally {
            if(inputStream != null) inputStream.close();
            if(outputStream !=  null) outputStream.close();
            writer.close();
        }
        Image img=new Image();
		img.setTitle(title);
		img.setCategory(category);
		img.setDescription(description);
		img.setPath(path);
		img.setArtist_id(id);
		img.setPrice(price);
		img=addImageDAO.setinfo(img);
        
		request.getRequestDispatcher("/WEB-INF/view/artistPage.jsp").forward(request, response);
        
	}
}
