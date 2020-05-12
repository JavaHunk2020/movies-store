package com.kuebiko.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.dao.PersonDao;
import com.kuebiko.dao.PersonDaoImpl;
import com.kuebiko.dao.entity.PersonEntity;
import com.kuebiko.utils.DateUtils;


@WebServlet("/updatePerson")
public class UpdatePersonServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		  String  pid=request.getParameter("pid");
		  String  userid=request.getParameter("userid");
		  String  name=request.getParameter("name");
		  String  dob=request.getParameter("dob");
		  System.out.println("dob = "+dob);
		  Date ddob=DateUtils.dateFromYyyyMmDDString(dob); //12-03-2020 //2020-05-05
		  String  email=request.getParameter("email");
		  String  mobile=request.getParameter("mobile");
		  long mob=Long.parseLong(mobile);
		  String  salary=request.getParameter("salary");
		  double sal=Double.parseDouble(salary);
		  String  ssn=request.getParameter("ssn");
		  int ssssnn=Integer.parseInt(ssn);
		  PersonEntity entity=new PersonEntity(Integer.parseInt(pid), userid, name, email, ddob, mob, sal, ssssnn, null, null);
		  PersonDao personDao=new PersonDaoImpl();
		  personDao.updateByPid(entity);
		  //Calling a servlet
		  request.setAttribute("message", "Profile is updated successfully!!!!!");
		  request.getRequestDispatcher("persons").forward(request, resp);
	}
}
