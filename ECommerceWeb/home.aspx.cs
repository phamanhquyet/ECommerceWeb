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
    public partial class home : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Product.mdf;Integrated Security=True";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from LOAIHANG";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from LOAIHANG where MaLoai = '" + maloai + "'";
            }
            try
            {

                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}