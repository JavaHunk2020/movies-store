package com.kuebiko.servlet;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuebiko.utils.SQLConnectionUtil;


@WebServlet("/image")
public class ShowImageServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String sid =req.getParameter("sid");
			Connection  conn=SQLConnectionUtil.getConnection();
            // constructs SQL statement
            String sql = "select photo from photos_tbl where sid = "+sid;
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet=statement.executeQuery();
            byte byteArray[]= {};
            if(resultSet.next()) {
            	Blob blob=resultSet.getBlob("photo");
    			 byteArray=blob.getBytes(1,(int)blob.length());
            }
            resp.setContentType("image/png");
            ServletOutputStream  outputStream=resp.getOutputStream();
            outputStream.write(byteArray);
            outputStream.flush();
        } catch (Exception ex) {
            ex.printStackTrace();
        } 
		
	}
}
