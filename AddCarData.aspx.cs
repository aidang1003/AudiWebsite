using FinalProj.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProj
{
    public partial class AddCarData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string mySQL = "Insert into ag_AudiCarsTest (Year, Model, MSRP, Engine) Values('" + txtYear.Text + "','" + txtModel.Text + "', '" + txtMSRP.Text + "', '" + txtModel.Text + "')";
            DBConnection.ExecuteInsertQuery(mySQL);
            lblResult.Text = mySQL;
        }
    }
}