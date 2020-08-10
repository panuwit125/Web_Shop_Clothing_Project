using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.LoginUserPage
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			if (Session["Username"] != null)
			{

			}
			else
			{
				Response.RedirectPermanent("Login.apsx");
			}
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			Response.RedirectPermanent("UserProduct.aspx");
		}
	}
}