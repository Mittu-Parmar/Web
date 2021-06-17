<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
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
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/library","root","admin123");
	String qr="select * from User";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		out.println("<table border=1 align=center>");
		do{
			

			String Name =rs.getString(1);
			String Email  =rs.getString(1);
			String RFID =rs.getString(1);
			String Department =rs.getString(1);
			String Gender =rs.getString(1);
			String File =rs.getString(1);
			String Enrollment =rs.getString(1);
			String Contact  =rs.getString(1);

			out.println("<tr>");
			out.println("<td>");
			out.println(Name);
			out.println("</td>");
			out.println("<td>");
			out.println(Email);
			out.println("</td>");
			out.println("<td>");
			out.println(RFID);
			out.println("</td>");
			out.println("<td>");
			out.println(Department);
			out.println("</td>");
			out.println("<td>");
			out.println(Gender);
			out.println("</td>");
			out.println("<td>");
			out.println(File);
			out.println("</td>");
			out.println("<td>");
			out.println(Enrollment);
			out.println("</td>");
			out.println("<td>");
			out.println(Contact);
			out.println("</td>");
			
			out.println("<td>");
			out.println("<a href=UDel2.jsp?RFID="+RFID+">DELETE</a>");
			out.println("</td>");
			out.println("<td>");
			out.println("<a href=UUpdate.jsp?>UPDATE</a>");
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