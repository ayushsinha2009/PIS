<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project Approval.aspx.cs" Inherits="Project_Approval" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/ALLMAAA_ICO.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>APPROVAL
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
    <style type="text/css">
        .card-user .card-body {
            min-height: 171px;
        }

        .card {
            background-color: beige;
            color: black;
        }

            .card label {
                font-size: 0.8571em;
                margin-bottom: 5px;
                color: black;
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

        .form-group.no-border .form-control, .form-group.no-border .form-control + .input-group-prepend .input-group-text, .form-group.no-border .form-control + .input-group-append .input-group-text, .input-group.no-border .form-control, .input-group.no-border .form-control + .input-group-prepend .input-group-text, .input-group.no-border .form-control + .input-group-append .input-group-text {
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
</head>

<body class="">

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
                <a href="http://www.alllmaa.in" class="simple-text logo-normal">ALLLMAA ADMIN 
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
                        <a class="navbar-brand" href="#pablo">PROJECT APPROVAL</a>
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
                <form id="Form1" runat="server">
                    <div class="col-md-8">
                        <div class="card card-user">
                            <div class="card-header">
                               

                            </div>
                          
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>

                                    <strong>Project Approval:-</strong><asp:DropDownList ID="ddnleave" runat="server" ValidationGroup="a" CssClass="form-control">
                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">Approved</asp:ListItem>
                                        <asp:ListItem Value="2">Dis Approved</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        runat="server" ControlToValidate="ddnleave" ErrorMessage="*"
                                        ValidationGroup="a"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <div class="auto-style2">
                                        Select Employee
                    
                                    </div>

                                    <p style="text-align: center">
                                        <h3>Employee department</h3>
                                        <asp:DropDownList ID="ddldeprt" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddldeprt_SelectedIndexChanged"
                                            ValidationGroup="a">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddldeprt" ErrorMessage="*"
                                            ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </p>
                                    <p style="text-align: center">
                                        <h3>Employee name</h3>
                                        <asp:DropDownList ID="ddlempname" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlempname_SelectedIndexChanged1">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlempname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </p>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:Button ID="BtnUpdate" runat="server" Text="Update" ValidationGroup="a" OnClick="BtnUpdate_Click1" />
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                    <asp:Label ID="lblid" Visible="false" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btnsend" runat="server" Text="Send Conformation" ValidationGroup="a" OnClick="btnsend_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style7">

                                    <div class="col-sm-12">
                                        <asp:Panel ID="pnl0" runat="server" Style="overflow: scroll">
                                            <asp:GridView ID="gvLeave" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="leadid"
                                                BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal"
                                                OnSelectedIndexChanged="gvLeave_SelectedIndexChanged" OnPageIndexChanging="gvLeave_PageIndexChanging"
                                                AllowPaging="True" AllowSorting="true" PageSize="25" EmptyDataText="No Records !" AutoGenerateColumns="False" AutoGenerateSelectButton="True">

                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:BoundField DataField="EmpFirstname" HeaderText="Emp Name" />
                                                    <asp:BoundField DataField="LeadType" HeaderText="Lead Type" />
                                                    <asp:BoundField DataField="Project" HeaderText="Project" />
                                                    <asp:BoundField DataField="Client" HeaderText="Client Name" />
                                                    <asp:BoundField DataField="Budget" HeaderText="Budget" />
                                                    <asp:BoundField DataField="ProjectDescription" HeaderText="Project Description" />
                                                   <%-- <asp:TemplateField HeaderText="Status">
                                                        <ItemTemplate>
                                                            <asp:Label ID="gvfdjf" runat="server" Text='<%#getsfinal(Eval("WhetherApproved_DisApproved").ToString())%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    <asp:BoundField DataField="WhetherApproved_DisApproved" HeaderText="Status" />
                                                    <asp:BoundField DataField="Createdby" HeaderText="Createdby" />
                                                    <asp:TemplateField HeaderText="Createdon">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lnl" runat="server" Text='<%#Eval("CreateOn","{0:dd/MMM/yyyy}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <%--<asp:BoundField DataField="Createdon" HeaderText="Createdon" DataFormatString="{0: dd-MMM-yyyy}" />--%>
                                                </Columns>
                                            </asp:GridView>
                                        </asp:Panel>
                                    </div>


                                </td>
                                <td>&nbsp;</td>
                                <td class="auto-style1">
                                    <div class="col-sm-12">
                                        <asp:Panel ID="pnl1" runat="server" Style="overflow: scroll">
                                            <asp:GridView ID="grdSend" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="leadid"
                                                BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal"
                                                OnSelectedIndexChanged="gvLeave_SelectedIndexChanged" OnPageIndexChanging="gvLeave_PageIndexChanging"
                                                AllowPaging="True" AllowSorting="true" PageSize="25" EmptyDataText="No Records !" AutoGenerateColumns="False">

                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="EmpFirstname" HeaderText="Emp Name" />
                                                    <asp:BoundField DataField="LeadType" HeaderText="Lead Type" />
                                                    <asp:BoundField DataField="Project" HeaderText="Project" />
                                                    <asp:BoundField DataField="Client" HeaderText="Client Name" />
                                                    <asp:BoundField DataField="Budget" HeaderText="Budget" />
                                                    <asp:BoundField DataField="ProjectDescription" HeaderText="Project Description" />
                                                    <asp:BoundField DataField="WhetherApproved_DisApproved" HeaderText="Status" />
                                                    <asp:BoundField DataField="Createdby" HeaderText="Createdby" />
                                                    <asp:TemplateField HeaderText="Createdon">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("CreateOn","{0:dd/MMM/yyyy}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <%--<asp:BoundField DataField="Createdon" HeaderText="Createdon" DataFormatString="{0: dd-MMM-yyyy}" />--%>
                                                </Columns>
                                            </asp:GridView>
                                        </asp:Panel>
                                    </div>
                                </td>
                        </div>
                </form>
            </div>
        </div>


        <footer class="footer footer-black  footer-white ">
            <div class="container-fluid">
                <div class="row">

                    <div class="credits ml-auto">
                        <span class="copyright">©
                <script>
                    document.write(new Date().getFullYear())
                </script>
                            , made with <i class="fa fa-heart heart"></i>by Alllmaa IT Solution Pvt. Lmt.
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
