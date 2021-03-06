﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="AddNotice.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddNotice" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<%--    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />--%>
    <title>Add Notice</title>
  <%--  <!-- Bootstrap core CSS -->
    <link href="Scripts/css/chosen.css" rel="stylesheet" type="text/css" />
<%--    <link href="css/Style.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/css/Custom-Cs.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>

    <%-- <link href="assets/css/bootstrap.css" rel="stylesheet" />--%>
    <!--external css-->
    <link href="assets/font-Awesome/css/font-Awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet'/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
       <![endif]-->--%>--%>

</head>
<body>
    <form id="form1" runat="server">

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="header-icon">
                    <i class="fa fa-book"></i>
                </div>

                <div class="header-title">
                    <h1>Notice Master</h1>
          <small>Enter details of Notice here..</small>
                </div>
            </section>
            <section class="content">
               <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="panel lobidisable panel-bd">
                            <div class="panel-heading">
                                <div class="panel-title">
<div class="card card-user">
                        <div class="card-header">
                                    <h4>Notice Details</h4>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" placeholder="Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>


                                </div>
                                <div class="form-group">
                                    <label>Topic</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txttopic" CssClass="form-control" runat="server" placeholder="Topic.." autocomplete="off" ValidationGroup="c"></asp:TextBox>


                                </div>
                                <div class="form-group">
                                    <label>Notice Description</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtdesc" TextMode="MultiLine" CssClass="form-control" runat="server" placeholder="Description.." ValidationGroup="c"></asp:TextBox>


                                </div>
                                <div class="form-group">
                                    <label>Select Department</label>
                                    <asp:DropDownList ID="ddldeprt" runat="server" AutoPostBack="true"
                                         OnSelectedIndexChanged="ddldeprt_SelectedIndexChanged">
                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Select Employee</label>
                                    <asp:DropDownList ID="ddnemp" runat="server" >
                    </asp:DropDownList>
                                </div>

                                <div class="form-group">


                                    <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Notice" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                    <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Notice" OnClick="Btnupdate_Click" />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Notice" OnClick="Btndel_Click" />
                                    <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click" />
                                    <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div></div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-bd lobidrag">
                            <div class="panel-heading">
                                <div class="panel-title">

                                    <h4>Notice Master Details</h4>
                                </div>
                                <div style="float: right;">
                                    <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" 
                                        BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" 
                                        DataKeyNames="NoticeId" CellPadding="4" EnableModelValidation="True" ForeColor="Black" 
                                        GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" 
                                        OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" 
                                        OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <Columns>

                                            <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Date" HeaderText="Date" />
                                            <asp:BoundField DataField="Topic" HeaderText="Topic" />
                                            <asp:BoundField DataField="Noticedesc" HeaderText="Notice Description" />
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

        <script src="js/jquery-ui.js" type="text/javascript"></script>
        <script src="js/chosen.jquery.js" type="text/javascript"></script>
        <script type="text/javascript">
            var config = {
                '.chosen-select': {},
                '.chosen-select-deselect': { allow_single_deselect: true },
                '.chosen-select-no-single': { disable_search_threshold: 10 },
                '.chosen-select-no-results': { no_results_text: 'Oops, nothing found!' },
                '.chosen-select-width': { width: "90%" }
            }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }


        </script>
    </form>
</body>
</html>
