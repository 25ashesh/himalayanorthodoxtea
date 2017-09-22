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


namespace himalayanorthodoxtea
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        double total_price = 0, final_price = 0, dollar_price = 0;
        double vat_rate = 1.13;
        int PPrice = 5000, OPrice = 3500, GAPrice = 1000, GBPrice = 750, GCPrice = 500;
        int spice1gm = 5;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearFields()
        {
            FNameTextBox1.Text = " ";
            LNameTextBox2.Text = " ";
            txtemail.Text = " ";
            txtaddress.Text = " ";
            txtmobileno.Text = " ";
            OrderPurposeDDL.SelectedValue = "Select";
            OrderDescription.Text = " ";
            textdatepicker.Text = " ";

            PremiumCheckBox.Checked = false;
            OrganicCheckBox.Checked = false;
            GradeACheckBox.Checked = false;
            GradeBCheckBox.Checked = false;
            GradeCCheckBox.Checked = false;
            TeaSpicesCheckBox.Checked = false;

            PremiumDropDownList.SelectedValue = "-";
            OrganicDropDownList.SelectedValue = "-";
            GradeADropDownList.SelectedValue = "-";
            GradeBDropDownList.SelectedValue = "-";
            GradeCDropDownList.SelectedValue = "-";
            TeaSpicesDropDownList.SelectedValue = "-";



        }

        protected void orderbutton_click(object sender, EventArgs e)
        {

            //checkFields();
            //Response.Redirect("gallery.aspx");

            string ConString = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;
            //string ConString = @"Data Source = (local); Initial Catalog = smt; Integrated Security = True";

            string OrdererFirstName = FNameTextBox1.Text;

            string OrdererLastName = LNameTextBox2.Text;

            string OrdererEmail = txtemail.Text;

            string OrdererAddress = txtaddress.Text;

            string OrdererMobileNo = txtmobileno.Text.ToString();

            string OrderPurpose = OrderPurposeDDL.SelectedValue.ToString();


            string OrderPlacedDate = DateTime.UtcNow.ToString("dd/MM/yyyy");

            //string OrderPlacedDate = DateTime.UtcNow.ToString("yyyy-MM-dd");

            string ShipmentDate = textdatepicker.Text.ToString();
            //string ShipmentDate = String.Format("{0}",Request.Form["alternate"]);
            //string ShipmentDate = copyDate.Text.ToString();
            //string ShipmentDate = Request.Form["alternate"];
            //string ShipmentDate = ((TextBox)FindControl("alternate")).Text;

            string orderDescription = OrderDescription.Text;

            bool premiumstatus = PremiumCheckBox.Checked;
            string premiumquantity = PremiumDropDownList.SelectedValue.ToString();

            bool organicstatus = OrganicCheckBox.Checked;
            string organicquantity = OrganicDropDownList.SelectedValue.ToString();

            bool gradeaAstatus = GradeACheckBox.Checked;
            string gradeAquantity = GradeADropDownList.SelectedValue.ToString();

            bool gradeaBstatus = GradeBCheckBox.Checked;
            string gradeBquantity = GradeBDropDownList.SelectedValue.ToString();

            bool gradeaCstatus = GradeCCheckBox.Checked;
            string gradeCquantity = GradeCDropDownList.SelectedValue.ToString();

            bool teaspicesStatus = TeaSpicesCheckBox.Checked;
            string teaspicesQuantity = TeaSpicesDropDownList.SelectedValue.ToString();



            //if (!(string.IsNullOrEmpty(OrdererFirstName) && string.IsNullOrEmpty(OrdererLastName) && string.IsNullOrEmpty(OrdererEmail)
            //    && string.IsNullOrEmpty(OrdererAddress) && string.IsNullOrEmpty(OrdererMobileNo) && string.IsNullOrEmpty(OrderPurpose)
            //    && string.IsNullOrEmpty(orderDescription) && string.IsNullOrEmpty(ShipmentDate)))

            if ((OrdererFirstName != " " && OrdererLastName != " " && OrdererEmail != " " && OrdererAddress != " " &&
                                OrdererMobileNo != " " && OrderPurpose != "Select" && orderDescription != " " && ShipmentDate != " "))
            {

                SqlConnection con = new SqlConnection(ConString);
                SqlCommand cmd = new SqlCommand("smtSubmitOrder", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //SqlCommand cmd = new SqlCommand("INSERT orderForm (OrdererName, OrdererLastName, OrdererMobileNo, OrdererAddress, OrderPurpose, PremiumTeaQuantity, GreenTeaQuantity, GradeATeaQuantity, GradeBTeaQuantity, GradeCTeaQuantity, TeaSpicesQuantity, ShipmentDate, OrderDescription, PremiumTeaOrder, GreenTeaOrder, GradeAOrder, GradeBOrder, GradeCOrder, TeaSpiceOrder, OrderPlacedDate, OrdererEmail) Values(@OrdererName, @OrdererLastName, @OrdererMobileNo, @OrdererAddress, @OrderPurpose, @PremiumTeaQuantity, @GreenTeaQuantity, @GradeATeaQuantity, @GradeBTeaQuantity, @GradeCTeaQuantity, @TeaSpicesQuantity, @ShipmentDate, @OrderDescription, @PremiumTeaOrder, @GreenTeaOrder, @GradeAOrder, @GradeBOrder, @GradeCOrder, @TeaSpiceOrder, @OrderPlacedDate, @OrdererEmail)" + "SELECT @Identity = SCOPE_IDENTITY()", con);

                cmd.Parameters.AddWithValue("@OrdererName", OrdererFirstName);
                cmd.Parameters.AddWithValue("@OrdererLastName", OrdererLastName);
                cmd.Parameters.AddWithValue("@OrdererMobileNo", OrdererMobileNo);
                cmd.Parameters.AddWithValue("@OrdererAddress", OrdererAddress);
                cmd.Parameters.AddWithValue("@OrderPurpose", OrderPurpose);

                cmd.Parameters.AddWithValue("@PremiumTeaQuantity", premiumquantity);
                cmd.Parameters.AddWithValue("@GreenTeaQuantity", organicquantity);
                cmd.Parameters.AddWithValue("@GradeATeaQuantity", gradeAquantity);
                cmd.Parameters.AddWithValue("@GradeBTeaQuantity", gradeBquantity);
                cmd.Parameters.AddWithValue("@GradeCTeaQuantity", gradeCquantity);

                cmd.Parameters.AddWithValue("@TeaSpicesQuantity", teaspicesQuantity);
                cmd.Parameters.AddWithValue("@ShipMentDate", ShipmentDate);
                cmd.Parameters.AddWithValue("@OrderDescription", orderDescription);
                cmd.Parameters.AddWithValue("@PremiumTeaOrder", premiumstatus);
                cmd.Parameters.AddWithValue("@GreenTeaOrder", organicstatus);
                cmd.Parameters.AddWithValue("@GradeAOrder", gradeaAstatus);
                cmd.Parameters.AddWithValue("@GradeBOrder", gradeaBstatus);
                cmd.Parameters.AddWithValue("@GradeCOrder", gradeaCstatus);
                cmd.Parameters.AddWithValue("@TeaSpiceOrder", teaspicesStatus);
                cmd.Parameters.AddWithValue("@OrderPlacedDate", OrderPlacedDate);
                cmd.Parameters.AddWithValue("@OrdererEmail", OrdererEmail);
                cmd.Parameters.AddWithValue("@Dispatched", 0);


                using (con)
                {
                    con.Open();

                    cmd.ExecuteNonQuery();

                    lblSubmitReport.Text = "<br/><br/>Thanks! Your order has been placed!";
                    this.lblSubmitReport.ForeColor = Color.YellowGreen;

                    clearFields();
                }


            }
            else
            {
                lblSubmitReport.Text = "<br/>Your Order couldn't be processed.<br/>Fields are empty";
                this.lblSubmitReport.ForeColor = Color.Red;
            }
        }

        protected void PriceCalculate(object sender, EventArgs e)
        {
            if (PremiumCheckBox.Checked)
            {
                int a1 = int.Parse(PremiumDropDownList.SelectedValue.Substring(0, 1));
                total_price += PPrice * a1;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString();
            }
            if (OrganicCheckBox.Checked)
            {
                int a2 = int.Parse(OrganicDropDownList.SelectedValue.Substring(0, 1));
                total_price += OPrice * a2;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString();
            }
            if (GradeACheckBox.Checked)
            {
                int a3 = int.Parse(GradeADropDownList.SelectedValue.Substring(0, 1));
                total_price += GAPrice * a3;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString();
            }
            if (GradeBCheckBox.Checked)
            {
                int a4 = int.Parse(GradeBDropDownList.SelectedValue.Substring(0, 1));
                total_price += GBPrice * a4;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString(); 
            }
            if (GradeCCheckBox.Checked)
            {
                int a5 = int.Parse(GradeCDropDownList.SelectedValue.Substring(0, 1));
                total_price += GCPrice * a5;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString();
            }
            if (TeaSpicesCheckBox.Checked)
            {
                int a6 = int.Parse(TeaSpicesDropDownList.SelectedValue.Substring(0, 3));
                total_price += spice1gm * a6;
                //CVT();
                ////total_price *= vat_rate;
                //lblTotalPrice.Text = total_price.ToString();
            }

            final_price = total_price * vat_rate;
            dollar_price = final_price * 0.01;
            lblTotalPrice.Text = "Total : Rs. " + final_price.ToString() + "<br/>" + "( $. " + dollar_price + ")";

        }
    }
}