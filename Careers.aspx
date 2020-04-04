<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="Careers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Careers | Alllmaa IT Solution Pvt Ltd</title>
	
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

<body class="homepage">
    
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

   
       
    </section><!--/#main-slider-->
    <form id="Frm" runat="server">
    <section id="feature" >
        
        <div class="center wow fadeInDown">
                <h2>Careers At ALLLMAA IT </h2>
                <p class="lead"><asp:Repeater ID="ReapeterDetails" runat="server">
    <HeaderTemplate>
    <table>
    <tr>
    <td>
    <b>Jobs</b>
    </td>
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
    <tr style="background-color:#EBEFF0">
    <td>
    <table>
    <tr>
   <h3> <td >
     <center>
   Post <asp:Label ID="lblPost" runat="server" Text='<%#Eval("Post") %>' Font-Bold="true"/>
    </center></h3>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td><h3>Technology
    <center>
    <asp:Label ID="lblTechnology" runat="server" Text='<%#Eval("Technology") %>'/>
        </center></h3>
    </td>
    </tr>
    <tr>
    <td>
    <table>
    <tr><h3>Discription
        <center>
    <td ><asp:Label ID="lbldesc" runat="server" Font-Bold="true" Text='<%#Eval("Description") %>'/></td>
    <td ></td>
        </center></h3>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td colspan="2"><a href="ContactUs.aspx" target="_blank">Apply Online</a></td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater></p>
            </div>

          <div class="center wow fadeInDown">
                <h2></h2>
                <p class="lead"><asp:Label ID="lblmsg" runat="server"></asp:Label></p>
            </div>
               
        </div><!--/.container-->
    </section><!--/#feature-->
    
      
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
