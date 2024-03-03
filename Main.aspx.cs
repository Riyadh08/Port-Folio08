using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Web.UI;

namespace Ryad_PortFolio
{
    public partial class Main : System.Web.UI.Page
    {



        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                // data base ar sathe connection establish korchi
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM ryad", conn);

                DataTable dtbls = new DataTable();

                sda.Fill(dtbls);
                CoursesGridView.DataSource = dtbls;
                CoursesGridView.DataBind();

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }



        }


        protected void txtSubmit_Click(object sender, EventArgs e)
        {

            try
            {
                sendEmail();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }

        }


        private void sendEmail()
        {
            string smtpUserName;
            string smtpPassword;
            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(emailTextBox.Text.Trim());
            mail.To.Add(smtpUserName);
            mail.Subject = "Portfolio";

            mail.Body = ("Name : " + nameTextBox.Text.Trim() + Environment.NewLine + "Email : " + emailTextBox.Text.Trim() + Environment.NewLine + "Message :" + messageTextBox.Text.Trim());

            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);


            Response.Redirect("main.aspx", false);
        }

    }
}
