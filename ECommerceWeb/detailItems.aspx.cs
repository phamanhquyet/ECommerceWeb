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
	public partial class detailItems : System.Web.UI.Page
	{
		String con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Product.mdf;Integrated Security=True";

		protected void Page_Load(object sender, EventArgs e)
		{

			if (Page.IsPostBack) return;
			string q;
			if (Context.Items["ml"] == null)
				q = "select * from MatHang";
			else
			{
				string mahang = Context.Items["ml"].ToString();
				q = "select * from MatHang where MaHang = '" + mahang + "'";
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

        protected void BtnAddToCart_Click(object sender, EventArgs e)
        {
			string script;
            if (Request.Cookies["TenDN"] == null)
            {

                script = "alert(\"You need to login\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                return;
            }
			LinkButton mua = (LinkButton)sender;
			string mahang = mua.CommandArgument.ToString();
			RepeaterItem item = (RepeaterItem)mua.Parent;
			string soluong = ((TextBox)item.FindControl("txtQuantity")).Text ;
            System.Diagnostics.Debug.WriteLine("Test add cart");
            System.Diagnostics.Debug.WriteLine(Request.Cookies["TenDN"].Value);
            string ten = Request.Cookies["TenDN"].Value;
			SqlConnection sqlConnection = new SqlConnection(con);
			sqlConnection.Open();
			string q = "select * from donhang where TENDANGNHAP = '" + ten + "' and MAHANG = '" + mahang + "'";
			SqlCommand command = new SqlCommand(q, sqlConnection);
			SqlDataReader reader = command.ExecuteReader();
			if (reader.Read())
			{
				reader.Close();
				command = new SqlCommand("UPDATE  DONHANG SET SOLUONG = SOLUONG + " + soluong 
					+ " where TENDANGNHAP = '" + ten + "' and Mahang = '" + mahang + "'", sqlConnection);
			} else
			{
				reader.Close();
				command = new SqlCommand("INSERT INTO DONHANG (TENDANGNHAP, MAHANG, SOLUONG) VALUES('" + ten + "', '"
					+ mahang + "', " + soluong + ")", sqlConnection);
			}
			command.ExecuteNonQuery();
			sqlConnection.Close();


            script = "alert(\"Add to cart successful\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
    }
}