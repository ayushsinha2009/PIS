using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class holidays : System.Web.UI.Page
{

    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    #endregion

    #region Select Holidays
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dt = obj.SelectHolidays();
            if (dt.Rows.Count > 0)
            {
                lbldate.Text = dt.Rows[0]["Date"].ToString();
                lblholiday.Text = dt.Rows[0]["Name"].ToString();
                lbldesc.Text = dt.Rows[0]["Description"].ToString();
                lblid.Text = dt.Rows[0]["Id"].ToString();
            }
            if (dt.Rows.Count <= 0)
            {
                //lblmsg.Text = "No Curriculmn";
            }
            dt = obj.SelectHolidays();
            gvholidays.DataSource = dt;
            gvholidays.DataBind();
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