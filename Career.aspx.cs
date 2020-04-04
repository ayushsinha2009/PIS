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
    DataTable dtn;
   string SourceTypeId;
    
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
        //dtcareers = obj.SelectCareerDetails();
        //if (dtcareers.Rows.Count > 0)
        //{
        //    ReapeterDetails.DataSource = dtcareers;
        //    ReapeterDetails.DataBind();
        //}
        //if (dtcareers.Rows.Count < 0)
        //{
        //    lblmsg.Text = "No Jobs Available";
        //}

        dtn = obj.SelectCareerDetails();
       

        if (dtn.Rows.Count > 0)
        {
            GVcareer.DataSource = dtn;
            GVcareer.DataBind();
            lblpost.Text = dtn.Rows[0]["Post"].ToString();

            lbltechnology.Text = dtn.Rows[0]["Technology"].ToString();


            lbldesc.Text = dtn.Rows[0]["Description"].ToString();
            if (dtn.Rows[0]["SourceTypeId"].ToString() == "1")
            {
                lblstatus.Text = "Open";
            }
            if (dtn.Rows[0]["SourceTypeId"].ToString() == "2")
            {
                lblstatus.Text = "Close";
            }
            if (dtn.Rows[0]["SourceTypeId"].ToString() == "0")
            {
                lblstatus.Text = "Select";
            }
           // DdnSource.SelectedIndex = dtn.Rows[0]["Status"].ToString();
            //    hftargetId.Value = dtatarget.Rows[0]["targetid"].ToString();

        }
    }
    #endregion
}