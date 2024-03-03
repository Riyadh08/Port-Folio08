using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ryad_PortFolio
{
    public partial class Admin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void addId_Click(object sender, EventArgs e)
        {
            Response.Redirect("addSkills.aspx");

        }

        protected void showId_Click(object sender, EventArgs e)
        {
            Response.Redirect("listSkills.aspx");

        }
    }
}