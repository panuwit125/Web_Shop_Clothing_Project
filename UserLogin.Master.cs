using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class Site2 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			if (Session["Username"] != null)
			{
				TxtUsern.Text = Session["Username"].ToString();
				SqlCommand se = new SqlCommand("Select Firstname,Lastname,Money From Login Where Username='" + Session["Username"] + "'", con);
				con.Open();
				SqlDataReader reader = se.ExecuteReader();
				if (reader.Read())
				{
					//LabelFN.Text = reader["Firstname"].ToString();
					//LabelLN.Text = reader["Lastname"].ToString();
					TxtMoney.Text = reader["Money"].ToString();
				}
				con.Close();
			}
			else
			{
				Response.RedirectPermanent("Login.apsx");
			}
		}
		protected void BtnSearch_Click(object sender, EventArgs e)
		{
			Response.RedirectPermanent("UserSearch.aspx?PName=" + TextBox1.Text + "");
		}
		protected void btnMar_Click(object sender, EventArgs e)
		{
			Response.RedirectPermanent("SaveProduct.aspx");
		}
	}
}