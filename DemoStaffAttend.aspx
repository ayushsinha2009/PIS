<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoStaffAttend.aspx.cs" Inherits="DemoStaffAttend" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="assets/img/ALLMAAA_ICO.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>STAFF ATTENDANCE  
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
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
<body>
    <form id="form1" runat="server">
        <div class="wrapper">

            <!----- Sidebar BoilerPlate Code ----->

            <div class="sidebar" data-color="white" data-active-color="danger">

                <!-- data-color="blue | green | orange | red | yellow"  -->
                <div class="logo">
                    <a href="http://www.alllmaa.in" class="simple-text logo-mini">
                        <div class="logo-image-small">
                            <img src="assets/img/Admin.png" />
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
                        <li class="active">
                            <a href="./dashboard.html">
                                <i class="nc-icon nc-bank"></i>
                                <p>Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AddEmployee.html">
                                <i class="nc-icon nc-badge"></i>
                                <p>Add Employee</p>
                            </a>
                        </li>

                        <li>
                            <a href="./AddStaffattendance.html">
                                <i class="nc-icon nc-touch-id"></i>
                                <p>Add Staff Attendance</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AddNotice.html">
                                <i class="nc-icon nc-paper"></i>
                                <p>Add Notice</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AddLeaveDetails.html">
                                <i class="nc-icon nc-controller-modern"></i>
                                <p>Add Leave Details</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AddCurriculum.html">
                                <i class="nc-icon nc-book-bookmark"></i>
                                <p>Add Curriculum</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AddCareers.html">
                                <i class="nc-icon nc-hat-3"></i>
                                <p>Add Careers</p>
                            </a>
                        </li>
                        <li>
                            <a href="./Depart.html">
                                <i class="nc-icon nc-app"></i>
                                <p>Departments</p>
                            </a>
                        </li>
                        <li>
                            <a href="./Approval.html">
                                <i class="nc-icon nc-spaceship"></i>
                                <p>Project Approval</p>
                            </a>
                        </li>
                        <li>
                            <a href="./Listholiday.html">
                                <i class="nc-icon nc-satisfied"></i>
                                <p>List Holidays</p>
                            </a>
                        </li>
                        <li>
                            <a href="./Target.html">
                                <i class="nc-icon nc-user-run"></i>
                                <p>Target</p>
                            </a>
                        </li>
                        <li>
                            <a href="./Careers.html">
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
                            <a class="navbar-brand" href="#pablo">STAFF ATTEDANCE</a>
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
                <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>

                <div class="content">
                    <div class="col-md-8">
                        <div class="card card-user">
                            <div class="card-header">
                                <h5 class="card-title">STAFF ATTENDANCE DETAILS</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <h6>Employee department</h6>
                                        <asp:DropDownList ID="ddldeprt" CssClass="dropdown btn btn-primary dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="ddldeprt_SelectedIndexChanged" runat="server" ValidationGroup="a">
                                            <asp:ListItem>Select Department</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddldeprt" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6 pr-1">
                                        <h6>Employee Name</h6>
                                        <asp:DropDownList ID="ddlempname" runat="server" CssClass="dropdown btn btn-primary dropdown-toggle">
                                            <asp:ListItem>Employee Name</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlempname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 pr-3">
                                        <div class="form-group">
                                            <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" placeholder="Date" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                            <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 pr-3">
                                        <div class="form-group">
                                            <label>Time In</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttimein" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txttimein" CssClass="form-control" runat="server" placeholder="In HH:MM:SS.." autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 pr-3">
                                        <div class="form-group">
                                            <label>Time Out</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttimeout" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txttimeout" CssClass="form-control" AutoPostBack="true" runat="server" placeholder="In HH:MM:SS" autocomplete="off" OnTextChanged="txttimeout_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 pr-3">
                                        <div class="form-group">
                                            <label>Total Working Hours</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttwhrs" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txttwhrs" CssClass="form-control" runat="server" placeholder="In HH:MM:SS" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <%-- <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button" id="Button1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                IS STAFF PRESENT OR NOT ?
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">PRESENT</a>
                                                <a class="dropdown-item" href="#">ABSENT</a>
                                                <a class="dropdown-item" href="#">HALF DAY</a>
                                            </div>
                                        </div>--%>
                                        <label>Is Staff Present or Not</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnprsnt" InitialValue="0" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                                        <asp:DropDownList ID="ddnprsnt" ValidationGroup="a" CssClass="dropdown btn btn-secondary dropdown-toggle" runat="server">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Present</asp:ListItem>
                                            <asp:ListItem Value="2">Absent</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Staff Attendance" ValidationGroup="a" OnClick="BtnAdd_Click" />
                                        <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        <%--<button class="btn btn-primary btn-block">SUBMIT STAFF ATTENDANCE</button>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card card-user">
                            <div class="card-header">
                                <h5 class="card-title">ATTENDANCE DETAILS</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <%--<table class="table">
                                        <thead class=" text-primary">
                                            <th>NAME
                                            </th>
                                            <th>DATE
                                            </th>
                                            <th>DAY
                                            </th>
                                            <th>MONTH
                                            </th>
                                            <th>IN
                                            </th>
                                            <th>OUT
                                            </th>
                                            <th>TOTAL
                                            </th>
                                            <th>STATUS
                                            </th>
                                            <th>CREATEDBY
                                            </th>
                                            <th>CREATEDON
                                            </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>A
                                                </td>
                                                <td>B
                                                </td>
                                                <td>C
                                                </td>
                                                <td>A
                                                </td>
                                                <td>B
                                                </td>
                                                <td>C
                                                </td>
                                                <td>A
                                                </td>
                                                <td>B
                                                </td>
                                                <td>C
                                                </td>
                                                <td>A
                                                </td>
                                                <tr>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>
                                                    <td>B
                                                    </td>
                                                    <td>C
                                                    </td>
                                                    <td>A
                                                    </td>


                                                </tr>
                                        </tbody>
                                    </table>--%>
                                    <asp:GridView ID="gvdetails" CssClass="table" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!"
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal"
                                        AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="20">
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle CssClass="text-primary" />
                                        <Columns>
                                            <asp:BoundField DataField="FullName" HeaderText="Staff Full Name" />
                                            <asp:BoundField DataField="Staffid" HeaderText="Staff Id" Visible="false" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" />
                                            <asp:BoundField DataField="Month" HeaderText="Month" />
                                            <asp:BoundField DataField="Day" HeaderText="Day" />
                                            <asp:BoundField DataField="Timein" HeaderText="Time In" />
                                            <asp:BoundField DataField="Tmeout" HeaderText="Time Out" />
                                            <asp:BoundField DataField="TotalWorkingHours" HeaderText="Total Working Hours" />
                                            <asp:BoundField DataField="StaffPresent_Absent" HeaderText="Staff Present Absent" />
                                            <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                            <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                        </Columns>
                                    </asp:GridView>
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
    </form>
</body>
</html>
