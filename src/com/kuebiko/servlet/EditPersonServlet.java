package com.kuebiko.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.dao.PersonDao;
import com.kuebiko.dao.PersonDaoImpl;
import com.kuebiko.dao.entity.PersonEntity;


@WebServlet("/editPerson")
public class EditPersonServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    String pid=req.getParameter("pid");
		    PersonDao personDao=new PersonDaoImpl();
		   PersonEntity  personEntity= personDao.findById(Integer.parseInt(pid));
		  req.setAttribute("personEntity", personEntity);
		  req.getRequestDispatcher("editPerson.jsp").forward(req, resp);
	}
}
