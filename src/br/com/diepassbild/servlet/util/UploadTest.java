package br.com.diepassbild.servlet.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
//@WebServlet(name = "uploadtest",urlPatterns = {"/uploads/*"})
@MultipartConfig
public class UploadTest extends HttpServlet {
 
 
  private static final long serialVersionUID = 2857847752169838915L;
  int BUFFER_LENGTH = 4096;
 
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String projeto = (String) request.getParameter("projeto");
	
	boolean folderCreated = false;
	
    PrintWriter out = response.getWriter();
    for (Part part : request.getParts()) {
    	
    	if (projeto != null || !projeto.isEmpty()) {
    		File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + projeto);
    		
    		if (!file.exists()) {
    			if (file.mkdir()) {
    				System.out.println("Directory is created!");
    				folderCreated = true;
    			} else {
    				System.out.println("Failed to create directory!");
    			}
    		}
    	}
    	
        InputStream is = request.getPart(part.getName()).getInputStream();
        String fileName = getFileName(part);
        FileOutputStream os = null;
        
        if (folderCreated == true) {
        	os = new FileOutputStream(System.getenv("OPENSHIFT_DATA_DIR") + projeto + "/" + fileName);
        } else {
        	os = new FileOutputStream(System.getenv("OPENSHIFT_DATA_DIR") + fileName);
        	
        }
        byte[] bytes = new byte[BUFFER_LENGTH];
        int read = 0;
        while ((read = is.read(bytes, 0, BUFFER_LENGTH)) != -1) {
            os.write(bytes, 0, read);
        }
        os.flush();
        is.close();
        os.close();
        if (folderCreated == true) {
        	out.println(fileName + " was uploaded to " + System.getenv("OPENSHIFT_DATA_DIR") + projeto);
        } else {
        	out.println(fileName + " was uploaded to " + System.getenv("OPENSHIFT_DATA_DIR"));
        }
    }
  }
 
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
    String filePath = request.getRequestURI();
 
    File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + filePath.replace("/uploads/",""));
    InputStream input = new FileInputStream(file);
 
    response.setContentLength((int) file.length());
    response.setContentType(new MimetypesFileTypeMap().getContentType(file));
 
    OutputStream output = response.getOutputStream();
    byte[] bytes = new byte[BUFFER_LENGTH];
    int read = 0;
    while ((read = input.read(bytes, 0, BUFFER_LENGTH)) != -1) {
        output.write(bytes, 0, read);
        output.flush();
    }
 
    input.close();
    output.close();
  }
 
  private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
          if (cd.trim().startsWith("filename")) {
            return cd.substring(cd.indexOf('=') + 1).trim()
                    .replace("\"", "");
          }
        }
        return null;
      }
}