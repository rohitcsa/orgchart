package com.crosstab.orgchart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class createtable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public createtable() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String db=request.getParameter("dbname");
			String tb=request.getParameter("tbname");
			String c1=request.getParameter("col1");
			String c2=request.getParameter("col2");
			String c3=request.getParameter("col3");
			String c4=request.getParameter("col4");
			String c5=request.getParameter("col5");
			String c6=request.getParameter("col6");
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, "root", "2309");
			PreparedStatement pst=con.prepareStatement("CREATE TABLE " + tb + " (" + c1 + " varchar(45), " + c2 + " varchar(45) , " + c3 + " varchar(45), " + c4 + " varchar(45)," + c5 + " varchar(45), " + c6 + " varchar(45) " + ")");
			pst.executeUpdate();
			RequestDispatcher view = request.getRequestDispatcher("/uploadexcel.jsp");
			view.forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	
	

}
