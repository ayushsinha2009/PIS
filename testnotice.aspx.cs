using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class testnotice : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dtatarget,dtn;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["EmpId"] != null || Session["emptype"] != null)
            {

                string empid = Session["empid"].ToString();
                shownotice(Convert.ToInt32(Session["EmpId"]) );
                
            }
        }

    }

    #region show notice
    public void shownotice(int empid)
    {

        int b = empid;
        dtn = obj.SelectNtotice(Convert.ToInt32(b));

        if (dtn.Rows.Count > 0)
        {
            lbldate.Text = dtn.Rows[0]["Date"].ToString();

            lblnotice.Text = dtn.Rows[0]["Noticedesc"].ToString();


            lbltopic.Text = dtn.Rows[0]["Topic"].ToString();
            //    hftargetId.Value = dtatarget.Rows[0]["targetid"].ToString();

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