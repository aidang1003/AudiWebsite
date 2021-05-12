using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FinalProj
{
    public partial class ViewBids : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Context.User.Identity.GetUserName();
            Label2.Text = GridView2.Rows[0].Cells[0].Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataIDLabel.Text = GridView1.SelectedRow.Cells[2].Text;
            DetailsView1.Visible = true;
        }
    }
}