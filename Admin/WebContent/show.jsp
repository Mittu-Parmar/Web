<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
        <%@ page import ="java.sql.*" %>
    <%@ page import="java.io.File"%>
     <%@ page import="java.io.FileInputStream"%>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
	String qr="select * from book";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		
		 out.println("<table border=1 align=center>");
		do{
			
			String BookTitle =rs.getString("BookTitle");
			String BookIsbn =rs.getString("BookIsbn");
			//String Department=rs.getString("Department");
			String BookAuthor =rs.getString("BookAuthor");
			String BookPublisher=rs.getString("BookPublisher");
			String BookPrice =rs.getString("BookPrice");
			String NoOfBooks =rs.getString("NoOfBooks");
			String BookCat =rs.getString("BookCat");
			String CoverImage=rs.getString("CoverImage");
			//FileInputStream fis=new FileInputStream(new File(CoverImage));

			out.println("<tr>");
			out.println("<td>");
			out.println(BookTitle);
			out.println("</td>");
			out.println("<td>");
			out.println(BookIsbn);
			out.println("</td>");
			out.println("<td>");
			out.println(BookAuthor);
			out.println("</td>");
			
			out.println("<td>");
			out.println(BookPublisher);
			out.println("</td>");
			out.println("<td>");
			out.println(BookPrice);
			out.println("</td>");
			out.println("<td>");
			out.println(NoOfBooks);
			out.println("</td>");
			out.println("<td>");
			out.println(BookCat);
			out.println("</td>");
			
			out.println("<td>");
			out.println(CoverImage);
			out.println("</td>");
			out.println("<td>");
			out.println("<a href=del2.jsp?BookIsbn="+BookIsbn+">DELETE</a>");
			out.println("</td>");
			out.println("<td>");
			out.println("<a href=update.jsp?>UPDATE</a>");
			out.println("</td>");
			out.println("</tr>");
			
			
		 }while(rs.next());
		out.println("</table>");
	}
	
	
}catch(Exception e)
{
	out.println(e);
}


%>
</body>
</html>




