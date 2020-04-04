<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Add Employee.aspx.cs" Inherits="Add_Employee" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html lang="en">

<head id="Head1" runat="server">
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/ALLMAAA_ICO.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    ADD EMPLOYEE  
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
   	 <script type="text/javascript">
   	     function noBack() { window.history.forward() }
   	     noBack();
   	     window.onload = noBack;
   	     window.onpageshow = function (evt) { if (evt.persisted) noBack() }
   	     window.onunload = function () { void (0) }
</script>
</head>

<body class="">
<style>
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
        background-image: url(assets/img/night-03.jpg);
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
  
  <div class="wrapper">
    
	  <!----- Sidebar BoilerPlate Code ----->
	  
	  
	  <div class="sidebar" data-color="white" data-active-color="danger">
      <!--
        data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.alllmaa.in" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="assets/img/Admin.png">
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
	  <form runat="server">
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
            <a class="navbar-brand" href="#pablo">ADD EMPLOYEE</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            
      <div>
          
                                       <asp:Button ID="btnLogout" CssClass="btn btn-primary btn-block"  runat="server" Text="Logout" OnClick="btnLogout_Click"/>
                           
              </div>

          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header panel-header-lg">

  <canvas id="bigDashboardChart"></canvas>


</div> -->
      <div class="content">
        <div class="col-sm-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">BROWSE EMPLOYEE DOCUMENTS</h5>
				</div>
              <div class="card-body">
                                   <div class="row">
                    <div class="col-md-4">
                      <div class="input-group">
  
  <div class="custom-file">
          <td class="auto-style2">Employee Photo*</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="empphoto" runat="server" BorderStyle="Solid" Width="231px"/>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ErrorMessage="*" ValidationGroup="r">
                           </asp:RequiredFieldValidator>--%>
                    </td>
                   
   </div>
</div>	                    </div>
					   <div class="col-md-4">
                      <div class="input-group">
  
  <div class="custom-file">
     <td class="auto-style2">X markSheet*</td>
               <td class="auto-style7">
                        <asp:FileUpload ID="Xphoto" runat="server" BorderStyle="Solid" Width="231px" />
                 </div>
</div>	
                    </div>
					   
					   
					   <div class="col-md-4">
                      <div class="input-group">
  
  <div class="custom-file">
     <td class="auto-style2">Diploma Sheet*</td>

                    <td class="auto-style7">
                        <asp:FileUpload ID="dipphoto" runat="server" BorderStyle="Solid" Width="231px" />
                 </div>
</div>	
                    </div> 
					   
					   
					   
					   
					   
					   <div class="col-md-4">
                      <div class="input-group">
  
  <div class="custom-file">
      <td class="auto-style2">Masters MarkSheet*</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="masterphoto" runat="server" BorderStyle="Solid" Width="231px" />
                 </div>
</div>	
                    </div>
					   <div class="col-md-4">
                      <div class="input-group">  
  <div class="custom-file">
    <td class="auto-style2">Bachlores MarkSheet*</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="bachphoto" runat="server" BorderStyle="Solid" Width="231px" />
                  </div>
</div>	
                    </div>
					   <div class="col-md-4">
                      <div class="input-group">
  
  <div class="custom-file">
        <td class="auto-style2">XII MarkSheet*</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="XIIphoto" runat="server" BorderStyle="Solid" Width="231px" />
              </div>
