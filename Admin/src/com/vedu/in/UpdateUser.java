package com.vedu.in;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name =request.getParameter("Name");
		String Email  =request.getParameter("Email");
		String RFID =request.getParameter("RFID");
		String Department =request.getParameter("Department");
		String Gender =request.getParameter("Gender");
		String File =request.getParameter("File ");
		String Enrollment =request.getParameter("Enrollment");
		String Contact  =request.getParameter("Contact");
		
		PrintWriter out=response.getWriter();
		out.print(RFID);
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
		String qr="update User set name=?,email=?,department=?,gender=?,file=?,enrollment=?,contact=? where rfid=?";
		PreparedStatement ps=con.prepareStatement(qr);
		
		ps.setString(1,Name);
		ps.setString(2,Email);
		//ps.setString(3,Department);
		ps.setString(3,Department);
		ps.setString(4,Gender);;
		ps.setString(5,File);
		ps.setString(6,Enrollment);
		ps.setString(7,Contact);
		ps.setString(8, RFID);
		//ps.setBinaryStream(9,fis);
		int i=ps.executeUpdate();
		if(i>0)
		{
			HttpSession ses=request.getSession();
			ses.setAttribute("updateuser", "Student Information updated successfully!!");
			response.sendRedirect("view-user.jsp");
		}
		
		}catch(Exception e)
		{
		    System.out.print(e);
		}


	}

}
