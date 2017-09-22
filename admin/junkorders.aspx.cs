using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace himalayanorthodoxtea.admin
{
    public partial class junkorders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbDeleteHeader_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                ((CheckBox)gridViewRow.FindControl("cbDelete")).Checked = ((CheckBox)sender).Checked;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox headerCheckBox = (CheckBox)GridView1.HeaderRow.FindControl("cbDeleteHeader");

            if (headerCheckBox.Checked)
            {
                headerCheckBox.Checked = ((CheckBox)sender).Checked;
            }
            else
            {
                bool allCheckBoxesChecked = true;

                foreach (GridViewRow gridViewRow in GridView1.Rows)
                {
                    if (!((CheckBox)gridViewRow.FindControl("cbDelete")).Checked)
                    {
                        allCheckBoxesChecked = false;
                        break;
                    }
                }
                headerCheckBox.Checked = allCheckBoxesChecked;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            List<string> lstorderIdsToDelete = new List<string>();

            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                if (((CheckBox)gridViewRow.FindControl("cbDelete")).Checked)
                {
                    string orderId = ((Label)gridViewRow.FindControl("lblorderid")).Text;

                    lstorderIdsToDelete.Add(orderId);
                }
            }
            if (lstorderIdsToDelete.Count > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Navy;

                DeleteJunkOrders(lstorderIdsToDelete);

                lblMessage.Text = lstorderIdsToDelete.Count.ToString() + "row(s) deleted";

                GridView1.DataBind();
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "No rows selected to delete";
            }
        }

        public static void DeleteJunkOrders(List<string> orderIds)
        {
            string cs = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                List<string> parameters = orderIds.Select((s, i) => "@Parameter" + i.ToString()).ToList();

                string InClause = string.Join(",", parameters);

                string deleteCommandText = "Delete from orderForm where orderId IN(" + InClause + ")";

                SqlCommand cmd = new SqlCommand(deleteCommandText, con);

                for (int i = 0; i < parameters.Count; i++)
                {
                    cmd.Parameters.AddWithValue(parameters[i], orderIds[i]);
                }

                con.Open();

                cmd.ExecuteNonQuery();
            }
        }
    }
}