using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Project_Approval : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtjob, dt1, dt2, dtdetail, dtrecords;
    int empid, empid1, i, u, LA, LB, LC;
    string str, a, b, c, d, ee, f, g, h, ii, j;
    #endregion


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();


            dropDownvalue();
           ddlempname.Items.Insert(0, new ListItem("Select EmployeeName", "0"));

            BindGrid1();
        }
    }

    public void BindGrid()
    {
        dtdetail = obj.SelectLeadApprovedDetails();
        gvLeave.DataSource = dtdetail;
        gvLeave.DataBind();
    }
    //protected void GvApply_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    GvApply.PageIndex = e.NewPageIndex;
    //    BindGrid();
    //}

    //protected void GvApply_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    empid = Convert.ToInt32(gvLeave.SelectedRow.Cells[1].Text);

    //}

    protected void gvLeave_SelectedIndexChanged(object sender, EventArgs e)
    {

        string Status = "";
        empid = gvLeave.SelectedIndex;
        lblid.Text = gvLeave.DataKeys[empid].Value.ToString();
        empid1 = Convert.ToInt32(lblid.Text.ToString());
        a = "0";
        b = gvLeave.SelectedRow.Cells[2].Text;
        Session["c"] = gvLeave.SelectedRow.Cells[3].Text;
        Session["d"] = gvLeave.SelectedRow.Cells[4].Text;
        Session["ee"] = gvLeave.SelectedRow.Cells[5].Text;
        Session["f"] = gvLeave.SelectedRow.Cells[6].Text;
        Session["g"] = gvLeave.SelectedRow.Cells[7].Text;
        Session["h"] = gvLeave.SelectedRow.Cells[8].Text;
        Session["ii"] = gvLeave.SelectedRow.Cells[9].Text;
        Session["j"] = gvLeave.SelectedRow.Cells[10].Text;
        Status = gvLeave.SelectedRow.Cells[8].Text;
            if (gvLeave.SelectedRow.Cells[8].Text != "&nbsp;")
        {
            BtnUpdate.Visible = false;
            ddnleave.Visible = false;
        }
          else
        {
            BtnUpdate.Visible = true;
            ddnleave.Visible = true;
        }
        ////empid = Convert.ToInt32(gvLeave.SelectedRow.Cells[1].Text);
        //ddnleave.SelectedItem.Text = Convert.ToInt32(gvLeave.SelectedRow.Cells[7].Text);
    }
    protected void BtnUpdate_Click1(object sender, EventArgs e)
    {
        //a = ddlempname.SelectedValue.ToString();
        b = ddlempname.SelectedValue.ToString();

        if (ddnleave.SelectedItem.Text == "Approved")
        {
            str = "Approved";
        }
        else if (ddnleave.SelectedItem.Text == "Dis Approved")
        {
            str = "Dis Approved";
        }

        LA = obj.UpdateLead(Convert.ToInt32(lblid.Text.Trim()), str);
        if (LA > 0)
        {
            BindGrid();
            lblmsg.Text = "Lead Details Has Been Updated";
            ddnleave.SelectedIndex = 0;
        }
        //if (LA > 0)
        //{
        //    LB = obj.InsertLeadgeneration(Convert.ToInt32(b), Session["c"].ToString(), Session["d"].ToString(),
        //        Session["ee"].ToString(), Session["f"].ToString(), Session["g"].ToString(),
        //        str, "admin", DateTime.Now.ToString());
        //    //LC = obj.ApproveLead(Convert.ToInt32(b), Session["c"].ToString(), Session["d"].ToString(),
        //    //      Session["ee"].ToString(), Session["f"].ToString(), Session["g"].ToString(),
        //    //      str, "admin", DateTime.Now.ToString());
        //    if (LB > 0)
        //    {
        //        BindGrid();

        //        lblmsg.Text = "Lead Details Has Been Updated";
        //    }
        //}
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
    //protected string getsfinal(string s1)
    //{   string val = "";
    //    if (s1 == "")
    //        val = " - ";
    //    else if (s1 == "" && s1 == " ")
    //        val = " - ";
 // return val;
    //}
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

    protected void ddlempname_SelectedIndexChanged1(object sender, EventArgs e)
    {
        b = ddlempname.SelectedValue.ToString();
        dtrecords = obj.SelectLeadApprovedDetailsforemp(Convert.ToInt32(ddlempname.SelectedValue));
        gvLeave.DataSource = dtrecords;
        gvLeave.DataBind();

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {

        b = ddlempname.SelectedValue.ToString();

        //if (ddnleave.SelectedItem.Text == "Approved")
        //{
        //    str = "Approved";
        //}
        //if (ddnleave.SelectedItem.Text == "Dis Approved")
        //{
        //    str = "Dis Approved";
        //}

        //LA = obj.UpdateLead(Convert.ToInt32(lblid.Text), str);
        //if (LA > 0)
        //{
        str = Session["h"].ToString();

        LC = obj.ApproveLead(Convert.ToInt32(b), Session["c"].ToString(), Session["d"].ToString(),
             Session["ee"].ToString(), Session["f"].ToString(), Session["g"].ToString(),
             str, "admin", DateTime.Now.ToString());
        if (LC > 0)
        {
            BindGrid();
            BindGrid1();
            lblmsg.Text = "Lead Details Has Been Updated";
        }
        //}
    }
    protected void gvLeave_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
    }
        public void BindGrid1()
    {
        dtdetail = obj.SelectLeadEmpApprovedDetails();
        grdSend.DataSource = dtdetail;
        grdSend.DataBind();
    }


}