</div>	
                    </div>
					
					</div> 
				  </>
					   
              </div>
            </div>
          </div>	  
      
		 <div class="col-sm-12">
              <div class="card-header">
                <h5 class="card-title">ENTER EMPLOYEE DETAILS</h5>
				</div>
           <div class="card-body">
              <div class="row">

                    <div class="col-md-3">
                      <div class="form-group">
                         <td class="auto-style2">Employee Code*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempcode" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempcode" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                   </div>
                        </div>
               
                    <div class="col-md-3">
                      <div class="form-group">
                    <div class="auto-style2">Date Of Joining*</div>
                    <div class="auto-style7">
                        <asp:TextBox ID="txtempdoj" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtempdoj" ErrorMessage="*" ValidationGroup="r" autocomplete="off"></asp:RequiredFieldValidator>
                        &nbsp;<strong>Should Be In DD//MM//YYYY Format</strong></div>
                   
                </div>
                        </div>






                <div class="col-md-3">
                      <div class="form-group">
                    <div class="auto-style2">Employee type*</div>
                    <div class="auto-style7">
                        <asp:DropDownList ID="ddlemptype" runat="server" ValidationGroup="r" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="ddlemptype" InitialValue="0" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                    </div>
                  <div class="col-md-3">                  
                          <div class="form-group">
                    <div class="auto-style2">Employee Designation*</div>
                    <div class="auto-style7">
                        <asp:TextBox ID="txtdesig" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdesig" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                    </div> 
                           
            <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Salutation *</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddnsal" runat="server" ValidationGroup="r" CssClass="form-control btn btn-secondary dropdown-toggle">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="1">Mr.</asp:ListItem>
                            <asp:ListItem Value="2">Mrs.</asp:ListItem>
                            <asp:ListItem Value="3">Miss.</asp:ListItem>
                        </asp:DropDownList>
                         <td class="auto-style2">Employee First Name*</td><asp:TextBox ID="txtempFname" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnsal" ErrorMessage="Select Salutation" InitialValue="0" ValidationGroup="r"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtempFname" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                   </div>
                </div>

            
                  <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Last Name*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemplname" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtempFname" ErrorMessage="*" ValidationGroup="r" CssClass="form-control"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    </div>
                      </div>



                  <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Father Name*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempfather" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtempFname" ErrorMessage="*" ValidationGroup="r" CssClass="form-control"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    </div>
                      </div>



                  <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">EmployeeMother Name*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempMname" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtempMname" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    </div>
                      </div>


                  <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Permanent Address*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemppaddress" runat="server" TextMode="MultiLine" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtemppaddress" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                        <a href="Newfolder/js/jquery.js">jquery.js</a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    </div>
                      </div>




                  <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Correspondance* Address</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempcaddress" runat="server" TextMode="MultiLine" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtempcaddress" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                          </div>
                      </div>

                <%--                        <tr>
                            <td class="auto-style2">Select Department*</td>
                        <td class="auto-style7">
                      </tr>--%>
                <tr>


                    <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Id Details*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempiddetails" runat="server" TextMode="MultiLine" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtempiddetails" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    </div>
                    </div>

                    <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Mobile No*     
 
                            <td class="auto-style7">

                                <strong>+91-</strong><asp:TextBox ID="txtempmobile" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtempmobile" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager> 
                                <asp:FilteredTextBoxExtender ID="txtempmobile_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtempmobile">       </asp:FilteredTextBoxExtender>
                                   
                            </td>
                   </td>
              </div></div>
                <div class="col-md-3">
                      <div class="form-group">
                    <td class="auto-style2">Employee Phone No*</td>
                 
                        

                       <td class="auto-style7">                       
                      
                                <asp:TextBox ID="txtempphone" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                    
                           <asp:FilteredTextBoxExtender ID="txtempphone_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtempphone">
                                 </asp:FilteredTextBoxExtender>
                                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtempphone" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                   
                         </td>
            </div></div>
                </tr>
                
                       <div class="col-md-3">
                      <div class="form-group">
                <tr>    <td class="auto-style3">Employee Class X Marks &amp; Div.*</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtempxth" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtempxth" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                      </div></div>
                
                       <div class="col-md-3">
                      <div class="form-group">
                
                <tr>
                    <td class="auto-style2">Employee Class XII Marks &amp; Div.*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempxii" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtempxii" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                 
                </tr>
                          </div> </div>
             
                       <div class="col-md-3">
                      <div class="form-group">
                   
             <tr>
                    <td class="auto-style2">Employee Bachelor Degree*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempbachelor" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtempbachelor" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </div></div>
                          <tr>
                              
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style3">Employee Master/Proffessional Degree*</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtempmaster" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtempmaster" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
              
                                    <td class="auto-style4"></td>
                             </div> </div>
                </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style5">Employee Diploma*</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtempdiploma" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtempdiploma" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6"></td>
         </div></div>
                           </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Certification*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempcertificate" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtempcertificate" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </div>
