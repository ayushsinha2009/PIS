<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard1.aspx.cs" Inherits="AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Panel| Alllmaa IT Solution Pvt Ltd</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/COMPANY LOGO.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
    </style>
</head><!--/head-->
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1" style="background-color:black;"><a class="navbar-brand" href="Newfolder/Default2.aspx">
                    <img alt="logo" src="images/COMPANY%20LOGO.png" style="width: 66px" /></a></td>
                <td style="background-color:black;"><h2 style="color:white; text-align:center;">WELCOME ADMIN </h2></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="BtnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click" />
                    <br />
                    <a href="AdminDashboard.aspx">Admin Dashboard</a>
                    <br />
                    <a href="AddCareers.aspx">Insert Careers</a>
                    <br />
                    <a href="Add Employee.aspx">Add Employee</a>
                    <br />
                    <a href="AddLeaveDetails.aspx">Add Leave Details</a>
                    <br />
                       <a href="ViewAppliedOff.aspx">View Off Details</a>
                </td>
                <td><strong>Contact Details !</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvContact" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" OnPageIndexChanging="gvContact_PageIndexChanging" EmptyDataText="No Records !">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
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
