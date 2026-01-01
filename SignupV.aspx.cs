using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masculinezft
{
    public partial class SignupV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MasculineDB"].ConnectionString;


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                
                string query = "INSERT INTO Users (Email, PasswordHash, FirstName, LastName, PhoneNumber) VALUES (@Email, @Password, @FirstName, @LastName, @Phone)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Email", emailInput.Text);
                cmd.Parameters.AddWithValue("@Password", passWord.Text);
                cmd.Parameters.AddWithValue("@FirstName", firstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastName.Text);
                cmd.Parameters.AddWithValue("@Phone", phoneNumber.Text);

                conn.Open();
                cmd.ExecuteNonQuery();

                SuccessLabel.Text = "Account created!";
                SuccessLabel.Visible = true;

                emailInput.Text = "";
                passWord.Text = "";
                firstName.Text = "";
                lastName.Text = "";
                phoneNumber.Text = "";
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Account created successfully!');", true);
        }
        

    }
}