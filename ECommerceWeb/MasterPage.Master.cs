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
            System.Diagnostics.Debug.WriteLine(Request.Cookies["TenDN"]);
            //string temp = Response.Cookies["TenDN"].Value;
            if (Request.Cookies["TenDN"] == null)
            {
                Response.Cookies["TenDN"].Value = null;
                btnLogin.Text = "Login";
            }
            else
            {
                btnLogin.Text = "Logout";
                //Response.Cookies["TenDN"].Value = temp;
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            //System.Diagnostics.Debug.WriteLine("Testing2");
            //System.Diagnostics.Debug.WriteLine(Response.Cookies["TenDN"].Value);
            //string temp = Response.Cookies["TenDN"].Value;
            if (Response.Cookies["TenDN"] == null)
            {
                //Response.Cookies["TenDN"].Value = temp; 
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Cookies["TenDN"].Value = null;
                Server.Transfer("home.aspx");
            }
        }

    }
}