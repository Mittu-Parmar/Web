package com.vedu.in;

import java.io.IOException;
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

@WebServlet("/AddBooks")
public class AddBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String BookTitle =request.getParameter("BookTitle");
		String BookIsbn =request.getParameter("BookIsbn");
		String BookAuthor =request.getParameter("BookAuthor");
		String BookPublisher=request.getParameter("BookPublisher");
		String BookPrice =request.getParameter("BookPrice");
		String NoOfBooks =request.getParameter("NoOfBooks");
		String BookCat =request.getParameter("BookCat");
		String CoverImage=request.getParameter("CoverImage");
		//FileInputStream fis=new FileInputStream(new File(CoverImage));
		
		try
		{
				
			   Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
				Statement s=con.createStatement();
				
				ResultSet rs=s.executeQuery("select BookIsbn from book");
				int flag=0;
				while(rs.next())
				{
					if(BookIsbn.equalsIgnoreCase(rs.getString(1)))
					{
						flag=1;
					}
				}
				if(flag==0)
				{
					String qr="insert into book values(?,?,?,?,?,?,?,?)";
					PreparedStatement ps=con.prepareStatement(qr);
					
					ps.setString(1,BookTitle);
					ps.setString(2,BookIsbn);
					ps.setString(3,BookAuthor);
					ps.setString(4,BookPublisher);;
					ps.setString(5,BookPrice);
					ps.setString(6,NoOfBooks);
					ps.setString(7,BookCat);
					ps.setString(8,CoverImage);
					//ps.setBinaryStream(9,fis);
					int i=ps.executeUpdate();
					if(i>0)
					{
						HttpSession ses=request.getSession();
						ses.setAttribute("addbook", "Book Information added successfully!!");
						response.sendRedirect("view-books.jsp");
					}
					
				}
				else
				{
					HttpSession ses=request.getSession();
					ses.setAttribute("error","The Book with mentioned ISBN already exists!! ");
					response.sendRedirect("add-book.jsp");
					System.out.println("yo in else ");
				}
				
		}catch(Exception e)
		{
		    System.out.print(e);
		}
		
	}

}
