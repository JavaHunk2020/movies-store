package com.kuebiko.servlet;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kuebiko.dao.PersonDao;
import com.kuebiko.dao.PersonDaoImpl;
import com.kuebiko.dao.entity.PersonEntity;

/**
 * 
 * @author nagendra
 * if you want to create a servlet then extends HttpServlet
 *
 */

@WebServlet("/auth")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String temail=req.getParameter("temail");
		String password=req.getParameter("password");
		  PersonDao personDao=new PersonDaoImpl();
		  Optional<PersonEntity> optional = personDao.findLoginUser(temail, password);
		  if(optional.isPresent()) {
			     HttpSession session=req.getSession();
			     session.setAttribute("userData", optional.get());
			     //req.setAttribute("userData", optional.get());
			     req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
		  }else {
			  req.setAttribute("message", "Sorry username and password are not valid!");
			  req.getRequestDispatcher("index.jsp").forward(req, resp);
		  }
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doPost(req,resp);
	}

}
