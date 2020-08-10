using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class ProductView : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				BindProductimage();
				BindProductDetails();
			}
		}
		private void BindProductimage()
		{
			Int64 PId = Convert.ToInt64( Request.QueryString["PId"]);
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("select * from Imgtable where PId=" + PId +"", con))
			{
				cmd.CommandType = CommandType.Text;
				using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
				{
					DataTable dtBrands = new DataTable();
					sda.Fill(dtBrands);
					RptrProductView.DataSource = dtBrands;
					RptrProductView.DataBind();
				}
			}
		}
		private void BindProductDetails()
		{
			Int64 PId = Convert.ToInt64(Request.QueryString["PID"]);
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("select * from Product where PId=" + PId + "", con))
			{
				cmd.CommandType = CommandType.Text;
				using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
				{
					DataTable dtBrands = new DataTable();
					sda.Fill(dtBrands);
					RptrProduct.DataSource = dtBrands;
					RptrProduct.DataBind();
				}

			}
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ต้องเข้าสู่ระบบก่อน')</script>");
		}
		protected void Button2_Click(object sender, EventArgs e)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ต้องเข้าสู่ระบบก่อน')</script>");
		}
	}
}