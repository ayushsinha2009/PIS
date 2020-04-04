using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
public partial class ContactUs : System.Web.UI.Page
{
    
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i;
    #endregion
    
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { }
    }
    #endregion


    #region Submit Details
    protected void Button1_Click(object sender, EventArgs e)
    {
        i = obj.InsertContactDetails(txtname.Text, txtemail.Text, "+91-" + txtno.Text, txtcmpname.Text, txtsub.Text, txtmsg.Text, "Site User", DateTime.Now.ToString());
        if (i > 0)
        {
            lblMsg.Text = "Data Has Been Saved";
            SendMail();
            ClearFields();
        }
    }
    #endregion

    #region Sending Mail
    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("misrarajanmisra@gmail.com");
        mail.To.Add("misrarajanmisra@gmail.com");
        mail.Subject = "Contact Details";
        mail.Body = "Name::" + txtname.Text + "Email Address::" + txtemail.Text + "Moblile No.::" + txtno.Text + "Company Name::" + txtcmpname.Text + "Subject::" + txtsub.Text + "Message::" + txtmsg.Text;
        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("misrarajanmisra@gmail.com", "7897529870");
        SmtpServer.EnableSsl = true;
        SmtpServer.Send(mail);

    }
    #endregion

    #region Clear Fields
    public void ClearFields()
    {
        txtname.Text = ""; txtemail.Text = ""; txtno.Text = ""; txtcmpname.Text = ""; txtsub.Text = ""; txtmsg.Text = "";
    }
    #endregion
}