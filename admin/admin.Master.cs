using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace himalayanorthodoxtea.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = "You aren't logged in!";
            
            //check if a user is logged in
            //if (Session["AdminLogin"] == null)
            //{
            //    //himalayanorthodoxtea.smtadminlogin.lblLoginCheck.Text = "YOU MUST LOGIN!!";
            //    //this.lblLoginCheck.ForeColor = Color.Red;

            //    //Response.Redirect("Login.aspx");

            //    System.Threading.Thread.Sleep(5000);
            //    Response.Redirect("../smtadminlogin.aspx");

            //}
            //else if (Session["AdminLogin"] != null)
            //{
            //    //lblLoginCheck.Visible = false;
            //    lblLoginStatus.Text = "Welcome! " + Session["AdminLogin"].ToString();
            //    lblLoginStatus.Visible = true;

            //    LinkButton1.Text = " logout";

            //}
            
            if(Session["AdminLogin"] != null)
            {
                lblLoginStatus.Text = "Welcome! " + Session["AdminLogin"].ToString();
                lblLoginStatus.Visible = true;

                LinkButton1.Text = " logout";
            }

            if (Session["AdminLogin"] == null)
            {
                System.Threading.Thread.Sleep(5000);
                //Response.Redirect("../smtadminlogin.aspx");
                Response.Redirect("~/smtadminlogin.aspx?msg1="+Server.UrlEncode(msg));

                
            }

            //if (Session["AdminLogin"] != null)
            //{
            //    lblLoginStatus.Text = "Welcome! " + Session["AdminLogin"].ToString();
            //    lblLoginStatus.Visible = true;

            //    LinkButton1.Text = " logout";
            //}

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string msglogout = "You are logged out!";

            //admin logs out
            Session.Clear();
            Response.Redirect("~/smtadminlogin.aspx?msg1="+Server.UrlEncode(msglogout));
            

        }

    }
}