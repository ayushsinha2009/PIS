using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class targetprogress : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, da, dc,dtnew;
    #endregion



    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            dropdownbind1();
            dropdownbind();
            bindgrid();
         //   ddlselecttarget.Items.Insert(0, new ListItem("Select Target", "0"));
    
        }
    }

    #region selectdepartment
    public void dropdownbind()
    {
        dt = obj.SelectDepartment();
        ddldeprt.DataSource = dt;
        ddldeprt.DataValueField = "depid";
        ddldeprt.DataTextField = "depname";
        ddldeprt.DataBind();
        ddldeprt.Items.Insert(0, new ListItem("Select Department", "0"));
    }
    #endregion



    #region selectname
    public void dropdownbind1()
    {
        da = obj.SelectEmployeeIdName();
        ddlempname.DataSource = da;
        ddlempname.DataValueField = "empid";
        ddlempname.DataTextField = "EmpFirstname";
        ddlempname.DataBind();
        ddlempname.Items.Insert(0, new ListItem("Select Name", "0"));
    }
    #endregion


    //#region selecttarget
    //public void dropdownbind2()
    //{
    //    dt = obj.SelectTarget(Convert.ToString(ddlempname.SelectedValue));
    //    ddlselecttarget.DataSource = dt;
    //    ddlselecttarget.DataValueField = "targetid";
    //    ddlselecttarget.DataTextField = "targetstatus";
    //    ddlselecttarget.DataBind();
    //    ddlselecttarget.Items.Insert(0, new ListItem("Select Target", "0"));
    //}
    //#endregion

    //protected void ddlempname_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    dropdownbind2();
    //}
    protected void ddldeprt_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt = obj.dropdownemptypeName(Convert.ToInt32(ddldeprt.SelectedValue));
        ddlempname.DataSource = dt;
        ddlempname.DataTextField = "EmpFirstname";
        ddlempname.DataValueField = "EmpId";
        ddlempname.DataBind();
        ddlempname.Items.Insert(0, new ListItem("Select EmployeeName", "0"));
    }



    public void bindgrid()
    {

        dc = obj.ShowtargetonAdmin();
        gvdetails.DataSource = dc;
        gvdetails.DataBind();

    }



    protected void btnsearch_Click(object sender, EventArgs e)
    {
        dtnew = obj.ShowtargetonAdminnew(Convert.ToInt32(ddlempname.SelectedValue));
        gvdetails.DataSource = dtnew;
        gvdetails.DataBind();
    }
    #region Paging
    //protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    gvdetails.PageIndex = e.NewPageIndex;
    //    bindgrid();
    //}
    #endregion
    //protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    //{


    //}
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        bindgrid();
    }
}