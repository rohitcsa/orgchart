package com.crosstab.orgchart;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.tsohr.JSONArray;
import com.github.tsohr.JSONObject;

import java.sql.*;
public class jsonchart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public jsonchart() {
		super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		try {

			JSONArray array = new JSONArray();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orgchart", "root", "2309");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select id,parentid,name,email,job,mob from new_table");
			while (rs.next()) {
				JSONObject obj = new JSONObject();

				obj.put("id", rs.getString("id"));
				obj.put("parentId", rs.getString("parentid"));
				obj.put("name", rs.getString("name"));
				obj.put("email", rs.getString("email"));
				obj.put("job", rs.getString("job"));
				obj.put("phone", rs.getString("mob"));
				array.put(obj);

			}

			out.print(array);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}

















