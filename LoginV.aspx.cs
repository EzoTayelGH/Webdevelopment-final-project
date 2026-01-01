using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masculinezft
{
    public partial class LoginV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MasculineDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND PasswordHash = @Password";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", emailInput.Text);
                cmd.Parameters.AddWithValue("@Password", passWord.Text);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('Login successful!'); window.location='home.aspx';", true);
                }
                else
                {
                    ErrorLabel.Text = "Invalid email or password.";
                    ErrorLabel.Visible = true;
                }
            }
        }
    }
}