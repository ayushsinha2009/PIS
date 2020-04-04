<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCareers.aspx.cs" Inherits="AddCareers" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/ALLMAAA_ICO.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    ADD CAREER  
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />-
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
	 
    background-image: url(assets/img/asphalt-bokeh-city-depth-of-field-wallpaper.jpg);
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
	</style>

  <div class="wrapper">
    
	  <!----- Sidebar BoilerPlate Code ----->
	  
	  
	  <div class="sidebar" data-color="white" data-active-color="danger">
      <!--
        data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.alllmaa.in" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="../assets/img/Admin.png">
          </div>
        </a>
        <a href="http://www.alllmaa.in" class="simple-text logo-normal">
       ALLLMAA ADMIN 
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="AdminDashboard.aspx">
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
         <li>
            <a href="Add Employee.aspx">
              <i class="nc-icon nc-badge"></i>
              <p>Add Employee</p>
            </a>
          </li>
          <li>
            <a href="AddStaffattendance.aspx">
              <i class="nc-icon nc-touch-id"></i>
              <p>Add Staff Attendance</p>
            </a>
          </li>
          <li>
            <a href="AddNotices.aspx">
              <i class="nc-icon nc-paper"></i>
              <p>Add Notice</p>
            </a>
          </li>
          <li>
            <a href="AddLeaveDetails.aspx">
              <i class="nc-icon nc-controller-modern"></i>
              <p>Add Leave Details</p>
            </a>
          </li>
          <li>
            <a href="AddCurriculumn.aspx">
              <i class="nc-icon nc-book-bookmark"></i>
              <p>Add Curriculum</p>
            </a>
			</li>
			 <li>
            <a href="AddCareers.aspx">
              <i class="nc-icon nc-hat-3"></i>
              <p>Add Careers</p>
            </a>
			</li>
			 <li>
            <a href="Depart.aspx">
              <i class="nc-icon nc-app"></i>
              <p>Departments</p>
            </a>
			</li>
			 <li>
            <a href="Project Approval.aspx">
              <i class="nc-icon nc-spaceship"></i>
              <p>Project Approval</p>
            </a>
			</li>
			 <li>
            <a href="Listholiday.aspx">
              <i class="nc-icon nc-satisfied"></i>
              <p>List Holidays</p>
            </a>
			</li>
			 <li>
            <a href="Target.aspx">
              <i class="nc-icon nc-user-run"></i>
              <p>Target</p>
            </a>
			</li>
			<li>
            <a href="Careers.aspx">
              <i class="nc-icon nc-send"></i>
              <p>Careers</p>
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
            <a class="navbar-brand" href="#pablo">ADD CAREER</a>
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
                <h5 class="card-title">ADD CAREER DETAILS</h5>
				  
              </div>
                 <form id="Form1" runat="server">
           <%--   <div class="card-body">--%>
               
               
                  <tr>
                <td class="auto-style1">&nbsp;</td>
                <td><strong>Fields Marked * Are Mandatory !</strong></td>
                <td>&nbsp;</td>
            </tr><br/>
           <br/> <tr>
                <td class="auto-style2">Post *</td>
                <td>
                      <div class="col-md-12 pr-3">
                      <div class="form-group">
                    <asp:TextBox ID="txtpost" runat="server" CssClass="form-control" placeholder="POST" ValidationGroup="c"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpost" ErrorMessage="Enter Post" style="font-weight: 700" ValidationGroup="c"></asp:RequiredFieldValidator>
             </div>
                          </div>
                             </td>

            </tr><br/>
            <tr>
                <td class="auto-style2">Technology *</td>
                <td>    <div class="col-md-12 pr-3">
                      <div class="form-group">
                   
                    <b>
                   
                     <asp:TextBox ID="txttechnology" runat="server" CssClass="form-control" ValidationGroup="c"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttechnology" ErrorMessage="Enter Technology" ValidationGroup="c"></asp:RequiredFieldValidator>
                    </b>
                              </div>
                          </div></td>
               
            </tr><br/>
            <tr>
                <td class="auto-style3">Description *</td>
                <td class="auto-style4">
                     <div class="col-md-12 pr-3">
                      <div class="form-group">
                    <asp:TextBox ID="txtdesc" runat="server" Height="41px" TextMode="MultiLine" CssClass="form-control"  ValidationGroup="c"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdesc" ErrorMessage="Enter Description" ValidationGroup="c"></asp:RequiredFieldValidator>
                       </div>
                          </div></td>
                <td class="auto-style4"></td>
            </tr><br/>
            <tr>
                <td class="auto-style2">Source Type *</td>
    	<div class="col-md-6 pr-1">
					<div class="dropdown">
  					
                <td>
                    <asp:DropDownList ID="DdnSource" runat="server" Height="40px" Width="630px" ValidationGroup="c">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="1">Open</asp:ListItem>
                        <asp:ListItem Value="2">Close</asp:ListItem>
                    </asp:DropDownList>
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DdnSource" ErrorMessage="Select Source" InitialValue="0" ValidationGroup="c"></asp:RequiredFieldValidator>
                    </b>
                </td>
                </div>
                </div>
            </tr><br/>
            <tr>
                              <td>
                                  <div class="row">
                   <div class="col-md-4 pr-3">
                                    <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-primary btn-block" OnClick="BtnAdd_Click" ValidationGroup="c" />
                    &nbsp;<asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
                    &nbsp;<asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
               </div>
                        </td>

            </tr><br/>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td><strong>View Careers Details !</strong></td>
                <td>&nbsp;</td>
            </tr><br/>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="GVCareers" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateSelectButton="True" OnPageIndexChanging="GVCareers_PageIndexChanging" OnSelectedIndexChanged="GVCareers_SelectedIndexChanged" EmptyDataText="No Records">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr><br/>
 </div>
    </form>
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
   </div> 
  
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  <script>
      $(document).ready(function () {
          // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
          demo.initChartsPages();
      });
  </script>
</body>

</html>
