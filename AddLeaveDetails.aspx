<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddLeaveDetails.aspx.cs" Inherits="AddLeaveDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head" runat="server">
    <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png"/>
  <link rel="icon" type="image/png" href="../assets/img/ALLMAAA_ICO.png"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Add Leave Details  
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
   
</head><!--/head-->
    
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
    
	  
	<form runat="server">
	  
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
            <a class="navbar-brand" href="#pablo">Leave Details</a>
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
    
    

          <div class="content">
         <div class="col-md-8">
            <div class="card card-user">
            
                 <div class="card-header">
            <h5 class="card-title">Add Leave Details</h5>
                     <strong>All Fields Mark * Are Mandatory !</strong>
               
              <div class="dropdown">
            
              
                    Employee Name
               
                    <asp:DropDownList ID="ddnemp" runat="server" CssClass="btn btn-primary dropdown-toggle" data-toggle="dropdown" ValidationGroup="r" Height="19px" Width="125px">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="1">Mr.</asp:ListItem>
                        <asp:ListItem Value="2">Mrs.</asp:ListItem>
                        <asp:ListItem Value="3">Miss.</asp:ListItem>
                    </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnemp" ErrorMessage="Select Employee" InitialValue="0" ValidationGroup="r"></asp:RequiredFieldValidator>
           </div>
                  </div>
                <td class="auto-style2">
                    Total Leave</td>
                <td>
                    <asp:TextBox ID="txtotal" runat="server" ValidationGroup="r"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtotal" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr><tr>
                <td class="auto-style3">
                    Casual Leave</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtcl" runat="server" ValidationGroup="r"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtcl" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4"></td>
            </tr><tr>
                <td class="auto-style2">
                    Sick Leave</td>
                <td>
                    <asp:TextBox ID="txtsl" runat="server" ValidationGroup="r"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtsl" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    <strong>&nbsp;</strong></td>
                <td>&nbsp;</td>
            </tr><tr>
                <td class="auto-style2">
                    Paid Leave</td>
                <td>
                    <asp:TextBox ID="txtpl" runat="server" ValidationGroup="r"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtpl" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr><tr>
                <td class="auto-style2">
                    Unpaid Leave</td>
                <td>
                    <asp:TextBox ID="txtupl" runat="server" ValidationGroup="r"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtupl" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr><tr>
                  <asp:Label ID="lblt" runat="server"></asp:Label>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtnAdd" runat="server" Text="Add Leave Details" ValidationGroup="r" OnClick="BtnAdd_Click" />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvleavedt" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" EmptyDataText="No Records !" OnPageIndexChanging="gvleavedt_PageIndexChanging" AutoGenerateColumns="False">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="Id" />
                    <asp:BoundField DataField="EmpFirstname" HeaderText="Employee Name" />
                    <asp:BoundField DataField="TotalLeave" HeaderText="Total Leave" />
                    <asp:BoundField DataField="CasualLeave" HeaderText="Casual Leave" />
                    <asp:BoundField DataField="SickLeave" HeaderText="Sick Leave" />
                    <asp:BoundField DataField="PaidLeave" HeaderText="Paid Leave" />
                    <asp:BoundField DataField="UnPaidLeave" HeaderText="Un Paid Leave" />
                                          
                </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td><h2>2019 .Designed & Developed By- Alllmaa IT Solution Pvt. Ltd !!</h2></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
