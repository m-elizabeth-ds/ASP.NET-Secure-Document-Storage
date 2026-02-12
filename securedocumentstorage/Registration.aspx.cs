using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace securedocumentstorage
{
    public partial class Registration : System.Web.UI.Page
    {

        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;
AttachDbFilename=C:\Users\Sangeeta Mehta\source\repos\securedocumentstorage\securedocumentstorage\App_Data\Database_registration.mdf;
Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
            {
                if (txtPassword.Text != txtConfirmPassword.Text)
                {
                    Response.Write("Passwords do not match");
                    return;
                }

                SqlConnection con = new SqlConnection(conStr);

                string query = @"INSERT INTO user_regis
            (Username,Password,Email,FullName,DOB,Gender)
            VALUES (@Username,@Password,@Email,@FullName,@DOB,@Gender)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonListt1.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("Registration Successful!");

                Response.Redirect("Login.aspx");
            }
        }
    }