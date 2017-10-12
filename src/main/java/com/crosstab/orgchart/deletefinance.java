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

public class deletefinance extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		Connection con;
		PreparedStatement st;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/specialchart", "root", "2309");
			
			String id = req.getParameter("id");
		
			st = con.prepareStatement("delete from finance where id = ? ");
			
			st.setString(1, id);
			st.executeUpdate();
			st = con.prepareStatement("delete from finance where parentid = "+id);
			
			st.executeUpdate();
		
			RequestDispatcher view = req.getRequestDispatcher("/finance.jsp");
			view.forward(req, res);
		} catch (SQLException sx) {
			pw.println(sx);
		} catch (ClassNotFoundException cx) {
			pw.println(cx);
		}
	}
}
