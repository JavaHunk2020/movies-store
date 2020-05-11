package com.kuebiko.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.dao.PersonDao;
import com.kuebiko.dao.PersonDaoImpl;
import com.kuebiko.dao.entity.PersonEntity;


@WebServlet("/persons")
public class PersonsServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    PersonDao personDao=new PersonDaoImpl();
		    List<PersonEntity>  personList= personDao.findAll();
		  req.setAttribute("personList", personList);
		  req.getRequestDispatcher("showPerson.jsp").forward(req, resp);
	}
}
