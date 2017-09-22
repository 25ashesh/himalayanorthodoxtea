using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Drawing;


namespace himalayanorthodoxtea
{
    public partial class smtadminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblLoginCheck1.Text = Request.QueryString["msg1"];
            lblLoginCheck2.Text = Request.QueryString["msglogout"];
            this.lblLoginCheck1.ForeColor = Color.Red;
            this.lblLoginCheck2.ForeColor = Color.Red;
        }

        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;

            string username = txtAdmin.Text;
            string password = txtPassword.Text;

            //bool AttendanceCheck = AttendanceCheckBox.Checked;
            //string dateattendance = DateTime.UtcNow.ToString("dd/MM/yyyy");

                SqlConnection con = new SqlConnection(conString);
                using (con)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("select Name, UserName, Password from smtAdmin where UserName = @UserName and Password = @Password", con);
                    cmd.Parameters.AddWithValue("@UserName", username);
                    cmd.Parameters.AddWithValue("@Password", password);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        lblReport.Text = "Welcome";
                        Session["AdminLogin"] = username;
                        //Session["AdminLogin"] = username.Substring(4,username.Length);

                        Response.Redirect("admin/dashboard.aspx");
                    }
                    else
                    {
                        lblReport.Text = "Invalid login credentials!";
                        this.lblReport.ForeColor = Color.Red;
                    }

                }


        }
    }
}