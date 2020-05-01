<%@page import="com.kuebiko.dao.PersonDaoImpl"%>
<%@page import="com.kuebiko.dao.PersonDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.kuebiko.utils.DateUtils"%>
<%@page import="com.kuebiko.dao.entity.PersonEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  String  userid=request.getParameter("userid");
  String  password=request.getParameter("password");
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
  PersonEntity entity=new PersonEntity(0, userid, name, email, ddob, mob, sal, ssssnn, null, null);
  entity.setPassword(password);
  PersonDao personDao=new PersonDaoImpl();
  personDao.save(entity);
  
  //Setting  message inside request scope
  request.setAttribute("kuebiko","You have successfully registered with us!!");
  %>

  <jsp:forward page="register.jsp"/>

</body>
</html>