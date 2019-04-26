using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                ContentPlaceHolder MasterCPH = (ContentPlaceHolder)PreviousPage.Master.FindControl("masteBodyCPH");
              
                TextBox tranFN = (TextBox)MasterCPH.FindControl("txtFname");
                TextBox tranLN = (TextBox)MasterCPH.FindControl("txtLname");
                txtPatientName.Text = tranFN.Text + "  "+tranLN.Text;
            }
        }
    }
}