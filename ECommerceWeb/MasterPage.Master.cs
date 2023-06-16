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
            System.Diagnostics.Debug.WriteLine("Testing1");
            System.Diagnostics.Debug.WriteLine(Request.Cookies["TenDN"].Value);
            //string temp = Response.Cookies["TenDN"].Value;
            if (Request.Cookies["TenDN"].Value == "" || Request.Cookies["TenDN"] == null)
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

            System.Diagnostics.Debug.WriteLine("Testing2");
            System.Diagnostics.Debug.WriteLine(Request.Cookies["TenDN"].Value);
            //string temp = Response.Cookies["TenDN"].Value;
            if (btnLogin.Text == "Login")
            {
                //Response.Cookies["TenDN"].Value = temp; 
                Response.Redirect("login.aspx");
            }
            else
            {
                lblTenDN.Text = Request.Cookies["TenDN"].Value;
                Response.Cookies["TenDN"].Value = "";
                Request.Cookies["TenDN"].Value = "";
                Request.Cookies["TenDN"].Expires = DateTime.UtcNow.AddYears(-1); ;
                Response.Redirect("home.aspx");
            }
        }

    }
}