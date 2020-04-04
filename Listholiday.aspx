<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listholiday.aspx.cs"  EnableEventValidation = "false"Inherits="Listholiday" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html lang="en">

<head id="Head1" runat="server">
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/ALLMAAA_ICO.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    LIST HOLIDAYS
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
            <a href="targetprogress.aspx">
              <i class="nc-icon nc-user-run"></i>
              <p>Target Progress</p>
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
            <a class="navbar-brand" href="#pablo">HOLIDAY</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
           <div>
                                                      <asp:Button ID="btnLogout"  runat="server" Text="Logout" OnClick="btnLogout_Click1" />
                                       
               </div>
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
              <div class="card-body">
                <form  id="form1" runat="server">
					
					<div class="row">
                    <div class="col-md-12 pr-3">
                
                              <div class="form-group">
                </div>
            </section>
            <section class="content">
               <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server">

               </asp:ToolkitScriptManager>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="panel lobidisable panel-bd">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <h4>Holidays Details</h4>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
        <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" placeholder="Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
           

                                      <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                    
                                </div>
                                <div class="form-group">
                                    <label>NAME OF HOLIDAY</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txttopic" CssClass="form-control" runat="server" placeholder="Topic.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                     </div>
                                <div class="form-group">
                                    <label>DISCRIPTION</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdesc" TextMode="MultiLine" CssClass="form-control" runat="server" placeholder="Description.." ValidationGroup="c"></asp:TextBox>

                                                  </div>

                     <div class="form-group">


                                    <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Holiday" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                    <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Holiday" OnClick="Btnupdate_Click" />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Holiday" OnClick="Btndel_Click" />
                                    <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click" />
                                    <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-bd lobidrag">
                            <div class="panel-heading">
                                <div class="panel-title">

                                    <h4>HOLIDAYS</h4>
                                </div>
                                <div style="float: right;">
                                    <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" DataKeyNames="id" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <Columns>

                                            <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                  </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="date" HeaderText="Date" />
                                            <asp:BoundField DataField="name" HeaderText="Name of Holiday" />
                                            <asp:BoundField DataField="description" HeaderText="hoilday Description" />
                                            <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                            <asp:BoundField DataField="Createdon" HeaderText="Created on" />

                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </section>

        </div>
        
                              </div>
                    </form>
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
