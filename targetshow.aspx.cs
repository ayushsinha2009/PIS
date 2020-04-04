using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class targetshow : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtdetail, dtApprove, dtatarget, dtdetails, dt;
    int i, empid, targetid, g;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {

        dropdownbind();


        if (Session["EmpId"].ToString() != "" && Session["EmpFirstname"].ToString() != "")
        {
            empid = Convert.ToInt32(Session["EmpId"].ToString());
         //   BindGrid();
         //   PopulateGrid();
            BindGridtarget();
          //  BindGrid();
         //   PopulateGrid();
            lblempname.Text = Session["EmpFirstname"].ToString();
            TargetShow();
        }

    }
    
    #region show target
    public void TargetShow()
    {

        string a = Session["EmpId"].ToString();
        dtatarget = obj.SelectTargetEmp(Convert.ToInt32(a));
        if (dtatarget.Rows.Count > 0)
        {



           // lbltarget.Text = dtatarget.Rows[0]["targetname"].ToString();
            //    hftargetId.Value = dtatarget.Rows[0]["targetid"].ToString();

        }
    }
    #endregion

    #region Bind Target Grid
    public void BindGridtarget()
    {
        dtdetails = obj.ShowTarget(empid);
        gvtarget.DataSource = dtdetails;
        gvtarget.DataBind();
    }
    #endregion

    #region savetarget

    protected void btnsave_Click(object sender, EventArgs e)
    {
        g = obj.savetarget(txttarget.Text, lblempname.Text, DateTime.Now.ToString(), Convert.ToInt32(ddltarget.SelectedValue),
            Convert.ToInt32(empid));

        if (g > 0)
        {
            string name = "SuccessFully";
            //your code to modify name.......
            //ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('" + name + "')", true);
            Response.Write("<script>alert('data inserted successfully')</script>");
        }
    }
    #endregion

    #region dropdown
    public void dropdownbind()
    {
        dt = obj.SelectTargetEmp(Convert.ToInt32(Session["EmpId"].ToString()));
        ddltarget.DataSource = dt;
        ddltarget.DataValueField = "targetid";
        ddltarget.DataTextField = "targetname";
        ddltarget.DataBind();
        ddltarget.Items.Insert(0, new ListItem("Select Target", "0"));
    }
    #endregion

    #region show notice
    public void noticeshow()
    {

        string a = Session["EmpId"].ToString();
        dtatarget = obj.SelectNtotice(Convert.ToInt32(a));
        if (dtatarget.Rows.Count > 0)
        {



        //    lbltarget.Text = dtatarget.Rows[0]["targetname"].ToString();
            //    hftargetId.Value = dtatarget.Rows[0]["targetid"].ToString();

        }
    }
    #endregion




}