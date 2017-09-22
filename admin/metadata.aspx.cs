using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace himalayanorthodoxtea.admin
{
    public partial class metadata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.PagerSettings.Mode = PagerButtons.NextPrevious;
            //GridView1.PagerSettings.NextPageText = "Click for next page";
            //GridView1.PagerSettings.PreviousPageText = "Click for previous page";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Control control = e.Row.Cells[0].Controls[0];
                if (control is LinkButton)
                {
                    ((LinkButton)control).OnClientClick =
                        "return confirm('Are you sure you want to delete? This cannot be undone!!');";
                }
            }
        }
    }
}