</div>                </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Achievements</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempachievement" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtempachievement" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
             </div></div>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Previuos Experience*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtprev" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="txtprev" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
               </div></div>
                                    </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Marital Status</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddnempmstatus" runat="server" Height="19px" ValidationGroup="r" Width="128px" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="1">Married</asp:ListItem>
                            <asp:ListItem Value="2">UnMarried</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddnempmstatus" ErrorMessage="*" InitialValue="0" ValidationGroup="r"></asp:RequiredFieldValidator>
                
                            </td></div></div>
                </tr>

                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Email*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtEmail" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="r"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
               </div></div>
                     </tr>

                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Current Salery*</td>
                    <td class="auto-style7">
                                           
    
                                                <asp:TextBox ID="TxtSalery" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>                 

<asp:FilteredTextBoxExtender ID="TxtSalery_FilteredTextBoxExtender" 
    
                                               runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="TxtSalery">
                   
                 
</asp:FilteredTextBoxExtender>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="TxtSalery" ErrorMessage="*"></asp:RequiredFieldValidator>
                          </td>
               </div></div> </tr>
                <tr>
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Date Of Birth*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempdob" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtempdob" ErrorMessage="*" ValidationGroup="r" auto></asp:RequiredFieldValidator>

                        <asp:CalendarExtender ID="txtempdob_CalendarExtender" runat="server"
                            Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtempdob"></asp:CalendarExtender>
    
             
             </div></div>
                       </tr>
                <tr>
               
                       <div class="col-md-3">
                      <div class="form-group">
                
                         <td class="auto-style2">Employee Date Of Anniversary*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempdoa" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtempdoa" autocomplete="off" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                        <strong>&nbsp;Should Be In DD//MM//YYYY Format</strong></td>
                    <td>&nbsp;</td>
                </div></div>
                </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">&nbsp;Employee Bank Name*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempbank" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtempbank" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </div></div>
                </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Branch Name</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempbranch" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtempbranch" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </div></div>
                </tr>
                <tr>
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Bank Account No*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempaccount" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtempaccount" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </div>
</div>                </tr>
                <tr>
                    
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee IFSC Code*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempifsc" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtempifsc" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
          </div></div>
                          </tr>
                
          <tr>
              
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Empuser Name*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtempusername" runat="server" ValidationGroup="r" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtempusername" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
          
                                  </td>
              </div></div>
                 </tr>
                
          <tr>
              
                       <div class="col-md-3">
                      <div class="form-group">
                
                    <td class="auto-style2">Employee Password*</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemppwd" runat="server" TextMode="Password" ValidationGroup="r"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtemppwd" ErrorMessage="*" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
              </div></div>  
               </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style7">
                        <p>
                             <asp:Button ID="BtnAdd" runat="server" Text="Add Registration Details" ValidationGroup="r" OnClick="BtnAdd_Click" />
                             <asp:Button ID="btnupdate" runat="server" Text="Update Category" OnClick="btnupdate_Click" ValidationGroup="r" />
                               <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                             <asp:Button ID="btndel" runat="server" OnClick="btndel_Click1" Text="Delete" />

                            </p>
                       <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <asp:Label ID="lblid" Visible="false" runat="server"></asp:Label>
                            <p>
                            </p></td>							
							  
					   
              </div></div>
         </div>

            </div>
      
      
		 
		  
              <div class="card-header">
                <h5 class="card-title">EMPLOYEE DETAILS</h5>
				  
				  <button class="btn btn-primary">EXPORT TO EXCEL</button>
	
				</div>
				<div class="card-body">
				
                    	<div class="table-responsive">
                  <table class="table">
                      			
                  <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style7">
                        
                        <asp:GridView ID="gvEmployee" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="EmpId" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" EmptyDataText="No Records !" OnPageIndexChanging="gvEmployee_PageIndexChanging" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvEmployee_SelectedIndexChanged">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmpId" HeaderText="Id" />
                                <asp:ImageField DataImageUrlField="EmpPhoto" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="Employee Photo" />
                                <asp:ImageField DataImageUrlField="Xmarksheet" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="X Marksheet Photo" />
                                <asp:ImageField DataImageUrlField="Diplomamarksheet" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="Diploma Marksheet Photo" />
                                <asp:ImageField DataImageUrlField="Mastermarksheet" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="Masters Marksheet Photo" />
                                <asp:ImageField DataImageUrlField="Bachlormarksheet" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="Bachlore Marksheet Photo" />
                                <asp:ImageField DataImageUrlField="XIImarksheet" ControlStyle-Height="75" ControlStyle-Width="75" HeaderText="XII Marksheet Photo" />
                                <asp:BoundField DataField="Empcode" HeaderText="Employee Code" />
                                <asp:BoundField DataField="EmpDoJ" HeaderText="Employee DOJ" />
                                <asp:BoundField DataField="depname" HeaderText="Employee type" />
                                <asp:BoundField DataField="Designation" HeaderText="Employee Designation" />
                                <asp:BoundField DataField="EmpFirstname" HeaderText="Employee First Name" />
                                <asp:BoundField DataField="EmpLastname" HeaderText="Employee Last Name" />
                                <asp:BoundField DataField="EmpFathername" HeaderText="Employee Father Name" />
                                <asp:BoundField DataField="EmpMothername" HeaderText="Employee Mother Name" />
                                <asp:BoundField DataField="EmpPermanentAddress" HeaderText="Employee P.Address" />
                                <asp:BoundField DataField="EmpCorrespondanceAddress" HeaderText="Employee C.Address" />
                                <asp:BoundField DataField="EmpIdDetails" HeaderText="Employee Id Details" />
                                <asp:BoundField DataField="EmpMobileNo" HeaderText="Employee Mobile No" />
                                <asp:BoundField DataField="EmpPhoneNo" HeaderText="Employee Phone No" />
                                <asp:BoundField DataField="EmpClassX" HeaderText="Employee Cass X Records" />
                                <asp:BoundField DataField="EmpClassXII" HeaderText="Employee Class XII Records" />
                                <asp:BoundField DataField="EmpBachelorDegree" HeaderText="Employee Bachelor Degree" />
                                <asp:BoundField DataField="EmpMasterDegree" HeaderText="Employee Master Degree" />
                                <asp:BoundField DataField="EmpDiploma" HeaderText="Employee Diploma" />
                                <asp:BoundField DataField="EmpCertification" HeaderText="Employee Certification" />
                                <asp:BoundField DataField="EmpAchievements" HeaderText="Employee Achievements" />
                                <asp:BoundField DataField="Previousexperince" HeaderText="Previous Experience" />
                                <asp:BoundField DataField="EmpMaritalStatus" HeaderText="Employee Marital Status" />                             
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="CurrentSalery" HeaderText="Current Salery" />
                                <asp:BoundField DataField="EmpDOB" HeaderText="Employee DOB" />
                                <asp:BoundField DataField="EmpDoA" HeaderText="Employee DOA" />
                                <asp:BoundField DataField="EmpBankname" HeaderText="Employee Bank Name" />
                                <asp:BoundField DataField="EmpBranchname" HeaderText="Employee Branch Name" />
                                <asp:BoundField DataField="EmpBankAccountNo" HeaderText="Employee Bank Account No." />
                                <asp:BoundField DataField="EmpIFSCCode" HeaderText="Employee IFSC Code" />
                                <asp:BoundField DataField="Empusername" HeaderText="Employee Username" />
                                <asp:BoundField DataField="EmpPassword" HeaderText="Employee Password" />
                                <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                <asp:BoundField DataField="Createdon" HeaderText="Created On" />
                            </Columns>
                        </asp:GridView>
        </td>
                 
		  <//table>
                             
                            </div>
                    </div>
         
    </form>
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
