<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Update Student</title>
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
                <i class="mdi mdi-account-multiple"></i>                 
              </span>
              Update Student
            </h3>
            
            </h3>
            
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page"></li>
              </ul>
            </nav>
          </div>
          
  <!-- container-scroller -->
          <div class="col-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Update User Details</h4>
                <p class="card-description">
                  Enter student details
                </p>
                <form class="forms-sample" action="UpdateUser" method="get">
                  <div class="form-group">
                    <label for="exampleInputName1">RFID</label>
                    <input type="text" class="form-control" id="exampleInputName1" placeholder="RFID" name="RFID" value=<%=request.getParameter("RFID") %> readonly>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail3">Name</label>
                    <input type="text" class="form-control" id="exampleInputEmail3" placeholder="Name" name="Name">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword4">Email</label>
                    <input type="email" class="form-control" id="exampleInputPassword4" placeholder="Email" name="Email">
                  </div>
                  <div class="form-group">
                    <label for="exampleSelectGender">Department</label>
                    <select class="form-control" id="exampleSelectGender" name="Department" >
                      <option>Computer Science Engineering</option>
                      <option>Information & Technology</option>
                      <option>Civil Engineering</option>
                      <option>Mechanical Engineering</option>
                      <option>Chemical Engineering</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleSelectGender">Gender</label>
                    <select class="form-control" id="exampleSelectGender" name="Gender" >
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>File upload</label>
                    <input type="file" name="img[]" class="file-upload-default">
                    <div class="input-group col-xs-12">
                      <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image" name="File">
                      <span class="input-group-append">
                        <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                      </span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputCity1">Enrollment no.</label>
                    <input type="text" class="form-control" id="exampleInputCity1" placeholder="Enrollment no." name="Enrollment">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputCity1">Contact Info</label>
                    <input type="text" class="form-control" id="exampleInputCity1" placeholder="Phone" name="Contact">
                  </div>
                  <input type="submit" class="btn btn-gradient-primary mr-2">
                  <button class="btn btn-light">Cancel</button>
                </form>
              </div>
            </div>
          </div>
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
</body>

</html>
