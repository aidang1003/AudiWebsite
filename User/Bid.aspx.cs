using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.Models;

namespace FinalProj
{
    public partial class Bid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            BidList BList = BidList.GetBids();

            double msrp = Convert.ToDouble(MSRPLabel.Text);
            double dBid = Convert.ToDouble(txtBid.Text);
            int zipCode = Convert.ToInt32(txtZipCode.Text);

            BList.AddBid(txtDate.Text, txtCarBox.Text, msrp, dBid, txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtPhoneNumber.Text, txtAddress.Text, txtCity.Text, txtState.Text, zipCode);
        }
    }
}