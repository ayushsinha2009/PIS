using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddStaffAttendance : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dtA;
    int i;
    string strmonth, strday;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindDatas();

            DataBind();
            txttwhrs.Enabled = false;
            dropDownvalue();
            ddlempname.Items.Insert(0, new ListItem("Select EmployeeName", "0"));
            ddlempname.Enabled = false;
        }
    }
    #endregion
    #region Bind gridData
    public void BindDatas()
    {
        dt = obj.SelectStaffAttendance();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #endregion

    #region Excel
    protected void btnexcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "SMS" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/StaffAttendance.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    #endregion


    #region Page Index Changing
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindDatas();
    }
    #endregion

    #region TextChanged
    protected void txttimeout_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Parse(txttimein.Text);
        DateTime d2 = DateTime.Parse(txttimeout.Text);
        TimeSpan timeFrom = TimeSpan.Parse(d1.ToString("HH:mm"));
        TimeSpan timeTo = TimeSpan.Parse(d2.ToString("HH:mm"));
        TimeSpan timeDiff;
        if (timeFrom.TotalSeconds > timeTo.TotalSeconds)
        {
            d2 = d2.AddDays(1);
            timeDiff = d2.Subtract(d1);
        }
        else
        {
            timeDiff = d2.Subtract(d1);
        }
        txttwhrs.Text = timeDiff.ToString();
    }
    #endregion

    #region Clear Fields
    public void ClearFields()
    {
        ddlempname.SelectedIndex = 0;
        txtdate.Text = "";
        txttimein.Text = "";
        txttimeout.Text = "";
        txttwhrs.Text = "";
        ddnprsnt.SelectedIndex = 0;
    }

    #endregion


    #region Add
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        strmonth = DateTime.Now.ToString("MMMM");
        DateTime dt = DateTime.Today;
        strday = dt.DayOfWeek.ToString();
        dtA = obj.CheckAttendance(txtdate.Text, strmonth, strday, Convert.ToInt32(ddlempname.SelectedValue));
        if (dtA.Rows.Count > 0)
        {
            lblmsg.Text = "Data Already Exist";
            BtnAdd.Enabled = false;
        }
        if (dtA.Rows.Count <= 0)
        {

            i = obj.AddStaffAttendances(Convert.ToInt32(ddlempname.SelectedValue), txtdate.Text, strmonth, strday, txttimein.Text, txttimeout.Text, txttwhrs.Text, ddnprsnt.SelectedItem.Text, "Admin", 1, DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Attendance Inserted";
                BindDatas();
                ClearFields();
            }
        }
    }
    #endregion


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

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        
       Session.Abandon();
       Session.RemoveAll();
       Session.Clear();
       Response.Redirect("EmployeeLogin.aspx");
    }
}