package com.vedu.in;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;


@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Name =request.getParameter("Name");
		String Email  =request.getParameter("Email");
		String RFID =request.getParameter("RFID");
		String Department =request.getParameter("Department");
		String Gender =request.getParameter("Gender");
		String File =request.getParameter("File ");
		String Enrollment =request.getParameter("Enrollment");
		String Contact  =request.getParameter("Contact");
		
		PrintWriter out=response.getWriter();
		//out.print(RFID);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery("select RFID from user");
			int flag=0;
			while(rs.next())
			{
				if(RFID.equalsIgnoreCase(rs.getString(1)))
				{
					flag=1;
				}
			}
			if(flag==0)
			{
				String qr="insert into User values(?,?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(qr);
				
				ps.setString(1,Name);
				ps.setString(2,Email);
				//ps.setString(3,Department);
				ps.setString(3,RFID);
				ps.setString(4,Department);;
				ps.setString(5,Gender);
				ps.setString(6,File);
				ps.setString(7,Enrollment);
				ps.setString(8, Contact);
				//ps.setBinaryStream(9,fis);
				int i=ps.executeUpdate();
				if(i>0)
				{
					HttpSession ses=request.getSession();
					ses.setAttribute("addstudent","Student added successfully !!");
					response.sendRedirect("view-user.jsp");
				}
			
			}
			else
			{
				HttpSession ses=request.getSession();
				ses.setAttribute("error","The student with mentioned RFID already exists !!");
				response.sendRedirect("add-student.jsp");
				System.out.println("yo in else ");
			
			}
		}
		catch(Exception e)
		{
		    System.out.print(e);
		}
	}
}
