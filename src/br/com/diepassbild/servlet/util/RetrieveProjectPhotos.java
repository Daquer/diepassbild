package br.com.diepassbild.servlet.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RetrieveImgList
 */

public class RetrieveProjectPhotos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveProjectPhotos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String path = (String) request.getParameter("path") != null ? (String) request.getParameter("path") : "";
		
		if(path != null & !path.isEmpty()) {
			
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
//			    PrintWriter out = response.getWriter();
			    String outString = "";
			    String description = "";
			    
			    for (File file : listOfFiles) {
			    	if(file.isFile()) {
			    		
			    		if(!file.getName().contains("capa") && !file.getName().contains("txt")) {
			    			outString +=  file.getName() + ";" ;
			    		}
			    		
			    		if(file.getName().contains("txt")) {
			    			description = lerTxt(file.getPath());
			    		}
			    	}
				}
			    
			    request.setAttribute("pastaProjeto", path);
			    request.setAttribute("description", description);
			    request.setAttribute("fotos", outString.substring(0,outString.length()-1));
			    RequestDispatcher rd = request.getRequestDispatcher("/guias/project.jsp");
			    
			    rd.forward(request, response);
			}
		}
		    
	}
	
	private String lerTxt(String pathtofile) {
		String description = "";
		BufferedReader br = null;

		try {

			String sCurrentLine;

			br = new BufferedReader(new FileReader(pathtofile));

			while ((sCurrentLine = br.readLine()) != null) {
				description += sCurrentLine;
			}

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (br != null)br.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		
		return description;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
