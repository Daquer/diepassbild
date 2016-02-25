package br.com.diepassbild.servlet.util;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RetrieveImgList
 */

public class RetrieveProjectList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveProjectList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String path = (String) request.getParameter("path") != null ? (String) request.getParameter("path") : "";
		
		File folder = new File(System.getenv("OPENSHIFT_DATA_DIR") + path);
		File[] listOfFiles = folder.listFiles();
			
		
		
//		    for (int i = 0; i < listOfFiles.length; i++) {
//		      if (listOfFiles[i].isFile()) {
//		        System.out.println("File " + listOfFiles[i].getName());
//		      } else if (listOfFiles[i].isDirectory()) {
//		        System.out.println("Directory " + listOfFiles[i].getName());
//		      }
//		    }
		if (listOfFiles != null ) {
		    PrintWriter out = response.getWriter();
		    String outString = "";
		    ArrayList<String> projects = new ArrayList<String>();
		    
		    for (File file : listOfFiles) {
		    	if(!file.isFile()) {
		    		
		    		if(!file.getName().equals("main")) {
		    			projects.add(file.getName());
		    		}
		    	}
//		    	outString += 
//		    			"/uploads/" + path + "/" + 
//		    	file.getName() + ";";		    	
			}
		    
		    
		    
//		    out.write(outString.substring(0,outString.length()-1));
		    out.write(URLEncoder.encode(
			    		projects.toString()
			    		.replace("[", "")
			    		.replace("]", "")
			    		.replace(",", ";"),
			    		"UTF-8")
		    		);
		}
		    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
