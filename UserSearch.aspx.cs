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
	public partial class WebForm5 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				BindProductRepeater();
			}
		}
		private void BindProductRepeater()
		{
			String PName = Convert.ToString(Request.QueryString["PName"]);
			string ax;
			ax = PName + "%";
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("exec test @val='" + ax + "'", con))
			{
				//cmd.Parameters.AddWithValue("Search",ax);
				cmd.CommandType = CommandType.Text;
				using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
				{
					DataTable dtBrands = new DataTable();
					sda.Fill(dtBrands);
					RptrSearch.DataSource = dtBrands;
					RptrSearch.DataBind();
				}
			}
		}
	}
}