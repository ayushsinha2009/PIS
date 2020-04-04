﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Services | Alllmaa IT Solution Pvt Ltd</title>
	
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
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="AbouUs.aspx">About Us</a></li>
                        <li><a href="Services.aspx">Services</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Expertise<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="SoftwareDevelopment.aspx">Software Development</a></li>
                                <li><a href="WebSite Development.aspx">Website Design & Dev.</a></li>
                                <li><a href="MobileAppDevelopment.aspx">Mobile App Development</a></li>
                                <li><a href="ITConsultancy.aspx">IT Consultancy</a></li>
                                <li><a href="GISOperations.aspx">GIS Operations</a></li>
                                <li><a href="Digitization.aspx">Digitization</a></li>
                            </ul>
                        </li>
                        <li><a href="EmployeeLogin.aspx">Employee Login</a></li>
                        <li><a href="Careers.aspx">Careers</a></li>
                        <li><a href="ContactUs.aspx">Contact-Us</a></li>
                        
                                              
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

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
                                    <h2 class="animation animated-item-2">ISO Certified 9001-2015 Company !</h2>
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
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Alllmaa IT Solution Pvt.Ltd</h1>
                                    <h2 class="animation animated-item-2">ISO Certified 9001-2015 Company !</h2>
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
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Alllmaa IT Solution Pvt.Ltd</h1>
                                    <h2 class="animation animated-item-2">ISO Certified 9001-2015 Company !</h2>
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
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->

    <section id="feature" >
        
        <div class="center wow fadeInDown">
                <h2>Service.</h2>
                <p class="lead">We are committed to provide defect free software products conforming to customer requirements on time by complying with the requirements of our quality management system and continuously improving its effectiveness through management reviews of the quality objectives.In our systematic approach of quality service using proven practices and tested techniques to ensure highest quality. We help you to make online presence of your on demand business. We provide well structured and ergonomically sound interfaces which run consistently in cross platforms with user friendly navigation and an eye catching quality service.</p>
            </div>

          <div class="center wow fadeInDown">
                <h2>Objectives.</h2>
                <p class="lead">We have set forth before us the following objectives, which are measurable and are consistent with the 'Quality Policy'.Since its establishment EIPL facilities have maintained the highest standards of quality control and assurance adhering to the self enunciated SOPs (Standard operating Procedures) for efficient and hazard-free operations.In a similar way, EIPL has various departments and personnel monitoring the manufactured products and processes. We adjust and adapt to the changing needs of our customers and remain dedicated in our efforts to serve them to the best of our ability.</p>
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
</body>
</html>
