
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="targetshow.aspx.cs" Inherits="targetshow" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>EmployeePanel| Alllmaa IT Solution Pvt Ltd</title>
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
        .auto-style2 {
            width: 100px;
        }
                .auto-style3 {
            width: 100px;
            font-weight: bold;
        }
                        .auto-style4 {
            width: 100px;
            font-weight: bold;
            height: 11px;
        }
                                .auto-style5 {
            height: 11px;
            width: 213px;
        }
                                        .auto-style6 {
            height: 11px;
            font-weight: bold;
        }
                                                .auto-style7 {
            width: 100px;
            font-weight: bold;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 213px;
        }
        .auto-style10 {
            height: 26px;
            width: 213px;
        }
    </style>
</head>
<!--/head-->
<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">

                    <div class="col-sm-6 col-xs-4">


                        <div class="top-number">
                            <p><i class="fa fa-phone-square"></i>+91-0522-4308097</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img src="images/COMPANY LOGO.png" alt="logo"></a>
                </div>

                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="EmpDashboard.aspx">Home</a></li>

                        <li><a href="testnotice.aspx">Notices</a></li>
                        <li><a href="holidays.aspx">Holidays</a></li>
                        <li><a href="Curriculumn.aspx">Curriculumn</a></li>
                        <li><a href="Careers.aspx">Careers</a></li>
                        <li><a href="ContactUs.aspx">Contact-Us</a></li>


                    </ul>
                </div>
            </div>
            <!--/.container-->
        </nav>
        <!--/nav-->

    </header>
    <!--/header-->

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Alllmaa IT Solution Pvt.Ltd</h1>
                                    <h2 class="animation animated-item-2">ISO-Registered Certified Company.</h2>
                                    <h2 class="animation animated-item-2">Think Beyond Imagination !</h2>
                                    <a class="btn-slide animation animated-item-3" href="ReadMore.aspx">Read More</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!-- <img src="images/slider/img1.png" class="img-responsive">-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Alllmaa IT Solution Pvt.Ltd</h1>
                                    <h2 class="animation animated-item-2">ISO-Registered Certified Company..</h2>
                                    <h2 class="animation animated-item-2">Think Beyond Imagination !</h2>
                                    <a class="btn-slide animation animated-item-3" href="ReadMore.aspx">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!--<img src="images/slider/img2.png" class="img-responsive">-->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Alllmaa IT Solution Pvt.Ltd</h1>
                                    <h2 class="animation animated-item-2">ISO-Registered Certified Company..</h2>
                                    <h2 class="animation animated-item-2">Think Beyond Imagination !</h2>
                                    <a class="btn-slide animation animated-item-3" href="ReadMore.aspx">Read More</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <!--<img src="images/slider/img3.png" class="img-responsive">-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.item-->
            </div>
            <!--/.carousel-inner-->
        </div>
        <!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!--/#main-slider-->
    <form id="Frm" runat="server">
        <section id="feature">

            <div class="center wow fadeInDown">
                <h2>Welcome:-<asp:Label ID="lblempname" runat="server"></asp:Label>To Alllmaa
                </h2>
                <p class="lead">
                    <table style="width: 100%;">
                        <tr>
                            <td><strong>Target Allotted!</strong></td>
                            <td>
                                <tr>
                            <td class="auto-style9">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server"
                                            BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!"
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
                                            AutoGenerateColumns="False" PageSize="50">
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="targetname" HeaderText="targetname" SortExpression="targetname" />
                                                <asp:BoundField DataField="numdays" HeaderText="numdays" SortExpression="numdays" />
                                                <asp:BoundField DataField="fromdate" HeaderText="fromdate" SortExpression="fromdate" />
                                                <asp:BoundField DataField="todate" HeaderText="todate" SortExpression="todate" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                  </div>
                            </td>
                        </tr><br />
                                <asp:DropDownList ID="ddltarget" runat="server"></asp:DropDownList></td>
                           Target Progress: <asp:TextBox ID="txttarget" runat="server" ValidationGroup="l"></asp:TextBox>
                            <td class="auto-style9">&nbsp;<asp:HiddenField ID="hftargetId" runat="server" />
                            </td>
                        </tr>
                                           <asp:Button ID="btnsave" runat="server" Text="Submit" OnClick="btnsave_Click" />
                        <tr>
                            <td class="auto-style9">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvtarget" CssClass="table table-hover" runat="server"
                                            BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!"
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
                                            AutoGenerateColumns="False" PageSize="50">
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="targetname" HeaderText="targetname" SortExpression="targetname" />
                                                <asp:BoundField DataField="numdays" HeaderText="numdays" SortExpression="numdays" />
                                                <asp:BoundField DataField="fromdate" HeaderText="fromdate" SortExpression="fromdate" />
                                                <asp:BoundField DataField="todate" HeaderText="todate" SortExpression="todate" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                  </div>
                            </td>
                        </tr>
                    </table>
            </div>
            </section>
    </form>
</body>
</html>
