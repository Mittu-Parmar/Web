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


@WebServlet("/DeleteBook")
public class DeleteBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//PrintWriter out=response.getWriter();
		HttpSession s=request.getSession();
		String BookIsbn=(String) s.getAttribute("BookIsbn");
//		String RFID =request.getParameter("BookIsbn");
//		
//		PrintWriter out=response.getWriter();
//		
//		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
		String qr="delete from book where bookisbn=?";
		PreparedStatement ps=con.prepareStatement(qr);
		
		
		ps.setString(1,BookIsbn);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			HttpSession ses=request.getSession();
			ses.setAttribute("deletebook", "Book Information deleted successfully!!");
			response.sendRedirect("view-books.jsp");
		}
		
		}catch(Exception e)
		{
		    System.out.print(e);
		}

	}

}
