using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Cosultation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
                //ContentPlaceHolder MasterCPH = (ContentPlaceHolder) PreviousPage.Master.FindControl("masteBodyCPH");
                //TextBox tranFN = (TextBox) MasterCPH.FindControl("txtFname");

                //TextBox tranWeight = (TextBox)MasterCPH.FindControl("txtWeight");
                //TextBox tranHeight = (TextBox)MasterCPH.FindControl("txtHeight");

                string Fname = Convert.ToString(Request.Form["ctl00$masteBodyCPH$txtFname"]);
            string weight = Convert.ToString(Request.Form["ctl00$masteBodyCPH$txtWeight"]);
            string height = Convert.ToString(Request.Form["ctl00$masteBodyCPH$txtHeight"]);

            lbPatientName.Text = Fname;
            txtWeight.Text = weight;
            txtHeight.Text = height;

        }
    }
}