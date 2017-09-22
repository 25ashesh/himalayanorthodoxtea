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
    public partial class smalltea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                string constring2 = ConfigurationManager.ConnectionStrings["smtConnectionString"].ConnectionString;
                SqlConnection con2 = new SqlConnection(constring2);

                SqlCommand cmd3 = new SqlCommand("update hits set Hits = Hits+1", con2);

                using (con2)
                {
                    con2.Open();
                    cmd3.ExecuteNonQuery();
                }
            }

        }



        void clearFields()
        {
            //foreach (Control ct in Controls)
            //{
            //    if (ct is TextBox)
            //    {
            //        ct.Text = " ";
            //    }
            //}

            //Controls.Clear();

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


        //void calculatePrice()
        //{
        //    int premiumPrice = 5000, organicPrice = 3500, gradeAPrice = 1000, gradeBPrice = 750, gradeCPrice = 500;
        //    int spice1gm = 5;
        //    double totalPrice = 0;

        //    bool item1 = PremiumCheckBox.Checked;
        //    bool item2 = OrganicCheckBox.Checked;
        //    bool item3 = GradeACheckBox.Checked;
        //    bool item4 = GradeBCheckBox.Checked;
        //    bool item5 = GradeCCheckBox.Checked;
        //    bool item6 = TeaSpicesCheckBox.Checked;

        //    int quantity1 = int.Parse(PremiumDropDownList.SelectedValue.Substring(0,1));

        //    int quantity2 = int.Parse(OrganicDropDownList.SelectedValue.Substring(0, 1));

        //    int quantity3 = int.Parse(GradeADropDownList.SelectedValue.Substring(0, 1));

        //    int quantity4 = int.Parse(GradeBDropDownList.SelectedValue.Substring(0, 1));

        //    int quantity5 = int.Parse(GradeCDropDownList.SelectedValue.Substring(0, 1));

        //    int quantity6 = int.Parse(TeaSpicesDropDownList.SelectedValue.Substring(0, 1));

        //    if (item1)
        //    {
        //        totalPrice += premiumPrice * quantity1;
        //    }
        //    if (item2)
        //    {
        //        totalPrice += organicPrice * quantity2;
        //    }
        //    if (item3)
        //    {
        //        totalPrice += gradeAPrice * quantity3;
        //    }
        //    if (item4)
        //    {
        //        totalPrice += gradeBPrice * quantity4;
        //    }
        //    if (item5)
        //    {
        //        totalPrice += gradeCPrice * quantity5;
        //    }
        //    if (item6)
        //    {
        //        totalPrice += spice1gm * quantity6;
        //    }

        //    totalPrice *= 0.15;

        //    lblTotalPrice.Text = totalPrice.ToString();
        //}

        ////protected void btn_calculatedPrice(object sender, EventArgs e)
        ////{
        ////    calculatePrice();
        ////}

        //protected void resetbutton_click(object sender, EventArgs e)
        //{
        //    clearFields();
        //}


    }
}