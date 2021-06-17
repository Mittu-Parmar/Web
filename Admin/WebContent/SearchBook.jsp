<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Add Book</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/main-logo.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- NavBar -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="home.jsp"><img id="logo-img" src="images/main-logo.png" alt="logo"/><span id = "logo-text" >Titan</span></a>
        <a class="navbar-brand brand-logo-mini" href="home.jsp"><img src="images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="images/iist-logo.png" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">Indore Institute</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-eye mr-2 text-success"></i>
                View Profile
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-eraser mr-2 text-primary"></i>
                Edit Profile
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="login.jsp">
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Signout
              </a>

            </div>
          </li>
          
          
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell-outline"></i>
              <span class="count-symbol bg-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <h6 class="p-3 mb-0">Notifications</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-calendar"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                  <p class="text-gray ellipsis mb-0">
                    Just a reminder that you have an event today
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-settings"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                  <p class="text-gray ellipsis mb-0">
                    Update dashboard
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="mdi mdi-link-variant"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                  <p class="text-gray ellipsis mb-0">
                    New admin wow!
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <h6 class="p-3 mb-0 text-center">See all notifications</h6>
            </div>
          </li>
          
          
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/iist-logo.png" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">Indore Institute</span>
                <span class="text-secondary text-small">Manager</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="home.jsp">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="add-student.jsp">
              <span class="menu-title">Add Student</span>
              <i class="mdi mdi-account-multiple menu-icon"></i>
            </a>
            
          </li>
          <li class="nav-item">
            <a class="nav-link" href="add-book.jsp">
              <span class="menu-title">Add Books</span>
              <i class="mdi mdi-book-open-page-variant menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="view-books.jsp">
              <span class="menu-title">View Books</span>
              <i class="mdi mdi-book-open menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="view-user.jsp">
              <span class="menu-title">View users</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="SearchStudent.jsp">
              <span class="menu-title">Search Student</span>
              <i class="mdi mdi-account-multiple menu-icon"></i>
            </a>
            
          </li><li class="nav-item">
            <a class="nav-link" href="SearchBook.jsp">
              <span class="menu-title">Search Book</span>
              <i class="mdi mdi-book-open-page-variant menu-icon"></i>
            </a>
            
          </li>
          
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          
          <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-book-open-page-variant"></i>                 
              </span>
              Search Book
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page"></li>
              </ul>
            </nav>
          </div>
          
  <!-- container-scroller -->
  <h1 align="center">Search Books</h1>
<strong>SEARCH BY BOOK TITLE</strong><br>
<form action="">
<select class="form-control" name="cmbBook" onchange="this.form.submit();">
<option value="0">Select Book</option>
 <%
 PrintWriter outt=response.getWriter();
try{
	 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select BookIsbn,BookTitle from book");
	while(rs.next())
	{
%>
	<option value="<%=rs.getString("BookIsbn")%>"
	<%
		if(request.getParameter("cmbBook")!=null)
		{
			if(rs.getString("BookIsbn")==request.getParameter("cmbBook"))
			{
				outt.println("selected");
			}
		}
		%>
		
		><%=rs.getString("BookTitle")%></option>
		
		<%
	}
	
	con.close();
	rs.close();
}catch(Exception e)
{
	outt.println(e);
}
%>
</select>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
	Statement s=con.createStatement();
	String str=request.getParameter("cmbBook");
	ResultSet rs=s.executeQuery("select * from Book where BookIsbn='"+str+"'");
	while(rs.next())
	{
	%>
		
		<div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Book Info</h4>
                <form class="form-sample" action="AddBooks" method="get">
                  <p class="card-description">
                    Book details
                  </p>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Title</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="BookTitle" value="<%=rs.getString("BookTitle") %>" readonly/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">ISBN</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="BookIsbn" value="<%=rs.getString("BookIsbn") %>" readonly/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Author</label>
                        <div class="col-sm-9">
                          <input class="form-control" type="text" name="BookAuthor"   value="<%=rs.getString("BookAuthor") %>" readonly/>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Publisher</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="BookPublisher" value="<%=rs.getString("BookPublisher") %>" readonly/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Price</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="BookPrice" value="<%=rs.getString("BookPrice") %>" readonly/>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Number of copies</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="NoOfBooks" value="<%=rs.getString("NoOfBooks") %>" readonly/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Category</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="Category" value="<%=rs.getString("BookCat") %>" readonly/>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="Image" value="null" readonly/>
                        </div>
                      </div>
                    </div>
                  </div>
                  </form>  
		
		<%
	}
	con.close();
	rs.close();
	
}catch(Exception e)
{
	outt.println(e);
}


%>
        
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->





























<%-- <body>
<form action="">
<h1 align="center">Search Books</h1>
<strong>SEARCH BY BOOK TITLE</strong><br>
<select class="form-control" name="cmbBook" onchange="this.form.submit();">
<option value="0">Select Book</option>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select BookIsbn,BookTitle from book");
	while(rs.next())
	{
		%>
		<option value="<%=rs.getString("BookIsbn")%>"
		<%
		if(request.getParameter("cmbBook")!=null)
		{
			if(rs.getString("BookIsbn")==request.getParameter("cmbBook"))
			{
				out.println("selected");
			}
		}
		%>
		
		><%=rs.getString("BookTitle")%></option>
		<%
	}
	con.close();
	rs.close();
	
}catch(Exception e)
{
	out.println(e);
}


%>
</select>
 <table class="table table-bordered table-striped" style="width:70%" border="1">
<tr>
<th style="width:15%">BookIsbn</th>
<th style="width:15%">BookTitle</th>
<th style="width:15%">BookPublisher</th>

<th style="width:15%">BookAuthor</th>
<th style="width:15%">BookPrice</th>
<th style="width:15%">NoOfBooks</th>
<th style="width:15%">CoverImage</th>
<th style="width:15%">BookCat</th>
</tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminPanel","root","root");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from Book where BookIsbn='"+request.getParameter("cmbBook")+"'");
	while(rs.next())
	{
		%>
		<tr>
		<td style="width:15%"><%=rs.getString("BookIsbn") %></td>
		<td><%=rs.getString("BookTitle") %></td>
		<td><%=rs.getString("BookPublisher") %></td>
		
		<td><%=rs.getString("BookAuthor") %></td>
		<td><%=rs.getString("BookPrice") %></td>
		<td><%=rs.getString("NoOfBooks") %></td>
		<td><%=rs.getString("CoverImage") %></td>
		<td><%=rs.getString("BookCat") %></td>
		
		</tr>
		<%
	}
	con.close();
	rs.close();
	
}catch(Exception e)
{
	out.println(e);
}


%>

</table>
</form>--%>
</body>
</html>