using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Department :System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i, u, d, index;
    DataTable dtcheck;
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            BindGrid();
            ClearFields();
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnAdd.Visible = true;
        }
    }

    #region Clear Fields
    public void ClearFields()
    {
        ADDDEPT.Text = "";

    }
    #endregion   

    #region Bind Grid
    public void BindGrid()
    {
        dtcheck = obj.SelectDepartment();
        gvdetails.DataSource = dtcheck;
        gvdetails.DataBind();
    }
    #endregion


    protected void btnupdate_Click(object sender, EventArgs e)
    {

        u = obj.UpdateDepartment(Convert.ToInt32(lblid.Text), ADDDEPT.Text, "Admin", DateTime.Now.ToString());
        if (u > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item Category Updated Sucessfully";

            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnAdd.Visible = true;

        }

    }


    #region Delete
    protected void btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteDepartment(Convert.ToInt32(lblid.Text));
        if (d > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item CategoryId Deleted Sucessfully";
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnAdd.Visible = true;

        }
    }
    #endregion

    #region Select Index Change
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblid.Text = gvdetails.DataKeys[index].Value.ToString();
        ADDDEPT.Text = gvdetails.SelectedRow.Cells[2].Text;
        btnupdate.Visible = true;
        btndel.Visible = true;
        btncancel.Visible = true;
        btnAdd.Visible = false;
    }
    #endregion

    #region Page Indexing
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;

        btnAdd.Visible = true;

        BindGrid();
    }
    #endregion

#region Cancel
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddDepartment(ADDDEPT.Text.Trim(), "Admin", DateTime.Now.ToString(), "", "");
        if (i > 0)
        {
            lblmsg.Text = "Item Category Added Sucessfully";

            BindGrid();
            ClearFields();
            btnAdd.Visible = true;
            btnupdate.Visible = false;
            btndel.Visible =false;
            btncancel.Visible = false;

        }
    }
#endregion

}