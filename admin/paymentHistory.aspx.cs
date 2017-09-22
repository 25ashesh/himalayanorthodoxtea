using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace himalayanorthodoxtea.admin
{
    public partial class paymentHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clearFields()
        {
            txtorderId.Text = " ";
            txtpayment.Text = " ";
            txtReceiver.Text = " ";
            admindatepicker.Text = " ";
            chkenterbook.Checked = false;
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {
            string ConString = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;

            //int orderId = Convert.ToInt32(txtorderId.Text);
            //int PaymentRs = Convert.ToInt32(txtpayment.Text);
            string PaymentReceiver = txtReceiver.Text;
            string PaymentDate = admindatepicker.Text;
            string EntryMadeDate = DateTime.UtcNow.ToString("dd/MM/yyyy");
            bool EnteredInBook = chkenterbook.Checked;

            if (txtorderId.Text != " " && txtpayment.Text != " " && PaymentReceiver != " " && PaymentDate != " ")
            {
                SqlConnection con = new SqlConnection(ConString);
                SqlCommand cmd = new SqlCommand("INSERT paymentHistory(orderId, PaymentRs, PaymentReceivedby, PaymentDate, EnteredinBook, EntryMadeDate) values(@orderId, @PaymentRs, @PaymentReceivedby, @PaymentDate, @EnteredinBook, @EntryMadeDate)", con);
                cmd.Parameters.AddWithValue("@orderId",txtorderId.Text);
                cmd.Parameters.AddWithValue("@PaymentRs", txtpayment.Text);
                cmd.Parameters.AddWithValue("@PaymentReceivedby", PaymentReceiver);
                cmd.Parameters.AddWithValue("@PaymentDate", PaymentDate);
                cmd.Parameters.AddWithValue("@EntryMadeDate", EntryMadeDate);
                cmd.Parameters.AddWithValue("@EnteredinBook", EnteredInBook);

                using(con)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblentryreport.Text = "New entry made!!";
                    this.lblentryreport.ForeColor = Color.YellowGreen;

                    GridView1.DataBind();

                    clearFields();
                }
            }
            else
            {
                lblentryreport.Text = "Fields are empty!! Entry failed!";
                this.lblentryreport.ForeColor = Color.Red;
            }

        }
    }
}