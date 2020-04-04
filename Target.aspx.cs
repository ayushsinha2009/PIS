using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Target : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt1, dt2;
    int i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            dropDownvalue();
            ddlempname.Items.Insert(0, new ListItem("Select EmployeeName", "0"));
            ddlempname.Enabled = false;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DateTime dtform = new DateTime();
        dtform = Convert.ToDateTime(txtfromdate.Text.Trim());
        dtform.ToString("dd/MM/yyyy");
        DateTime todate = new DateTime();
        todate = Convert.ToDateTime(txttodate.Text.Trim());
        todate.ToString("dd/MM/yyyy");

        i = obj.Addtarget(Convert.ToInt32(ddlempname.SelectedValue),
            txttargetname.Text.Trim(), Convert.ToInt32(lblnumofday.Text),
            dtform, todate, "Admin", DateTime.Now.ToString(),
            Convert.ToInt32(ddldeprt.SelectedValue));

        if (i > 0)
        {
            string sMsg = "Data Has Been Added";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sMsg.ToString());
            lblmsg.Text = "Employee target Has Been Saved";   
      
  }

    }
    protected void ddldeprt_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlempname.Enabled = true;
        dt2 = obj.dropdownemptypeName(Convert.ToInt32(ddldeprt.SelectedValue));
        ddlempname.DataSource = dt2;
        ddlempname.DataTextField = "EmpFirstname";
        ddlempname.DataValueField = "EmpId";
        ddlempname.DataBind();
        ddlempname.Items.Insert(0, new ListItem("Select EmployeeName", "0"));
        dt2.Clear();
    }
    protected void ddlempname_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void dropDownvalue()
    {
        dt1 = obj.dropdownemptype();
        ddldeprt.DataSource = dt1;
        ddldeprt.DataTextField = "depname";
        ddldeprt.DataValueField = "depid";
        ddldeprt.DataBind();
        ddldeprt.Items.Insert(0, new ListItem("Select Department", "0"));
        dt1.Clear();


    }
    protected void txttodate_TextChanged(object sender, EventArgs e)
    {
        if (txtfromdate.Text != "")
        {
            DateTime dtformDate = new DateTime();
            DateTime dtToDate = new DateTime();
            dtformDate = Convert.ToDateTime(txtfromdate.Text.Trim());
            dtToDate = Convert.ToDateTime(txttodate.Text.Trim());
            CalendarExtender2.StartDate = dtToDate;
            string No = (dtToDate.Date - dtformDate.Date).Days.ToString();
            lblnumofday.Text = No;
        }
        CalendarExtender2.EndDate = Convert.ToDateTime(txttodate.Text.Trim());

    }

    protected void txtfromdate_TextChanged(object sender, EventArgs e)
    {
        string fdate = "";
        DateTime formdate = new DateTime();
        formdate = Convert.ToDateTime(txtfromdate.Text.Trim());
        if (formdate.ToString() != "")
        {
            CalendarExtender1.StartDate = formdate;

        }
    }
}