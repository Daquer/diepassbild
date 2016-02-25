package br.com.diepassbild.servlet.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;

/**
 * Servlet implementation class RenameDirectory
 */
public class RenameProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RenameProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = (String) request.getParameter("path");
		String pathTo = (String) request.getParameter("pathTo");
		
		if(( path != null && !path.isEmpty()) && (pathTo != null && !pathTo.isEmpty()) ) {
			try {
				
				File folder = new File(System.getenv("OPENSHIFT_DATA_DIR") + path);
				File folderTo = new File(System.getenv("OPENSHIFT_DATA_DIR") + pathTo);
				
				FileUtils.moveDirectory(folder, folderTo);
				
			} catch(FileNotFoundException e) {
				System.out.println(e);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
