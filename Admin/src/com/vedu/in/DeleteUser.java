package com.vedu.in;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter out=response.getWriter();
		HttpSession s=request.getSession();
		String RFID=(String) s.getAttribute("RFID");
		
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
		String qr="delete from user where rfid=?";
		PreparedStatement ps=con.prepareStatement(qr);
		
		
		ps.setString(1,RFID);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			HttpSession ses=request.getSession();
			ses.setAttribute("deleteuser", "Student Information deleted successfully!!");
			response.sendRedirect("view-user.jsp");
		}
		
		}catch(Exception e)
		{
		    System.out.print(e);
		}

	}

}
