using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AAcountant_Curriculumn : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    #endregion

    #region Select Curriculumn
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dt = obj.SelecttopCurriculmn();
            if (dt.Rows.Count > 0)
            {
                lbldate.Text = dt.Rows[0]["Date"].ToString();
                lbltopic.Text = dt.Rows[0]["Topic"].ToString();
                lblcurriculumn.Text = dt.Rows[0]["Curriculumndesc"].ToString();
            }
            if (dt.Rows.Count <= 0)
            {
                //lblmsg.Text = "No Curriculmn";
            }
        }
    }
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("EmployeeLogin.aspx");
    }
}