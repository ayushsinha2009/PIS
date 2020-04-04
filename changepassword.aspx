﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/ALLMAAA_ICO.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Change Password  
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<style>
.card-user .card-body {
    min-height: 171px;
}
.card {
	background-color:beige;
	 color: black;
			} 
		.card label {
    font-size: 0.8571em;
    margin-bottom: 5px;
    color:black;
}
		
 .main-panel {
	 
    background-image: url(assets/img/11.jpg);
     background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
   
}
		.navbar.navbar-transparent a:not(.dropdown-item):not(.btn) {
    color: #ffffff;
}
		.form-group.no-border .form-control, .form-group.no-border .form-control+.input-group-prepend .input-group-text, .form-group.no-border .form-control+.input-group-append .input-group-text, .input-group.no-border .form-control, .input-group.no-border .form-control+.input-group-prepend .input-group-text, .input-group.no-border .form-control+.input-group-append .input-group-text {
    background-color: rgb(255, 255, 255);
    border: medium none;
}
		.navbar.navbar-transparent .nav-item .nav-link:not(.btn) {
    color: #ffffff;
}
		
		body {
    color: #ffffff;
    font-size: 14px;
    font-family: "Montserrat", "Helvetica Neue", Arial, sans-serif;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
}
		
.navbar .navbar-toggler-bar {
    display: block;
    position: relative;
    width: 22px;
    height: 1px;
    border-radius: 1px;
    background: #ffffff;
}
		.sidebar[data-color="white"] .nav li a {
    color: #000000;
    
}
	</style>

  <div class="wrapper">
    
	  <!----- Sidebar BoilerPlate Code ----->
	  
	  
	  <div class="sidebar" data-color="white">
      <!--
        data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.alllmaa.in" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="assets/img/emp.jpg">
          </div>
        </a>
        <a href="http://www.alllmaa.in" class="simple-text logo-normal">
          ALLLMAA Employee
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="EmpDashboard.aspx">
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
         <li>
            <a href="notices.aspx">
              <i class="nc-icon nc-paper"></i>
              <p>Notices</p>
            </a>
          </li>
          <li>
            <a href="holidays.aspx">
              <i class="nc-icon nc-satisfied"></i>
              <p>Holidays</p>
            </a>
          </li>
          <li>
            <a href="curriculumn.aspx">
              <i class="nc-icon nc-book-bookmark"></i>
              <p>Curriculum</p>
            </a>
          </li>
			<li>
            <a href="leadgeneration.aspx">
              <i class="nc-icon nc-sun-fog-29"></i>
              <p>Lead Generation</p>
            </a>
          </li>
          
          <li>
            <a href="career.aspx">
              <i class="nc-icon nc-send"></i>
              <p>Careers</p>
            </a>
          </li>
			 <li>
            <a href="changepassword.aspx">
              <i class="nc-icon nc-key-25"></i>
              <p>Change Password</p>
            </a>
			</li>
		
		  </ul>
      </div>
    </div>
    
	  
	  <!----- SideBar Boiler Plate Code ---->
	  
	  <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">CHANGE PASSWORD</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">
              
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="#pablo">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
				<li class="nav-item">
                <a class="nav-link btn-rotate" href="#pablo">
                  <i class="nc-icon nc-support-17"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
	  
      <!-- <div class="panel-header panel-header-lg">


  <canvas id="bigDashboardChart"></canvas>


</div> -->
      <div class="content">
                <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">GET YOUR PASSWORD</h5>
				  
              </div>
              <div class="card-body">
                
					  <div class="row">
                    <div class="col-md-12 pr-3">
                      <div class="form-group">
                        <label>EMPLOYEE NAME : </label>
                        <input type="text" class="form-control" placeholder="ENTER YOUR REGISTERED NAME" value="">
                      </div>
                    </div>
                  <div class="col-md-12 pr-3">
                      <div class="form-group">
                  
                        <button class="btn btn-primary btn-block">GET PASSWORD</button> 
						</div>
                    </div>
				
						  
				  
				  </div>
			    </div>
		     </div>
		  </div>
		  
		  
		  
		  
      </div>
       <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            
            <div class="credits ml-auto">
              <span class="copyright">
                ©
                <script>
                    document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by Alllmaa IT Solution Pvt. Lmt.
              </span>
            </div>
          </div>
        </div>
      </footer>
    
  
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
      $(document).ready(function () {
          // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
          demo.initChartsPages();
      });
  </script>
</body>

</html>
