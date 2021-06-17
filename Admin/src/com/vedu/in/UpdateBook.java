package com.vedu.in;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UpdateBook")
public class UpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String BookIsbn =request.getParameter("BookIsbn");
		String BookTitle =request.getParameter("BookTitle");
		String BookAuthor =request.getParameter("BookAuthor");
		String BookPublisher=request.getParameter("BookPublisher");
		String BookPrice =request.getParameter("BookPrice");
		String NoOfBooks =request.getParameter("NoOfBooks");
		String BookCat =request.getParameter("BookCat");
		String CoverImage=request.getParameter("CoverImage");
		//FileInputStream fis=new FileInputStream(new File(CoverImage));
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
		String qr="update book set booktitle=?,bookauthor=?,bookpublisher=?,bookprice=?,noofbooks=?,bookcat=?,coverimage=? where bookisbn=?";
		PreparedStatement ps=con.prepareStatement(qr);
		
		ps.setString(1,BookTitle);
		
		ps.setString(2,BookAuthor);
		ps.setString(3,BookPublisher);;
		ps.setString(4,BookPrice);
		ps.setString(5,NoOfBooks);
		ps.setString(6,BookCat);
		ps.setString(7,CoverImage);
		ps.setString(8,BookIsbn);
		//ps.setBinaryStream(9,fis);
		int i=ps.executeUpdate();
		if(i>0)
		{
			HttpSession ses=request.getSession();
			ses.setAttribute("updatebook", "Book information updated successfully!!");
			response.sendRedirect("view-books.jsp");
		}
		
		}catch(Exception e)
		{
		    System.out.print(e);
		}
		

	}

}
