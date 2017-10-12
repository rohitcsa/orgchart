package com.crosstab.orgchart;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adduser
 */
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
try{
	String a=request.getParameter("uname");
	String b=request.getParameter("email");
	String c=request.getParameter("pass");
	String d=request.getParameter("phone");
	String e=request.getParameter("city");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/specialchart","root","2309");
	PreparedStatement pst=con.prepareStatement("insert into signup(name,email,pass,phone,city)value(?,?,?,?,?)");
	pst.setString(1, a);
	pst.setString(2, b);
	pst.setString(3, c);
	pst.setString(4, d);
	pst.setString(5, e);
	pst.executeUpdate();
	response.sendRedirect("trial.jsp");
	
}catch(Exception e)
{
	e.printStackTrace();
}
	}
}
