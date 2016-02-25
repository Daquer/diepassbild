package br.com.diepassbild.servlet.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDirectory
 */

public class DeleteDirectory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDirectory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String posicao = (String) request.getParameter("posicao");
		
		String existenciaPosicao = "";
		
		existenciaPosicao = verificaExistencaPosicao(posicao);
		if(!existenciaPosicao.isEmpty()){
	    	File directory = new File(System.getenv("OPENSHIFT_DATA_DIR") + existenciaPosicao);
	 
	    	//make sure directory exists
	    	if(!directory.exists()){
	 
	           System.out.println("Directory does not exist.");
	           System.exit(0);
	 
	        }else{
	 
	           try{
	        	   
	               delete(directory);
	        	
	           }catch(IOException e){
	               e.printStackTrace();
	               System.exit(0);
	           }
	        }
	 
	    	System.out.println("Done");
		}
	    
	}
	
	private String verificaExistencaPosicao(String posicao) {
		File folder = new File(System.getenv("OPENSHIFT_DATA_DIR"));
		File[] listOfFiles = folder.listFiles();
		
		if (listOfFiles != null ) {
		    ArrayList<String> projects = new ArrayList<String>();
		    
		    for (File file : listOfFiles) {
		    	if(!file.isFile()) {
		    		
		    		if(file.getName().contains(posicao + "~")) {
		    			return file.getName();
		    		}
		    	}
			}
		}
		
		return "";
		
	}
	
	public static void delete(File file)
	    	throws IOException {
	 
    	if(file.isDirectory()) {
 
    		//directory is empty, then delete it
    		if(file.list().length==0){
    			
    		   file.delete();
    		   System.out.println("Directory is deleted : " 
                                                 + file.getAbsolutePath());
    			
    		}else{
    			
    		   //list all the directory contents
        	   String files[] = file.list();
     
        	   for (String temp : files) {
        	      //construct the file structure
        	      File fileDelete = new File(file, temp);
        		 
        	      //recursive delete
        	     delete(fileDelete);
        	   }
        		
        	   //check the directory again, if empty then delete it
        	   if(file.list().length==0){
           	     file.delete();
        	     System.out.println("Directory is deleted : " 
                                                  + file.getAbsolutePath());
        	   }
    		}
    		
    	}else{
    		//if file, then delete it
    		file.delete();
    		System.out.println("File is deleted : " + file.getAbsolutePath());
    	}
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
