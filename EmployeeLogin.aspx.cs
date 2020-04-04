using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class EmployeeLogin : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtLogin,dtlogin1;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    } 
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        
        dtLogin = obj.checkEmployeeloginDetail(txtusername.Text, txtpwd.Text);
        if (dtLogin.Rows.Count > 0)
        {
            Session["EmpId"] = dtLogin.Rows[0]["EmpId"].ToString();
            Session["EmpFirstname"] = dtLogin.Rows[0]["EmpFirstname"].ToString();
            Response.Redirect("EmpDashboard.aspx");
            txtusername.Text = "null";
            txtpwd.Text = "null";
        }
        if (dtLogin.Rows.Count <=0 )
        {
            dtlogin1 = obj.CheckLogin(txtusername.Text, txtpwd.Text);
            if (dtlogin1.Rows.Count > 0)
            {
                Response.Redirect("AdminDashboard.aspx");
               
            }
            if (dtlogin1.Rows.Count < 0)
            {
                lblmsg.Text = "Invalid Credentials";
                
            }
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeLogin.aspx");
    }

    protected void btnForgotPassword_click(object sender, EventArgs e)
    {
        Response.Redirect("updatepassword.aspx");
    }
}