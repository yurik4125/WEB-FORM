﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Olga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string patientFName = Convert.ToString(Session["Fname"]);
            string patientLName = Convert.ToString(Session["Lname"]);
            lblPatientName.Text = patientFName+ "  _  "+patientLName;
      
        }
    }
}