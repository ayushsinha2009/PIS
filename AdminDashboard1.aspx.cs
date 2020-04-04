using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminDashboard : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtcontacts;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();
        }
    }
    #endregion
    #region Bind Grid
    public void BindGrid()
    {
        dtcontacts = obj.SelectContactDetails();
        gvContact.DataSource = dtcontacts;
        gvContact.DataBind();
    }
    #endregion
    #region Grid Paging
    protected void gvContact_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvContact.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    #endregion
    #region Button Logout
    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Admin.aspx");
    }
    #endregion
}
