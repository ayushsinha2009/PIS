<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leadgeneration.aspx.cs" Inherits="leadgeneration" EnableEventValidation = "false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head" runat="server">
    <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png"/>
  <link rel="icon" type="image/png" href="assets/img/ALLMAAA_ICO.png"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edgse,chrome=1" />
  <title>
    LEAD GENERATION  
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"/>
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
    <form id="form1" runat="server">
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
	 
    background-image: url(assets/img/night-03.jpg);
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
            <img src="assets/img/logo-big.png">
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
            <a href="testnotice.aspx">
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
              <p>Logout</p>
                 <asp:Button ID="Button1" runat="server" Text="Logout"  CssClass="btn btn-primary btn-block" OnClick="Button1_Click"/>
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
            <a class="navbar-brand" href="#pablo">LEAD GENERATION</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
           
            <ul class="navbar-nav">
              
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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


</div> --><div class="content">
                <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">LEAD DETAILS</h5>
				  
              </div>
              <div class="card-body">
                <div class="col-sm-12">
					  <div class="row">
                    <div class="col-sm-6 pr-4">
                           <div class="form-group">
        <section id="feature">

            <div class="center wow fadeInDown">
                <h2>Welcome:-<asp:Label ID="lblempname" runat="server"></asp:Label>To Alllmaa
                </h2>
                <p class="lead">
                   
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td><strong>Lead Details!</strong></td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                </td>
                            <td>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td><strong>Fields Marked * Are Mandatory !</strong></td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        
                     <div class="dropdown">
  
                                   <strong>LeadType*:-</strong>
                                <asp:DropDownList ID="ddnlead" runat="server" ValidationGroup="l" width="400px" CssClass="btn btn-primary dropdown-toggle"  data-toggle="dropdown" aria-haspopup="true">
                                    <asp:ListItem Value="0">Select Lead</asp:ListItem>
                                    <asp:ListItem Value="1">Development</asp:ListItem>
                                    <asp:ListItem Value="2">Logo Design</asp:ListItem>  
                                </asp:DropDownList>
                                         </div> 
  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddnlead" ErrorMessage="*" ValidationGroup="l" InitialValue="0"></asp:RequiredFieldValidator>
                        					  <div class="col-md-12 pr-3">
                      <div class="form-group">
                                <b>Name Of Project *:-<asp:TextBox ID="txtproject" runat="server" CssClass="form-control"  ValidationGroup="l" width="800px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtproject" ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                           </b></div>
                         </div>
						  <div class="col-md-12 pr-3">
                      <div class="form-group"><b>Client Name *:-<asp:TextBox ID="txtclient" runat="server" ValidationGroup="l" CssClass="form-control" width="800px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtclient" ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                            </b></div> </div>
                                                    <div class="col-md-12 pr-3">
                      <div class="form-group">
                         <b>Budget *:-<asp:TextBox ID="txtbudget" runat="server" ValidationGroup="l" CssClass="form-control" width="800px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbudget" ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                           
                           
                            </b>
                          </div></div>
                         
						  <div class="col-md-12 pr-3">    <div class="form-group"><b>Project Description*:-<asp:TextBox ID="txtprojectdesc" runat="server" CssClass="form-control" Height="63px" TextMode="MultiLine" Width="800px" ValidationGroup="l"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtprojectdesc"
                                     ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                                                    </b></div></div>
  
                                <asp:Button ID="BtnAdd" runat="server" Text="Apply" CssClass="btn btn-primary btn-block" ValidationGroup="l" OnClick="BtnAdd_Click" />
                                <asp:Button ID="BtnCancel" runat="server" CssClass="btn btn-primary btn-block" OnClick="BtnCancel_Click" Text="Cancel" />
                                   <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        
                                                      <td class="auto-style2">&nbsp;</td>
                            <td>
                                <strong>Lead Approved</strong></td>
                           <td class="auto-style9">&nbsp;</td>
                        </tr>
                        </div>
                        <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:GridView ID="gvLeave" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="EmpId"
                             BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AllowPaging="True"
                             EmptyDataText="No Records !" AutoGenerateColumns="False" AutoGenerateSelectButton="True" >
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmpId" HeaderText="Id" />
                                 <asp:BoundField DataField="LeadType" HeaderText="Lead Type" />
                              <asp:BoundField DataField="Project" HeaderText="Project" />
                                <asp:BoundField DataField="Client" HeaderText="Client Name" />
                                <asp:BoundField DataField="Budget" HeaderText="Budget" />
                                <asp:BoundField DataField="ProjectDescription" HeaderText="Project Description" />
                                      <asp:BoundField DataField="WhetherApproved_DisApproved" HeaderText="Status" />
                                      <asp:BoundField DataField="Createdby" HeaderText="Createdby" />
                                      <asp:BoundField DataField="Createdon" HeaderText="Createdon" />

                                </Columns>
                        </asp:GridView>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="EmpId"
                             BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AllowPaging="True"
                             EmptyDataText="No Records !" AutoGenerateColumns="False" AutoGenerateSelectButton="True" >
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmpId" HeaderText="Id" />
                                 <asp:BoundField DataField="LeadType" HeaderText="Lead Type" />
                              <asp:BoundField DataField="Project" HeaderText="Project" />
                                <asp:BoundField DataField="Client" HeaderText="Client Name" />
                                <asp:BoundField DataField="Budget" HeaderText="Budget" />
                                <asp:BoundField DataField="ProjectDescription" HeaderText="Project Description" />
                                      <asp:BoundField DataField="WhetherApproved_DisApproved" HeaderText="Status" />
                                      <asp:BoundField DataField="Createdby" HeaderText="Createdby" />
                                      <asp:BoundField DataField="Createdon" HeaderText="Createdon" />

                                </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
              
                    </table>
               </p>
           </div>
       
        </section>  
              <!--/.container-->
          </div>
                        </div>
                          </div>

              </div>

             <!--/#feature-->
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
                </script>, made with <i class="fa fa-heart heart"></i> by Alllmaa IT Solution Pvt. Ltd.
              </span>
            </div>
          </div>
        </div>
      </footer>
    
  
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
  <script src="../assetss/demo/demo.js"></script>
  <script>
      $(document).ready(function () {
          // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
          demo.initChartsPages();
      });
  </script>
                               </form>
</body>

</html>
