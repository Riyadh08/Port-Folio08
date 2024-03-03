using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ryad_PortFolio
{
    public partial class listSkills : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                // data base ar sathe connection establish korchi
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlDataAdapter sda = new SqlDataAdapter("SELECT [Id],[Field],[Description] FROM ryad", conn);

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

        protected void CoursesGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "upd")
            {
                string idValue = e.CommandArgument.ToString().Trim();
                Response.Write($"<script>alert('Redirecting to updateSkills.aspx?Id={idValue}')</script>");
                Response.Redirect($"~/updateSkills.aspx?Id={idValue}");
            }
            else if (e.CommandName == "del")
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strcon);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM ryad WHERE Id=@Id", conn);
                    cmd.Parameters.AddWithValue("@Id", e.CommandArgument);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("~/main.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

    }
}