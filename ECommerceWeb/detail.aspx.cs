﻿using System;
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
    public partial class detail : System.Web.UI.Page
    {
		String con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Product.mdf;Integrated Security=True";

		protected void Page_Load(object sender, EventArgs e)
        {

			if (Page.IsPostBack) return;
            try
            {
                string q1 = "Select * from LoaiHang";
                SqlDataAdapter da = new SqlDataAdapter(q1, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList2.DataSource = dt;
                this.DataList2.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            string q;
			if (Context.Items["ml"] == null)
				q = "select * from MatHang";
			else
			{
				string maloai = Context.Items["ml"].ToString();
				q = "select * from MatHang where MaLoai = '" + maloai + "'";
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

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			string mahang = ((LinkButton)sender).CommandArgument;
			Context.Items["ml"] = mahang;
			Server.Transfer("detailItems.aspx");

		}
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("detail.aspx");
        }


    }
}