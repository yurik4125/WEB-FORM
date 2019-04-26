using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CldrDOB_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = CldrDOB.SelectedDate.ToShortDateString();
            double age = 0;
            age = (DateTime.Today - CldrDOB.SelectedDate).TotalDays/365.25;
            lblAge.Text = age.ToString("0.##");


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
          
            Server.Transfer("Appointment.aspx");
            //Response.Redirect("Appointment.aspx");
        }

        protected void btnConsalt_Click(object sender, EventArgs e)
        {
           
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["Fname"] = txtFname.Text;
           
            Session.Add("Lname", txtLname.Text);
            Response.Redirect("Diagnostic.aspx");
           

        }
    }
}