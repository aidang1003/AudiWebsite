using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace FinalProj
{
    public partial class CarRanker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserLabel.Text = Context.User.Identity.GetUserName();
        }

        protected void YearGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            CarDataLabel.Text = YearGridView.SelectedRow.Cells[1].Text;

            txtModel.Text = YearGridView.SelectedRow.Cells[2].Text;
            txtYear.Text = YearGridView.SelectedRow.Cells[3].Text;
            txtMSRP.Text = YearGridView.SelectedRow.Cells[4].Text;
            txtDate.Text = Convert.ToString(DateTime.Now);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserOutput = GridView1.Rows[0].Cells[0].Text;
            string bidLabel = GridView2.Rows[0].Cells[0].Text;
            int bidID = Convert.ToInt32(bidLabel) + 1;


            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            String query = "INSERT INTO dbo.ag_BidDetail (BidID, CarDataID, UserID, Date, BidAmt, Status) VALUES (@BidID, @CarDataID, @UserID, @Date, @BidAmt, @Status)";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@BidID", bidID);
            command.Parameters.AddWithValue("@CarDataID", Convert.ToInt32(CarDataLabel.Text));
            command.Parameters.AddWithValue("@UserID", Convert.ToInt32(UserOutput));
            command.Parameters.AddWithValue("@Date", txtDate.Text);
            command.Parameters.AddWithValue("@BidAmt", txtBid.Text);
            command.Parameters.AddWithValue("@Status", "pending");

            connection.Open();
            try 
            { 
                command.ExecuteNonQuery();
                ResultLabel.Text = "Offer successfully submitted!";
                txtModel.Text = "";
                txtYear.Text = "";
                txtMSRP.Text = "";
                txtDate.Text = "";
                txtBid.Text = "";
            }
            catch
            {
                ResultLabel.Text = "Error inputting to the database";
            }
            connection.Close();
            GridView2.DataBind();
        }
    }
}