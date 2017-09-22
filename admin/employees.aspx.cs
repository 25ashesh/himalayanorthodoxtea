using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace himalayanorthodoxtea.admin
{
    public partial class employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {


            if (((TextBox)GridView1.FooterRow.FindControl("InsertName")).Text != "" && 
                ((TextBox)GridView1.FooterRow.FindControl("InsertLastName")).Text != "" &&
                ((DropDownList)GridView1.FooterRow.FindControl("ddlInsertDepartment")).SelectedValue != "" &&
                ((TextBox)GridView1.FooterRow.FindControl("InsertMobile")).Text != "" &&
                ((TextBox)GridView1.FooterRow.FindControl("InsertPassword")).Text != "")
                {   
                    SqlDataSource1.InsertParameters["Name"].DefaultValue = 
                        ((TextBox)GridView1.FooterRow.FindControl("InsertName")).Text;

                    SqlDataSource1.InsertParameters["LastName"].DefaultValue =
                           ((TextBox)GridView1.FooterRow.FindControl("InsertLastName")).Text;

                    SqlDataSource1.InsertParameters["Department"].DefaultValue = 
                           ((DropDownList)GridView1.FooterRow.FindControl("ddlInsertDepartment")).SelectedValue;

                    SqlDataSource1.InsertParameters["MobileNo"].DefaultValue = 
                        ((TextBox)GridView1.FooterRow.FindControl("InsertMobile")).Text;

                    SqlDataSource1.InsertParameters["UserName"].DefaultValue = 
                        ((TextBox)GridView1.FooterRow.FindControl("InsertUserName")).Text;

                    SqlDataSource1.InsertParameters["Password"].DefaultValue =
                        ((TextBox)GridView1.FooterRow.FindControl("InsertPassword")).Text;

                    SqlDataSource1.Insert();

                    lblSubmitReport8.Text = "Entry success!! New employee added!!";
                    this.lblSubmitReport8.ForeColor = Color.Green;
            }
            else
            {
                lblSubmitReport8.Text = "Entry failed!! Fields are EMPTY!!";
                this.lblSubmitReport8.ForeColor = Color.Red;
            }

        }
    }
}