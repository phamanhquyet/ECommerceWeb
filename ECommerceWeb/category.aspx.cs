using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceWeb
{
    public partial class category : System.Web.UI.Page
    {
		String conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\viettelstore\Source\Repos\ECommerceWeb\ECommerceWeb\App_Data\Product.mdf;Integrated Security=True";
		protected void Page_Load(object sender, EventArgs e)
        {

			if (Page.IsPostBack)
				return;
			try
			{
				string q1 = "Select * from LoaiHang";
				SqlDataAdapter da = new SqlDataAdapter(q1, conn);
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
			string mahang = ((LinkButton)sender).CommandArgument;
			Context.Items["ml"] = mahang;
			Server.Transfer("detail.aspx");
		}
    }
}