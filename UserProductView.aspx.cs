using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class UserProductView : System.Web.UI.Page
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
			Int64 PId = Convert.ToInt64(Request.QueryString["PId"]);
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("select * from Imgtable where PId=" + PId + "", con))
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
			Int64 PId = Convert.ToInt64(Request.QueryString["PId"]);
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
		protected void Button_Click1(object sender, EventArgs e)
		{
			Int64 PId = Convert.ToInt64(Request.QueryString["PId"]);
			//String Username = Convert.ToString(Session["Username"]); 
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("insert into Shop values (@Username," + PId + ")", con);
			con.Open();
			cmd.Parameters.AddWithValue("Username",Session["Username"]);
			int k = cmd.ExecuteNonQuery();
			if (k != 0)
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('เพิ่มในตระกร้าเรียบร้อยแล้ว')</script>");
				Response.RedirectPermanent("Saveproduct.aspx");
			}
		}
		protected void Button_Click2(object sender, EventArgs e)
		{
			Int64 PId = Convert.ToInt64(Request.QueryString["PId"]);
			//String Username = Convert.ToString(Session["Username"]); 
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("insert into Shop values (@Username," + PId + ")", con);
			con.Open();
			cmd.Parameters.AddWithValue("Username", Session["Username"]);
			int k = cmd.ExecuteNonQuery();
			if (k != 0)
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('เพิ่มในตระกร้าเรียบร้อยแล้ว')</script>");
				Response.RedirectPermanent("UserProduct.aspx");
			}
		}
	}
}