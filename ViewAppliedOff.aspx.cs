using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ViewAppliedOff : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtjob;
    int EmpId,Tl, Cl, Sl, Pl, Upl, Tlnew=0, Clnew=0, Slnew=0, Plnew=0, Uplnew=0,Days=0,u,LA;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();
        }
    }
    public void BindGrid()
    {
        dtjob = obj.SelectLeaveDetails();
        GvApply.DataSource = dtjob;
        GvApply.DataBind();
    }
    protected void GvApply_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvApply.PageIndex = e.NewPageIndex;
        BindGrid();
    }
  
    protected void GvApply_SelectedIndexChanged(object sender, EventArgs e)
    {
        EmpId = Convert.ToInt32(GvApply.SelectedRow.Cells[1].Text);
        Tl=Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
        Cl = Convert.ToInt32(GvApply.SelectedRow.Cells[4].Text);
        Sl = Convert.ToInt32(GvApply.SelectedRow.Cells[5].Text);
        Pl = Convert.ToInt32(GvApply.SelectedRow.Cells[6].Text);
        Upl = Convert.ToInt32(GvApply.SelectedRow.Cells[7].Text);
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {

        EmpId = Convert.ToInt32(GvApply.SelectedRow.Cells[1].Text);
        Tl = Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
        Cl = Convert.ToInt32(GvApply.SelectedRow.Cells[4].Text);
        Sl = Convert.ToInt32(GvApply.SelectedRow.Cells[5].Text);
        Pl = Convert.ToInt32(GvApply.SelectedRow.Cells[6].Text);
        Upl = Convert.ToInt32(GvApply.SelectedRow.Cells[7].Text);
        Days = Convert.ToInt32(GvApply.SelectedRow.Cells[14].Text);
        if (ddnleave.SelectedItem.Text == "Dis Approved")
        { }
        if (ddnleave.SelectedItem.Text == "Approved")
        {
            if (GvApply.SelectedRow.Cells[10].Text == "CasualLeave")
            {
                Clnew = Cl - Days;
                Tlnew = Tl - Days;
            }
            if (GvApply.SelectedRow.Cells[10].Text != "CasualLeave")
            {
                Clnew = Convert.ToInt32(GvApply.SelectedRow.Cells[4].Text);
                Tlnew = Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
               
                
            }
            if (GvApply.SelectedRow.Cells[10].Text == "SickLeave")
            {
                Slnew = Sl - Days;
                Tlnew = Tl - Days;
            }
            if (GvApply.SelectedRow.Cells[10].Text != "SickLeave")
            {
                Slnew = Convert.ToInt32(GvApply.SelectedRow.Cells[5].Text);
                Tlnew = Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
               
            }
            if (GvApply.SelectedRow.Cells[10].Text == "PaidLeave")
            {
                Plnew = Pl - Days;
                Tlnew = Tl - Days;
            }
            if (GvApply.SelectedRow.Cells[10].Text != "PaidLeave")
            {
                Plnew = Convert.ToInt32(GvApply.SelectedRow.Cells[6].Text);
                Tlnew = Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
                
            }
            if (GvApply.SelectedRow.Cells[10].Text == "UnpaidLeave")
            {
                Uplnew = Upl - Days;
                Tlnew = Tl - Days;
            }
            if (GvApply.SelectedRow.Cells[10].Text != "UnpaidLeave")
            {
                Uplnew = Convert.ToInt32(GvApply.SelectedRow.Cells[7].Text);
                Tlnew = Convert.ToInt32(GvApply.SelectedRow.Cells[3].Text);
            }
            u = obj.UpdateLeaveDetails(EmpId, Tlnew.ToString(), Clnew.ToString(), Slnew.ToString(), Plnew.ToString(), Uplnew.ToString());
            LA = obj.UpdateLeaveApplyFor(EmpId, ddnleave.SelectedItem.Text);
            if (u > 0&& LA>0)
            {
                lblmsg.Text = "Leave Details Has Been Updated";
            }

        }
    }
}