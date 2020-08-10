using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class Site1 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void BtnSearch_Click(object sender, EventArgs e)
		{
			Response.RedirectPermanent("Search.aspx?PName="+TextBox1.Text+"");
		}
	}
}