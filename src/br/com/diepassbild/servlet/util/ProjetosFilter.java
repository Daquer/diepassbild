package br.com.diepassbild.servlet.util;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class ProjetosFilter
 */
public class ProjetosFilter implements Filter {

    public ProjetosFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		RequestDispatcher rd = null;
		String path = "";
		if (request instanceof HttpServletRequest) {
			path = ((HttpServletRequest)request).getRequestURI().substring( ((HttpServletRequest)request).getContextPath().length() );
		}
		if(!path.contains(".") || path.split("/").length < 3) {
			  
			rd = request.getRequestDispatcher("guias/projects" + path + ".jsp");
//			URL u = new URL( ((HttpServletRequest)request).getRequestURL().toString()); 
//			HttpURLConnection huc = (HttpURLConnection)  u.openConnection();
//			huc.setRequestMethod("HEAD"); 
//		    huc.connect(); 
//		    int resCode = huc.getResponseCode();
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				
			    
				e.printStackTrace();
				
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}else {
//		else {
//			rd = request.getRequestDispatcher(path);
//		}
	
    	
		// pass the request along the filter chain
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
