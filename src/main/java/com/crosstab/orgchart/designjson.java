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
public class designjson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public designjson() {
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
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/specialchart", "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select id,parentid,post,name,email,photo from designs");
			while (rs.next()) {
				JSONObject obj = new JSONObject();

				obj.put("id", rs.getString("id"));
				obj.put("parentId", rs.getString("parentid"));
				obj.put("post", rs.getString("post"));
				obj.put("name", rs.getString("name"));
				
				obj.put("email", rs.getString("email"));
				obj.put("image", rs.getBlob("photo"));
				
				array.put(obj);

			}

			out.print(array);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
















