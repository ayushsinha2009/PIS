<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Department" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="content">
                        <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">ADD DEPARTMENT DETAILS</h5>
				  
              </div>
              <div class="card-body">
            
                  <div class="row">
                    <div class="col-md-12 pr-3">
                      <div class="form-group">
                        <label>ADD DEPARTMENT</label>
                      <asp:TextBox ID="ADDDEPT" runat="server" Width="350px" CssClass="form-control" ValidationGroup="a" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="ADDDEPT" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </div>
                    </div>
					</div>
					
					
				<div class="row">
                    <div class="col-md-12 ml-auto mr-auto">
                      <div class="row">
                        <div class="col-sm-12">
                   <asp:Button ID="btnAdd" runat="server" Text="Department" Width="200px"  CssClass="btn btn-primary btn-block"  OnClick="btnAdd_Click" />
                                <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary btn-block" Text="Update Category" OnClick="btnupdate_Click" />
                                <asp:Button ID="btndel" runat="server"  CssClass="btn btn-primary btn-block" Text="Delete Category" OnClick="btndel_Click" />
                                <asp:Button ID="btncancel"  CssClass="btn btn-primary btn-block" runat="server" Text="cancel"  />

                                     </div>
                          
                        
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <asp:Label ID="lblid" Visible="false" runat="server"></asp:Label>
                      </div>
                    </div>
                  </div>
                
                </div>
              </div>
            </div>
          </div>
		  	     <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">DEPARTMENT DETAILS</h5>
			  </div>
				<div class="card-body">
					<div class="table-responsive">
                  <table class="table">
                       <asp:Panel ID="pnlgrid" runat="server" Width="100%">
                                <asp:GridView ID="gvdetails" runat="server" CssClass="col-sm-12 col-lg-12 col-md-12 col-xs-12"
                                    Font-Names="Arial" HeaderStyle-BackColor="#9896d9" HeaderStyle-CssClass="sam_Grd_h" EmptyDataText="No Record Found."
                                    Style="font-size: 12px;" GridLines="Horizontal" AutoGenerateColumns="False" CellPadding="4"
                                    BackColor="White" BorderColor="#3366CC" HeaderStyle-Wrap="true"
                                    AllowSorting="True" BorderStyle="None" BorderWidth="1px"
                                    DataKeyNames="depid" ForeColor="#333333"
                                    AllowPaging="True"
                                    PageSize="25" AutoGenerateSelectButton="True" OnPageIndexChanging="gvdetails_PageIndexChanging"
                                    OnSelectedIndexChanged="gvdetails_SelectedIndexChanged" Height="16px" Width="569px">

                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                            <ItemStyle Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="depname" HeaderText="Department Name" />

                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                        <asp:BoundField DataField="Updatedby" HeaderText="Updated on" />
                                        <asp:BoundField DataField="updatedon" HeaderText="Updated on" />
                                    </Columns>
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </asp:Panel>
                        	  		
                  </form>
      
</asp:Content>

