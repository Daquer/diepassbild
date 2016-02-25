package br.com.diepassbild.servlet.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class NewProject
 */
@MultipartConfig
public class NewProject extends HttpServlet {
	 
	private static final long serialVersionUID = 2857847752169838915L;
	int BUFFER_LENGTH = 4096;
    
    public NewProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projeto = (String) request.getParameter("projeto");
		
		String description = (String) request.getParameter("description");
		
		String posicao = (String) request.getParameter("posicao");
		
		boolean folderCreated = false;
		boolean folderAlreadyExist = false;
		String posicaoExistente = "";
	    PrintWriter out = response.getWriter();
	    
	    for (Part part : request.getParts()) {
	    	if(!part.getName().equals("posicao")){
		    	if (part.getContentType() == null && !part.getName().equals("description")) {
		    		if(projeto != null && !projeto.isEmpty() ) {
		    			
//		    			posicaoExistente = verificaExistencaPosicao(posicao);
		    			
//		    			if(posicaoExistente.isEmpty()) {
				    		File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + posicao + "~" + projeto);
				    		
				    		if (!file.exists()) {
				    			if (file.mkdir()) {
				    				System.out.println("Directory is created!");
				    				projeto = posicao + "~" + projeto;
				    				folderCreated = true;
				    			} else {
				    				System.out.println("Failed to create directory!");
				    				
				    			}
				    		} else {
				    			projeto = posicao + "~" + projeto;
				    			folderAlreadyExist = true;
				    		}
//		    			} else {
//		    				
//		    				String novaPosicao = "";
//		    				String novoNome = "";
//		    				
//		    				while(!posicaoExistente.isEmpty()) {
//			    				File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + posicaoExistente);
//			    				
//			    				posicaoExistente = posicaoExistente.replace(posicao + "~", "");
//			    				
//			    				novaPosicao = String.valueOf( (Integer.parseInt(posicao) + 1) );
//			    				
//			    				novoNome = novaPosicao + "~" + posicaoExistente;
//			    				
//			    				File renFile = new File(System.getenv("OPENSHIFT_DATA_DIR") + novoNome);
//			    				
//			    				file.renameTo(renFile);
//			    				
//			    				posicaoExistente = verificaExistencaPosicao(novaPosicao);
//		    				}
//		    				
//		    				File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + posicao + "~" + projeto);
//		    				
//		    				if (!file.exists()) {
//				    			if (file.mkdir()) {
//				    				System.out.println("Directory is created!");
//				    				projeto = posicao + "~" + projeto;
//				    				folderCreated = true;
//				    			} else {
//				    				System.out.println("Failed to create directory!");
//				    				
//				    			}
//				    		} else {//Provavelmente código nunca alcançável
//				    			folderAlreadyExist = true;
//				    		}
//		    			}
		    		}
		    	} else {
		    		InputStream is = part.getInputStream();
		    		
		    		String fileName = "";
	
		    		if(part.getName().equals("capa")){
		    			fileName = "capa.jpg";
		    		} else if(part.getName().equals("description")) {
		    			fileName = "description.txt";
		    		} else {
		    			fileName = getFileName(part);
		    		}
			        
		    		String pathToFile = "";
		    		
		    		if (folderCreated == true || folderAlreadyExist == true) {
		    			pathToFile = System.getenv("OPENSHIFT_DATA_DIR") + projeto + "/" + fileName;
		    		} else {
		    			pathToFile = System.getenv("OPENSHIFT_DATA_DIR") + fileName;
		    		}
		    		
		    		if(!part.getName().equals("description")) {
				        FileOutputStream os = null;
			        	
				        os = new FileOutputStream(pathToFile);
				        
				        byte[] bytes = new byte[BUFFER_LENGTH];
				        int read = 0;
				        while ((read = is.read(bytes, 0, BUFFER_LENGTH)) != -1) {
				            os.write(bytes, 0, read);
				        }
				        os.flush();
				        is.close();
				        os.close();
		    		} else {
		    			writeDescription(description, pathToFile);
		    		}
		    		
			        if (folderCreated == true || folderAlreadyExist == true) {
			        	out.println(fileName + " was uploaded to " + System.getenv("OPENSHIFT_DATA_DIR") + projeto);
			        } else {
			        	out.println(fileName + " was uploaded to " + System.getenv("OPENSHIFT_DATA_DIR"));
			        }
		    	}
	    	}
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

	private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
          if (cd.trim().startsWith("filename")) {
            return cd.substring(cd.indexOf('=') + 1).trim()
                    .replace("\"", "");
          }
        }
        return null;
      }
	
	
	private boolean writeDescription(String content, String pathToFile) {
		try {
			
			File file = new File(pathToFile);
	
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
			
			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			
			content = content.replace(System.getProperty("line.separator"), "<br/>");
			
			bw.write(content);
			bw.close();
	
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
