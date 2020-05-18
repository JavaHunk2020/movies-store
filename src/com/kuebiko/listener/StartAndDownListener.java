package com.kuebiko.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 
 * @author nagendra
 *   <listener>
    <listener-class>com.kuebiko.filter.StartAndDownListener</listener-class>
  </listener>
 *
 */
@WebListener
public class StartAndDownListener implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
			System.out.println("**************Hello***************");
			System.out.println("**************Application is up and running*************");
			System.out.println("**************Hello***************");
			ServletContext  servletContext=sce.getServletContext();
			servletContext.setAttribute("email", "javahunk100@gmail.com");
			servletContext.setAttribute("mobile", "+919999777888");
	}

	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		  System.out.println("Email sending......................................................................");
	}
}

