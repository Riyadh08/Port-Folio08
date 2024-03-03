using System;

namespace Ryad_PortFolio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Email.Value.Trim();
            string password = Pass.Value.Trim();

            if (email.Equals("robiulriyadh66@gmail.com") && password.Equals("1234"))
            {
                // Set cookies with an expiration time (e.g., 7 days from now)
                Response.Cookies["userEmail"].Value = email;
                Response.Cookies["userEmail"].Expires = DateTime.Now.AddDays(7);

                Response.Cookies["userPassword"].Value = password;
                Response.Cookies["userPassword"].Expires = DateTime.Now.AddDays(7);

                // Debugging: Output a message if cookies are set
                Response.Write("<script>alert('Cookies set successfully.');</script>");

                Response.Redirect("Admin.aspx");
            }
            else
            {
                // Debugging: Output a message if login fails
                Response.Write("<script>alert('Login failed.');</script>");
            }
        }

    }
}
