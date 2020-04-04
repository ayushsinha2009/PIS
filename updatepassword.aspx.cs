using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
public partial class updatepassword : System.Web.UI.Page
{
    DataObjects obj = new DataObjects();
    DataTable dt, dt1;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        }

    }
    protected void btnfgp_Click(object sender, EventArgs e)
    {
        dt = obj.Forgetpassword(txtempname.Text);
        if (dt.Rows.Count > 0)
        {
            lblusemame.Text = "Username::" + dt.Rows[0]["Empusername"].ToString();
            lblpassword.Text = "Password::" + dt.Rows[0]["EmpPassword"].ToString();
            //            email = dt.Rows[0]["Email"].ToString();

            //MailMessage mail = new MailMessage();
            //SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            //mail.From = new MailAddress("misrarajanmisra@gmail.com");
            //mail.To.Add(email);
            //mail.Subject = "User Name & Password";
            //mail.Body = "User Name::" + dt.Rows[0]["Empusername"] + "And Password is::" + dt.Rows[0]["EmpPassword"];
            //SmtpServer.Port = 587;
            //SmtpServer.Credentials = new System.Net.NetworkCredential("misrarajanmisra@gmail.com", "7897529870");
            //SmtpServer.EnableSsl = true;
            //SmtpServer.Send(mail);

        }
        if (dt.Rows.Count <= 0)
        {

            dt1 = obj.Forgetpasswordadmin(txtempname.Text);
            if (dt1.Rows.Count > 0)
            {
                lblusemame.Text = dt1.Rows[0]["UserName"].ToString();
                lblpassword.Text = dt1.Rows[0]["Password"].ToString();
            }
            if (dt1.Rows.Count <= 1)
            {

            }
        }
    }

    protected void btnfgp_Click1(object sender, EventArgs e)
    {
        dt = obj.Forgetpassword(txtempname.Text);
        if (dt.Rows.Count > 0)
        {
            lblusemame.Text = "Username::" + dt.Rows[0]["Empusername"].ToString();
            lblpassword.Text = "Password::" + dt.Rows[0]["EmpPassword"].ToString();
            //            email = dt.Rows[0]["Email"].ToString();

            //MailMessage mail = new MailMessage();
            //SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            //mail.From = new MailAddress("misrarajanmisra@gmail.com");
            //mail.To.Add(email);
            //mail.Subject = "User Name & Password";
            //mail.Body = "User Name::" + dt.Rows[0]["Empusername"] + "And Password is::" + dt.Rows[0]["EmpPassword"];
            //SmtpServer.Port = 587;
            //SmtpServer.Credentials = new System.Net.NetworkCredential("misrarajanmisra@gmail.com", "7897529870");
            //SmtpServer.EnableSsl = true;
            //SmtpServer.Send(mail);

        }
        if (dt.Rows.Count <= 0)
        {

            dt1 = obj.Forgetpasswordadmin(txtempname.Text);
            if (dt1.Rows.Count > 0)
            {
                lblusemame.Text = dt1.Rows[0]["UserName"].ToString();
                lblpassword.Text = dt1.Rows[0]["Password"].ToString();
            }
            if (dt1.Rows.Count <= 1)
            {

            }

        }
    }
}