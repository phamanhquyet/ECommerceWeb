using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceWeb
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( Request.Cookies["TenDN"] == null)
            {
                btnLogin.Text = "Login";
            }
            else
            {
                lblTenDN.Text = Request.Cookies["TenDN"].Value;
                btnLogin.Text = "Logout";
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (btnLogin.Text == "Login")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Cookies["TenDN"].Value = "";
                Request.Cookies["TenDN"].Value = "";
                Request.Cookies["TenDN"].Expires = DateTime.UtcNow.AddYears(-1); ;
                Response.Redirect("home.aspx");
            }
        }

    }
}