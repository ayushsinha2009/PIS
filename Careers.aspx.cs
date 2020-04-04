using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Careers : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtcareers;
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
        dtcareers = obj.SelectCareerDetails();
        if (dtcareers.Rows.Count > 0)
        {
            ReapeterDetails.DataSource = dtcareers;
            ReapeterDetails.DataBind();
        }
        if (dtcareers.Rows.Count < 0)
        {
            lblmsg.Text = "No Jobs Available";
        }
    }
    #endregion
}