package com.kuebiko.servlet;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.dao.PersonDao;
import com.kuebiko.dao.PersonDaoImpl;
import com.kuebiko.dao.entity.PersonEntity;

//<a href="deletePerson?email=<%=entity.getEmail()%>">
@WebServlet("/deletePerson")
public class DeletePersonServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		  PersonDao personDao=new PersonDaoImpl();
		  personDao.deleteByEmailId(email);
		   req.getRequestDispatcher("showPerson.jsp").forward(req, resp);
	}
}
