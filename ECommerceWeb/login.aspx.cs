using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceWeb
{
    public partial class login : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Product.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string ten = this.Login1.UserName;
            string matkhau = this.Login1.Password;
            string sql = "select * from KhachHang where TenDangNhap='" + ten + "' and matkhau = '" + matkhau + "'";
            DataTable table = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(table);
            }
            catch (SqlException err)
            {
                Response.Write("<b>Error</b>" + err.Message + "<p/>");
            }
            if (table.Rows.Count != 0)
            {
                HttpCookie cookie = HttpContext.Current.Response.Cookies.AllKeys.Contains("TenDN")
        ? HttpContext.Current.Response.Cookies["TenDN"]
        : HttpContext.Current.Request.Cookies["TenDN"];
                cookie.Value = ten;
                Server.Transfer("home.aspx");
            }
            else this.Login1.FailureText = "Tên đăng nhập hay mật khẩu không đúng!";
        }

    }
}