using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace himalayanorthodoxtea.admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(constring);

            SqlCommand cmd1 = new SqlCommand("select count(*) as countorder from orderform",con);
            SqlCommand cmd2 = new SqlCommand("select count(*) as countdispatched from orderform where dispatched=1", con); 
            SqlCommand cmd3 = new SqlCommand("select * from Hits", con);

            con.Open();

            SqlDataReader reader1 = cmd1.ExecuteReader();
            if(reader1.Read())
            {
                Label2.Text = reader1["countorder"].ToString();
                reader1.Close();
            }

            SqlDataReader reader2 = cmd2.ExecuteReader();
            if (reader2.Read())
            {
                Label4.Text = reader2["countdispatched"].ToString();
                reader2.Close();
            }
            SqlDataReader reader3 = cmd3.ExecuteReader();

            if (reader3.Read())
            {
                lblHits.Text = reader3["Hits"].ToString();
                reader3.Close();

            }
            con.Close();
        }
    }
}