using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Add_Employee : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtemp, dt;
    int i, u, d, index;
    string strphoto, result, rresult, Xmarkphoto, diplomaphoto, mastphoto, bachlorphoto, XIIphotos, str1, str2, str3, str4, str5, str6, str7;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();
            rresult = GeneratEmployeecode();
            txtempcode.Text = rresult;
            dropdownbind();
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            BtnAdd.Visible = true;


        }
    }
    #endregion
    #region Bind Grid
    public void BindGrid()
    {
        dtemp = obj.SelectEmployeeDetails();
        gvEmployee.DataSource = dtemp;
        gvEmployee.DataBind();
    }
    #endregion
    #region emptype
    public void dropdownbind()
    {
        dt = obj.selectemployeetype();
        ddlemptype.DataSource = dt;
        ddlemptype.DataValueField = "depid";
        ddlemptype.DataTextField = "depname";
        ddlemptype.DataBind();
        ddlemptype.Items.Insert(0, new ListItem("Select Type", "0"));
    }
    #endregion
    #region Generat Employee Code
    public string GeneratEmployeecode()
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        result = new string(Enumerable.Repeat(chars, 8).Select(s => s[random.Next(s.Length)]).ToArray());
        return "EIPL-" + result;
    }
    #endregion
    #region Add Employee Details
    protected void BtnAdd_Click(object sender, EventArgs e)
    {

        if (empphoto.HasFile)
        {
            //create the path to save the file 
            string fileName = Path.Combine(Server.MapPath("~/EmployeePhoto"), empphoto.FileName);
            //save the file to our local path
            empphoto.SaveAs(fileName);
            // AlumniImage.ImageUrl = "~/EmployeePhoto/" + empphoto.FileName;
            strphoto = empphoto.FileName;
        }
        if (Xphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/XMarksheet"), Xphoto.FileName);
            Xphoto.SaveAs(filename);
            Xmarkphoto = Xphoto.FileName;
        }
        else
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz upload image.')", true);

        if (dipphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/diplomamarksheet"), dipphoto.FileName);
            dipphoto.SaveAs(filename);
            diplomaphoto = dipphoto.FileName;
        }
        else
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz upload image.')", true);

        if (masterphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/masterMarksheet"), masterphoto.FileName);
            masterphoto.SaveAs(filename);
            mastphoto = masterphoto.FileName;
        }
        else
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz upload image.')", true);


        if (XIIphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/XIImarksheets"), XIIphoto.FileName);
            XIIphoto.SaveAs(filename);
            XIIphotos = masterphoto.FileName;
        }
        else
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz upload image.')", true);


        if (bachphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/bachlormarksheets"), bachphoto.FileName);
            bachphoto.SaveAs(filename);
            bachlorphoto = bachphoto.FileName;
        }
        else
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz upload image.')", true);



        i = obj.InsertEmployeeDetails("~/EmployeePhoto/" + strphoto, "~/XMarksheet/" + Xmarkphoto, "~/diplomamarksheet/" + diplomaphoto,
            "~/masterMarksheet/" + mastphoto, txtprev.Text,
            "~/bachlormarksheets/" + bachlorphoto, "~/XIImarksheets/" + XIIphotos, txtempcode.Text.Trim(), txtempdoj.Text,
            txtdesig.Text, ddnsal.SelectedItem.Text + txtempFname.Text, txtemplname.Text,
            txtempfather.Text, txtempMname.Text, ddlemptype.SelectedValue,
            txtemppaddress.Text, txtempcaddress.Text, txtempiddetails.Text, "+91-" + txtempmobile.Text, txtempphone.Text,
            txtempxth.Text, txtempxii.Text, txtempbachelor.Text, txtempmaster.Text, txtempdiploma.Text, txtempcertificate.Text,
            txtempachievement.Text,
            ddnempmstatus.SelectedItem.Text, TxtEmail.Text, TxtSalery.Text, txtempdob.Text, txtempdoa.Text, txtempbank.Text, txtempbranch.Text, txtempaccount.Text,
            txtempifsc.Text, txtempusername.Text, txtemppwd.Text, "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Employee Records Has Been Saved";
            BindGrid();
            rresult = GeneratEmployeecode();
            txtempcode.Text = rresult;
            ClearFields();
            btnupdate.Visible = true;
            btndel.Visible = false;
            btncancel.Visible = false;
            BtnAdd.Visible = true;


        }
    }
    #endregion
    #region Clear Fields
    public void ClearFields()
    {
        txtempdoj.Text = "";
        txtdesig.Text = "";
        txtempFname.Text = "";
        txtemplname.Text = "";
        txtempfather.Text = "";
        txtempMname.Text = "";
        txtemppaddress.Text = ""; txtempcaddress.Text = ""; txtempiddetails.Text = ""; txtempmobile.Text = ""; txtempphone.Text = ""; txtempxth.Text = "";
        txtempxii.Text = ""; txtempbachelor.Text = ""; txtempmaster.Text = ""; txtempdiploma.Text = ""; txtempcertificate.Text = ""; txtempachievement.Text = "";
        ddnempmstatus.SelectedIndex = 0; txtempdob.Text = ""; txtempdoa.Text = ""; txtempbank.Text = ""; txtempbranch.Text = ""; txtempaccount.Text = "";
        txtempifsc.Text = ""; txtempusername.Text = ""; txtemppwd.Text = "";
    }
    #endregion
    #region Select Index Change
    protected void gvEmployee_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvEmployee.SelectedIndex;
        lblid.Text = gvEmployee.DataKeys[index].Value.ToString();
        dt = obj.nonreplace(Convert.ToInt32(lblid.Text));
        if (dt.Rows.Count > 0)
        {
            string z = dt.Rows[0]["Xmarksheet"].ToString();
            string emp = dt.Rows[0]["EmpPhoto"].ToString();
            string dip = dt.Rows[0]["Diplomamarksheet"].ToString();
            string mast = dt.Rows[0]["Mastermarksheet"].ToString();
            string xii = dt.Rows[0]["XIImarksheet"].ToString();
            string bach = dt.Rows[0]["Bachlormarksheet"].ToString();
            Session["empphoto"] = dt.Rows[0]["EmpPhoto"].ToString();
            Session["Xmarksheet"] = dt.Rows[0]["Xmarksheet"].ToString();
            Session["Diplomamarksheet"] = dt.Rows[0]["Diplomamarksheet"].ToString();
            Session["Mastermarksheet"] = dt.Rows[0]["Mastermarksheet"].ToString();
            Session["XIImarksheet"] = dt.Rows[0]["XIImarksheet"].ToString();
            Session["Bachlormarksheet"] = dt.Rows[0]["Bachlormarksheet"].ToString();
        }

        txtempcode.Text = gvEmployee.SelectedRow.Cells[8].Text;
        txtempdoj.Text = gvEmployee.SelectedRow.Cells[9].Text;
        txtdesig.Text = gvEmployee.SelectedRow.Cells[10].Text;
        ddnsal.SelectedIndex = 1;
        txtempFname.Text = gvEmployee.SelectedRow.Cells[12].Text;
        txtemplname.Text = gvEmployee.SelectedRow.Cells[13].Text;
        txtempfather.Text = gvEmployee.SelectedRow.Cells[14].Text;
        txtempMname.Text = gvEmployee.SelectedRow.Cells[15].Text;
        txtemppaddress.Text = gvEmployee.SelectedRow.Cells[16].Text;
        txtempcaddress.Text = gvEmployee.SelectedRow.Cells[17].Text;
        txtempiddetails.Text = gvEmployee.SelectedRow.Cells[18].Text;
        txtempmobile.Text = gvEmployee.SelectedRow.Cells[19].Text;
        txtempphone.Text = gvEmployee.SelectedRow.Cells[20].Text;
        txtempxth.Text = gvEmployee.SelectedRow.Cells[21].Text;
        txtempxii.Text = gvEmployee.SelectedRow.Cells[22].Text;
        txtempbachelor.Text = gvEmployee.SelectedRow.Cells[23].Text;
        txtempmaster.Text = gvEmployee.SelectedRow.Cells[24].Text;
        txtempdiploma.Text = gvEmployee.SelectedRow.Cells[25].Text;
        txtempcertificate.Text = gvEmployee.SelectedRow.Cells[26].Text;
        txtempachievement.Text = gvEmployee.SelectedRow.Cells[27].Text;
        txtprev.Text = gvEmployee.SelectedRow.Cells[28].Text;
        ddnempmstatus.SelectedIndex = 1;
        TxtEmail.Text = gvEmployee.SelectedRow.Cells[30].Text;
        TxtSalery.Text = gvEmployee.SelectedRow.Cells[31].Text;
        txtempdob.Text = gvEmployee.SelectedRow.Cells[32].Text;
        txtempdoa.Text = gvEmployee.SelectedRow.Cells[33].Text;
        txtempbank.Text = gvEmployee.SelectedRow.Cells[34].Text;
        txtempbranch.Text = gvEmployee.SelectedRow.Cells[35].Text;
        txtempaccount.Text = gvEmployee.SelectedRow.Cells[36].Text;
        txtempifsc.Text = gvEmployee.SelectedRow.Cells[37].Text;
        txtempusername.Text = gvEmployee.SelectedRow.Cells[38].Text;
        txtemppwd.Text = gvEmployee.SelectedRow.Cells[39].Text;

        btnupdate.Visible = true;
        btndel.Visible = true;
        btncancel.Visible = true;
        BtnAdd.Visible = false;

    }
    #endregion
    #region Update Button
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (empphoto.HasFile)
        {
            string fileName = Path.Combine(Server.MapPath("~/EmployeePhoto"), empphoto.FileName);
            empphoto.SaveAs(fileName);
             strphoto = "~/EmployeePhoto/" + empphoto.FileName;
        }
        else
        {
            strphoto = Session["EmpPhoto"].ToString();
        }
        if (Xphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/XMarksheet"), Xphoto.FileName);
            Xphoto.SaveAs(filename);
            Xmarkphoto = "~/XMarksheet/" + Xphoto.FileName;
        }
        else
            Xmarkphoto = Session["Xmarksheet"].ToString();

        if (dipphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/diplomamarksheet"), dipphoto.FileName);
            dipphoto.SaveAs(filename);
            diplomaphoto = "~/diplomamarksheet/" + dipphoto.FileName;
        }
        else
            diplomaphoto = Session["Diplomamarksheet"].ToString();

        if (masterphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/masterMarksheet"), masterphoto.FileName);
            masterphoto.SaveAs(filename);
            mastphoto ="~/masterMarksheet/"+ masterphoto.FileName;
        }
        else
            mastphoto = Session["Mastermarksheet"].ToString();

        if (XIIphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/XIImarksheets"), XIIphoto.FileName);
            XIIphoto.SaveAs(filename);
            XIIphotos = "~/XIImarksheets/"+ masterphoto.FileName;
        }
        else
            XIIphotos = Session["XIImarksheet"].ToString();


        if (bachphoto.HasFile)
        {
            string filename = Path.Combine(Server.MapPath("~/bachlormarksheets"), bachphoto.FileName);
            bachphoto.SaveAs(filename);
            bachlorphoto = "~/bachlormarksheets/" + bachphoto.FileName;
        }
        else
        {
            bachlorphoto = Session["Bachlormarksheet"].ToString();

        }

        u = obj.UpdateEmployees(Convert.ToInt32(lblid.Text),strphoto, Xmarkphoto,diplomaphoto,
            mastphoto, txtprev.Text,
         bachlorphoto, XIIphotos, txtempcode.Text.Trim(), txtempdoj.Text,
            txtdesig.Text, txtempFname.Text, txtemplname.Text,
            txtempfather.Text, txtempMname.Text, ddlemptype.SelectedValue,
            txtemppaddress.Text, txtempcaddress.Text, txtempiddetails.Text, "+91-" + txtempmobile.Text, txtempphone.Text,
            txtempxth.Text, txtempxii.Text, txtempbachelor.Text, txtempmaster.Text, txtempdiploma.Text, txtempcertificate.Text,
            txtempachievement.Text,
            ddnempmstatus.SelectedItem.Text, TxtEmail.Text, TxtSalery.Text, txtempdob.Text, txtempdoa.Text, txtempbank.Text, txtempbranch.Text, txtempaccount.Text,
            txtempifsc.Text, txtempusername.Text, txtemppwd.Text, "Admin", DateTime.Now.ToString());

        if (u > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item Updated Sucessfully";
            btnupdate.Visible = false;
            btndel.Visible = false;
            BtnAdd.Visible = true;
            btncancel.Visible = true;
        }
    }
    #endregion
    #region Grid Page Indexing
    protected void gvEmployee_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvEmployee.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    #endregion
    #region SelectedIndexChanged
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnupdate.Visible = true;

    }
    #endregion
    #region delete employee
    protected void btndel_Click1(object sender, EventArgs e)
    {
        {

            d = obj.DeleteEmployee(Convert.ToInt32(lblid.Text));
            if (d > 0)
            {
                lblmsg.Text = "Item CategoryId Deleted Sucessfully";

                btnupdate.Visible = true;
                btndel.Visible = false;
                btncancel.Visible = false;
                BtnAdd.Visible = true;

            }
        }
    }

    #endregion
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("admindashboard.apsx");
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("EmployeeLogin.aspx");
 
   }

}


