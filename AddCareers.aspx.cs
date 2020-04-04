using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddCareers : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtcareers;
    int i, u,id;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();
            BtnAdd.Enabled = true;
            BtnUpdate.Enabled = false;
        }
    }
#region Bind Grid
    public void BindGrid()
    {
        dtcareers = obj.SelectAllCareerDetails();
        GVCareers.DataSource = dtcareers;
        GVCareers.DataBind();
    }
#endregion
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.InsertCareerDetails(txtpost.Text, txttechnology.Text, txtdesc.Text, DdnSource.SelectedValue, "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            ClearFields();
            BindGrid();
        }
    }
    #region Clear Fields
    public void ClearFields()
    {
        txtpost.Text=""; txttechnology.Text="";
        txtdesc.Text = ""; DdnSource.SelectedIndex = 0;
    }
    #endregion
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GVCareers.SelectedRow.Cells[1].Text);
        u = obj.UpdateCareerDetails(id,txtpost.Text, txttechnology.Text, txtdesc.Text, DdnSource.SelectedValue);
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            BindGrid();
        }
        BtnAdd.Enabled = true;
        BtnUpdate.Enabled = false;
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCareers.aspx");
    }
    #region GridView Paging
    protected void GVCareers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GVCareers.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    #endregion

    #region Selection Changed
    protected void GVCareers_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GVCareers.SelectedRow.Cells[1].Text);
        txtpost.Text=GVCareers.SelectedRow.Cells[2].Text; 
        txttechnology.Text=GVCareers.SelectedRow.Cells[3].Text;
        txtdesc.Text=GVCareers.SelectedRow.Cells[4].Text;
        DdnSource.SelectedValue = GVCareers.SelectedRow.Cells[5].Text;
        BtnAdd.Enabled = false;
        BtnUpdate.Enabled = true;
    }
    #endregion
}