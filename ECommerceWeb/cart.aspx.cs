using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceWeb
{
    public partial class cart : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Product.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Page.IsPostBack)    
            //    return;
            if (Request.Cookies["TenDN"] == null)
            {
                lblWarning.Text = "You need to login to access cart";
                return;
            }
                
            lblWarning.Text = "";
            System.Diagnostics.Debug.WriteLine("Test cart");

            System.Diagnostics.Debug.WriteLine(Request.Cookies["TenDN"].Value);

            string ten = Request.Cookies["TenDN"].Value;
            string q = "Select * FROM DONHANG D INNER JOIN MATHANG M ON D.MAHANG = M.MAHANG" +
                " INNER JOIN LOAIHANG L ON M.MALOAI = L.MALOAI WHERE TENDANGNHAP = '" + ten +"'";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.Repeater1.DataSource = dt;
                this.Repeater1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}