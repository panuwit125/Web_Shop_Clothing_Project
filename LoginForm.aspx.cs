using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class LoginForm : System.Web.UI.Page
	{
		
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("Select * From Login Where Username='" + Usertxt.Text + "'and Password='" + Passtxt.Text + "'", con);
			con.Open();
			SqlDataReader reader = cmd.ExecuteReader();
			if (reader.Read())
			{
				Session["Username"] = reader["Username"].ToString();
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('เข้าสู่ระบบเรียบร้อย')</script>");
				Response.RedirectPermanent("UserHomePage.aspx");
			}
			else
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ไม่พบข้อมูล')</script>");
			}
			con.Close();
		}
	}
}