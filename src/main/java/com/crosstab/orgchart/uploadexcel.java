package com.crosstab.orgchart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.sql.*;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;

/**
 * Servlet implementation class uploadexcel
 */
public class uploadexcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public uploadexcel() {
        super();
       
    }
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
String file=request.getParameter("file");
String dbs=request.getParameter("dbnames");
String tbs=request.getParameter("tbnames");
		 try{
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbs, "root", "2309");
	            con.setAutoCommit(false);
	            PreparedStatement pstm = null ;
	            FileInputStream input = new FileInputStream("D://"+file);
	            POIFSFileSystem fs = new POIFSFileSystem( input );
	            HSSFWorkbook wb = new HSSFWorkbook(fs);
	            HSSFSheet sheet = wb.getSheetAt(0);
	            Row row;
	            for(int i=1; i<=sheet.getLastRowNum(); i++){
	                row = (Row)sheet.getRow(i);
	               
	               int col1 = (int) row.getCell(0).getNumericCellValue();
	               int col2 = (int) row.getCell(1).getNumericCellValue();
	                String col3 = row.getCell(2).getStringCellValue();
	                String col4 = row.getCell(3).getStringCellValue();
	                String col5 = row.getCell(4).getStringCellValue();
	                String col6 = row.getCell(5).getStringCellValue();
	                
	                String sql = "INSERT INTO " + tbs + " VALUES(?,?,?,?,?,?)";
	                pstm = (PreparedStatement) con.prepareStatement(sql);
	                pstm.setInt(1, col1);
	                pstm.setInt(2, col2);
	                pstm.setString(3, col3);
	                pstm.setString(4, col4);
	                pstm.setString(5, col5);
	                pstm.setString(6, col6);
	         
	                pstm.execute();
	                System.out.println("Import rows "+i);
	            }
	            con.commit();
	            pstm.close();
	            con.close();
	            input.close();
	            out.println("Success import excel to mysql table");
	        }catch(ClassNotFoundException e){
	            out.println(e);
	        }catch(SQLException ex){
	           out.println(ex);
	        }catch(IOException ioe){
	            out.println(ioe);
	        }
	}

}
