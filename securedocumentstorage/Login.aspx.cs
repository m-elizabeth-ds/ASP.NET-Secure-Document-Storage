using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace securedocumentstorage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;
AttachDbFilename=C:\Users\Sangeeta Mehta\source\repos\securedocumentstorage\securedocumentstorage\App_Data\Database_registration.mdf;
Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conStr);

            string query = "SELECT COUNT(*) FROM user_regis WHERE Username=@Usernamme AND Password=@Password";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Username", TextBoxx1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxxpass2.Text);

            con.Open();

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
            if (count == 1)
            {
                // Login success alert + redirect
                Response.Write("<script>alert('Login Successful!');window.location='Dashboard.aspx';</script>");
            }
            else
            {
                // Login failed alert + redirect
                Response.Write("<script>alert('Invalid username or password. Please create a new account.');window.location='Registration.aspx';</script>");
            }
        }
    }
}

