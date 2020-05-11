package com.kuebiko.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author nagendra
 * if you want to create a servlet then extends HttpServlet
 *
 */

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		      HttpSession sesssion=req.getSession(false);
		      if(sesssion!=null) {
		    	   sesssion.invalidate();
		       }	  
			  req.getRequestDispatcher("logout.jsp").forward(req, resp);
	}

}