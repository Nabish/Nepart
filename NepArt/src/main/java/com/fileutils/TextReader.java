package com.fileutils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.Part;

public class TextReader {
	public static String readtext(Part p) throws IOException {
		ByteArrayOutputStream testStream = new ByteArrayOutputStream();
		int read;
        final byte[] buffer = new byte[5120];
        InputStream textInpt = p.getInputStream(); 
        while ((read = textInpt.read(buffer)) != -1) {
        	testStream.write(buffer, 0, read);
        }
        String str=new String(testStream.toByteArray());
        System.out.println(str);
		return  str;    
	}
	
	
	
	
	
	
	
}
