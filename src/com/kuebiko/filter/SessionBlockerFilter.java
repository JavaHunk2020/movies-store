package com.kuebiko.filter;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.utils.Utils;

//All the incoming request
@WebFilter(filterName="blockingFilter")
public class SessionBlockerFilter implements Filter {
	
	private Set<String> allowedUrls=new HashSet<>();
	
	private  long startTime=10*60*60*1000;
	private  long endTime=19*60*60*1000;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		allowedUrls.add("/unavaliable.jsp");
		//Accesing  data 
		ServletContext   se= filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 //Reference type casting = Downcasting
		 HttpServletRequest httpServletRequest =(HttpServletRequest)request;
		 String resourceName=httpServletRequest.getServletPath();
		 System.out.println("BlockingFilter Accessing resource = "+resourceName+" at time  "+LocalDateTime.now());
					  long cTime =Utils.currentTime();
					  if(resourceName.equalsIgnoreCase("/unavaliable.jsp")) {
						  chain.doFilter(request, response);
					  }
					  else  if( cTime>startTime && cTime<endTime) {
						  chain.doFilter(request, response);
					  }else {
						   //http://localhost:9999/happy-hours
					       ((HttpServletResponse) response).sendRedirect(httpServletRequest.getContextPath()+"/unavaliable.jsp");
					  }
					
	}
	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
