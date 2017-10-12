package com.crosstab.orgchart;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import com.github.tsohr.JSONArray;
import com.github.tsohr.JSONObject;
/**
 * Servlet implementation class JsonServlet
 */
public class groupjson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public groupjson() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

		try {

			JSONArray array = new JSONArray();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/specialchart", "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select id,parentid,companyname,cdepartment,director, location, phone from groups");
			while (rs.next()) {
				JSONObject obj = new JSONObject();

				obj.put("id", rs.getString("id"));
				obj.put("parentId", rs.getString("parentid"));
				obj.put("companyname", rs.getString("companyname"));
				obj.put("cdepartment", rs.getString("cdepartment"));
				obj.put("director", rs.getString("director"));
				obj.put("location", rs.getString("location"));
				obj.put("phone", rs.getString("phone"));
				array.put(obj);

			}

			out.print(array);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}

















