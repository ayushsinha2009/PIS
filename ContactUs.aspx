<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" EnableEventValidation="false" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact Us | Alllmaa IT Solution Pvt Ltd</title>
	
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
</head><!--/head-->
<body>
    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +91-0522-4308097</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><img src="images/COMPANY LOGO.png" alt="logo"></a>
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
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="contact-info">
        <div class="center">                
            <h2>How to Reach Us?</h2>
            <p class="lead"> Below Mentioned Address</p>
        </div>
       <%-- //// Map Section ////--%>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                       
                         <img src="images/contact.jpg" alt="logo">
                        <br />
                        <a href="#" target="_blank">View Map</a>
                        
                    </div>
        <%-- ////End Map Section ////--%>
                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>Head Office/Corporate Office</h5>
                                    <p>4/72 Vipul Khand 4
                                       Infront of IMRT Business School Near to SRS Mall Lucknow      Uttar Pardesh</p>
                                    <p>Phone:0522-4026520<br>
                                    Email Address: info@sonuojha.in</p>
                                </address>

                                
                            </li>
    

                            <li class="col-sm-6">
                               
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->
    <form id="form1" runat="server">
    <section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>Drop Your Message</h2>
                <p class="lead"></p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Fields Mark * Are Mandatory!</label>
                            <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                        </div>
                        <div class="form-group">
                            <label>Name *</label>
                            <asp:TextBox ID="txtname" ValidationGroup="a" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <asp:TextBox ID="txtemail" ValidationGroup="a" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label>Mobile No *+91-</label>
                            <asp:TextBox ID="txtno" ValidationGroup="a" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtno" ErrorMessage="Enter Mobile No" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:FilteredTextBoxExtender ID="txtno_FilteredTextBoxExtender" 
            runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtno">
        </asp:FilteredTextBoxExtender>
                        </div>
                        <div class="form-group">
                            <label>Company Name *</label>
                         <asp:TextBox ID="txtcmpname" ValidationGroup="a" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcmpname" ErrorMessage="Enter Company Name" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>                        
                    
                        <div class="form-group">
                            <label>Subject *</label>
                            <asp:TextBox ID="txtsub" ValidationGroup="a" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsub" ErrorMessage="Enter Subject" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <asp:TextBox ID="txtmsg" ValidationGroup="a" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmsg" ErrorMessage="Enter Message" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>                        
                        <div class="form-group">
                             
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>                           
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" Text="Submit" ValidationGroup="a" />
                        </div>
                    </div>
                
            </div><!--/.row-->
        <!--/.container-->
    </section><!--/#contact-page-->


    <footer id="footer" class="midnight-blue">
          <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2019 .Designed & Developed By- Alllmaa IT Solution Pvt. Ltd !! All Rights Reserved !!.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                     <li><a href="Default.aspx">Home</a></li>
                        <li><a href="Admin.aspx">Admin</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>

    </form>
</body>
</html>
