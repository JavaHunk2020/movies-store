package com.kuebiko.utils;

public interface SQLQuery {
	
	String INSERT_INTO_PERSON="insert into persons_tbl(userid,name,email,dob,mobile,salary,ssn,createdate,updatedate,password) values(?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_PERSON="update  persons_tbl set name = ?, email =? , dob = ?  , mobile = ? , salary =? , ssn =? , updatedate =?  where userid = ?";
	String SELECT_ALL_PERSON="select  pid,userid,name,email,dob,mobile,salary,ssn,createdate,updatedate,password,role from persons_tbl";
	String SELECT_PERSON_BY_ID="select  pid,userid,name,email,dob,mobile,salary,ssn,createdate,updatedate,password,role from persons_tbl where pid  = ?";
	String CHECK_LOGIN_USER="select  pid,userid,name,email,dob,mobile,salary,ssn,createdate,updatedate,password,role from persons_tbl where email  = ? and password = ?";
	String SELECT_PERSON_BY_PERSON_ID="select  pid,userid,name,email,dob,mobile,salary,ssn,createdate,updatedate,password,role from persons_tbl where userid  = ?";
	String DELETE_PERSON_BY_ID="delete from persons_tbl where pid  = ?";
	String DELETE_PERSON_BY_EMAIL="delete from persons_tbl where email  = ?";
}
