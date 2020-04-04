using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class leadgeneration : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtdetail;
    int i, empid;
    #endregion
    #region Page Load

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EmpId"] != null)
        {
            if (Session["EmpId"].ToString() != "" && Session["EmpFirstname"].ToString() != "")
            {
                empid = Convert.ToInt32(Session["EmpId"].ToString());

                BindGrid(empid);
                BindGrid1(empid);
                lblempname.Text = Session["EmpFirstname"].ToString();

            }
        }
        else
            Response.Redirect("EmployeeLogin.aspx");

        //Session.Abandon();
        //Session.RemoveAll();
        //Session.Clear();
    }

    #endregion


    public void BindGrid1(int empid)
    {
        dtdetail = obj.SelectLeadApprovedDetailsEmpDevplor(empid);
        gvLeave.DataSource = dtdetail;
        gvLeave.DataBind();
    }
    public void BindGrid(int empid)
    {
        dtdetail = obj.Seeleads(empid);

        gvLeave.DataSource = dtdetail;
        gvLeave.DataBind();
    }

    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("leadgenration.aspx");
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.InsertLeadgeneration(empid, ddnlead.SelectedItem.Text, txtproject.Text, txtclient.Text, txtbudget.Text, txtprojectdesc.Text,
            lblempname.Text, DateTime.Now.ToString());
        if (i > 0)
        {

            Response.Write("<script language=javascript>alert('Your Lead Has Been Forwarded');</script>");
            lblmsg.Text = "Lead Applied";
            BindGrid(Convert.ToInt32(Session["EmpId"].ToString()));
            //ClearFields();
        }
    }

    //public void ClearFields()
    //{
    //    ddnlead.SelectedIndex = 0;
    //    txtproject.Text = "";

    //    txtclient.Text = "";
    //    txtbudget.Text = "";
    //    txtprojectdesc.Text = "";
    //}
    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }


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
        Response.ContentType = "application/Lead.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvLeave.GridLines = GridLines.Both;
        gvLeave.HeaderStyle.Font.Bold = true;
        gvLeave.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("EmployeeLogin.aspx");
    }
}



