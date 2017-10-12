package com.crosstab.orgchart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import com.github.tsohr.JSONArray;
import com.github.tsohr.JSONObject;
/**
 * Servlet implementation class JsonServlet
 */
public class dynamicjson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dynamicjson() {
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
String db=request.getParameter("dbname");
String tb=request.getParameter("tbname");

		try {

			JSONArray array = new JSONArray();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from " + tb + " ");
			while (rs.next()) {
				JSONObject obj = new JSONObject();

				obj.put("id", rs.getString("id"));
				obj.put("parentId", rs.getString("parentid"));
				obj.put("name", rs.getString("Name"));
				obj.put("post", rs.getString("Post"));
				obj.put("Email", rs.getString("Email"));
				
				
			
				array.put(obj);

			}

			out.println(array);
			
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}

















