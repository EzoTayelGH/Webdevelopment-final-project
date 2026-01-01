using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masculinezft
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCurrentUserInfo();
                LoadCategories();
                LoadProducts();
            }
        }


        private void LoadCurrentUserInfo()
        {
            if (Session["UserId"] != null)
            {
                int currentUserId = Convert.ToInt32(Session["UserId"]);
                string connectionString = ConfigurationManager.ConnectionStrings["MasculineDB"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "SELECT Email, FirstName, LastName FROM Users WHERE UserId = @UserId";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@UserId", currentUserId);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        string firstName = reader["FirstName"].ToString();
                        string lastName = reader["LastName"].ToString();
                        string email = reader["Email"].ToString();

                        lblCurrentAccount.Text = !string.IsNullOrEmpty(firstName) && !string.IsNullOrEmpty(lastName)
                            ? firstName + " " + lastName
                            : email;
                        currentAccountSection.Visible = true;
                    }
                    else
                    {
                        currentAccountSection.Visible = false;
                    }
                }
            }
            else
            {
                currentAccountSection.Visible = false;
            }
        }

        private void LoadProducts()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MasculineDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Selects featured products first, then newest arrivals
                string query = "SELECT ProductId, ProductName, Price, ImageUrl FROM Products ORDER BY IsFeatured DESC, CreatedAt DESC";
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                // Note: Ensure you have an <asp:Repeater ID="ProductRepeater"> in your home.aspx
                ProductRepeater.DataSource = dt;
                ProductRepeater.DataBind();
            }
        }
        private void LoadCategories()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MasculineDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // 1. Updated query to match your specific column names (DisplayOrder, IsActive)
                string query = @"SELECT CategoryId, CategoryName, Description, IconClass, ImageUrl 
                         FROM Categories 
                         WHERE IsActive = 1 
                         ORDER BY DisplayOrder ASC";

                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                // 2. Bind the data to the repeater
                CategoryRepeater.DataSource = dt;
                CategoryRepeater.DataBind();
            }
        }

    }
}