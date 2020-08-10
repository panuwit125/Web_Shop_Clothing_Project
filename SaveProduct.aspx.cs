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
	public partial class WebForm3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			if (Session["Username"] != null)
			{
				nameuser.Text = Session["Username"].ToString();
				if (!IsPostBack)
				{
					BindProductMar();
					BindProductsave();
					
				}
			}
			else
			{
				Response.RedirectPermanent("Login.apsx");
			}
			
		}

		private void BindProductsave()
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			SqlCommand cmrm = new SqlCommand("SELECT SUM(Product.Price)From Product INNER JOIN Shop On Product.PId = Shop.PId Where Shop.Username = @Username", con);
			con.Open();
			cmrm.Parameters.AddWithValue("Username", Session["Username"]);
			cmrm.CommandType = CommandType.Text;
			//cmrm.CommandType = CommandType.StoredProcedure;
			SqlDataReader reader = cmrm.ExecuteReader();
			if (reader.Read())
			{
				Label1.Text = reader[0].ToString();
			}
			reader.Close();
			con.Close();
		}

		private void BindProductMar()
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("EXEC savepro @sac="+Session["Username"]+"", con))
			{
				cmd.CommandType = CommandType.Text;
				using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
				{
					DataTable dtBrands = new DataTable();
					sda.Fill(dtBrands);
					rptrmar.DataSource = dtBrands;
					rptrmar.DataBind();
				}	
			}
		}
		protected void deleClick(object sender, EventArgs e)
		{
			RepeaterItem item = (sender as Button).Parent as RepeaterItem;
			int ID = int.Parse((item.FindControl("Idcheck") as Label).Text);
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("Customers_CRUD"))
			{
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@Action", "DELETE");
				cmd.Parameters.AddWithValue("@ID", ID);
				cmd.Connection = con;
				con.Open();
				cmd.ExecuteNonQuery();
				con.Close();
				Response.Redirect(Request.Url.AbsoluteUri);
			}
		}
		protected void Buysell_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			SqlCommand cmrm = new SqlCommand("SELECT SUM(Product.Price)From Product INNER JOIN Shop On Product.PId = Shop.PId Where Shop.Username = '" + Session["Username"] + "'", con);
			SqlCommand money = new SqlCommand("Select Money from Login Where Username='" + Session["Username"] + "'", con);
			con.Open();
			//cmrm.Parameters.AddWithValue("Username", Session["Username"]);
			//money.Parameters.AddWithValue("Username", Session["Username"]);
			int sum1 = (int)money.ExecuteScalar();
			int sum = (int)cmrm.ExecuteScalar();
			if (sum1 >= sum)
			{
				SqlCommand money1 = new SqlCommand("Update Login set Money=Money-" + sum + "Where Username=@Username", con);
				money1.Parameters.AddWithValue("Username", Session["Username"]);
				int k = money1.ExecuteNonQuery();
				if (k != 0)
				{
					SqlCommand savehis = new SqlCommand("Insert into OrHistory(Username,PId) Select Username,PId From Shop Where Shop.Username = '" + Session["Username"] + "'",con);
					int b = savehis.ExecuteNonQuery();
					if (b != 0)
					{
						SqlCommand del1 = new SqlCommand("Delete From Shop Where Shop.Username = '" + Session["Username"] + "'", con);
						int q = del1.ExecuteNonQuery();
						if (q != 0)
						{
							Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ซื้อสินค้าเรียบร้อย')</script>");
						}
					}
				}
			}
			else
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ตังของคุณไม่เพียงพอ')</script>");
			}
			con.Close();
		}
	}
}