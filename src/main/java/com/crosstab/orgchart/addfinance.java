package com.crosstab.orgchart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addfinance extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		Connection con;
		PreparedStatement st;
		
		try {
			
			String p=req.getParameter("post"); 
			String n=req.getParameter("name"); 
			String e=req.getParameter("email"); 

			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/specialchart", "root", "2309");
			
				
			String pid = req.getParameter("pid");		
			
			st = con.prepareStatement("insert into finance(parentid,post,name,email)values(?,?,?,?)");
			
			st.setString(1, pid);
			st.setString(2, p);
			st.setString(3, n);
			st.setString(4, e);
			st.executeUpdate();
			RequestDispatcher view = req.getRequestDispatcher("finance.jsp");
			view.forward(req, res);
		} catch (SQLException sx) {
			sx.printStackTrace();
		} catch (ClassNotFoundException cx) {
			pw.println(cx);
		}
	}
}
