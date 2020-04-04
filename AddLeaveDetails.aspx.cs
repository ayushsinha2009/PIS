using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AddLeaveDetails : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtemp,dtgrid;
    int i;
    
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindDropDown();
            PopulateGrid();
        }

    }
    #endregion
    #region Bind Drop Down 
    public void BindDropDown()
    {
        dtemp = obj.SelectEmployeeIdName();
        ddnemp.DataSource = dtemp;
        ddnemp.DataTextField = "EmpFirstname";
        ddnemp.DataValueField = "EmpId";
        ddnemp.DataBind();
        ddnemp.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    #endregion
    #region Populate Grid
    public void PopulateGrid()
    {
        dtgrid = obj.SelectEmployeeLeaveDetail();
        gvleavedt.DataSource = dtgrid;
        gvleavedt.DataBind();
    }
    #endregion
    
   
   
   
    protected void BtnAdd_Click(object sender, EventArgs e)
    {


        int t = Convert.ToInt32(txtotal.Text);
        int c = Convert.ToInt32(txtcl.Text) + Convert.ToInt32(txtsl.Text) + Convert.ToInt32(txtpl.Text) + Convert.ToInt32(txtupl.Text);
        lblt.Text = c.ToString();
        if (t == Convert.ToInt32(lblt.Text))
        {

            i = obj.InsertLeaveDetails(Convert.ToInt32(ddnemp.SelectedValue), txtotal.Text, txtcl.Text, txtsl.Text, txtpl.Text, txtupl.Text, "Admin", DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Data Has Been Added";
                PopulateGrid();
                ClearFields();



            }
        }
        else
        {
            Response.Write("<Script>alert('not inserted')</Script>"); 
        }
    }
    #region Clear Fields
    public void ClearFields()
    { 
    ddnemp.SelectedIndex=0;
    txtotal.Text="";
    txtcl.Text="";
    txtsl.Text = "";
    txtpl.Text="";
    txtupl.Text="";
    }
    #endregion
    #region PageIndexing
    protected void gvleavedt_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvleavedt.PageIndex = e.NewPageIndex;
        PopulateGrid();
    }
    #endregion
}