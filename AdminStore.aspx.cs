using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class AdminStore : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			if (Session["AdminUser"] != null)
			{
				SqlCommand se = new SqlCommand("Select * From Admin Where AdminUser='" + Session["AdminUser"] + "'", con);
				con.Open();
				SqlDataReader reader = se.ExecuteReader();
				if (reader.Read())
				{
					BindProductMar();
				}
				con.Close();
			}
			else
			{
				Response.RedirectPermanent("AdminLogin.apsx");
			}
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			//SqlCommand cmd = new SqlCommand("Insert into Product" + "(PName)values(@name)", con);
			SqlCommand cmd = new SqlCommand("procInsertProducts", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@PName", TextBox1.Text);
			cmd.Parameters.AddWithValue("@PDescription", TextBox2.Text);
			cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
			cmd.Parameters.AddWithValue("@Amount", TextBox4.Text);
			cmd.Parameters.AddWithValue("@BID", DropDownList1.SelectedItem.Value);
			con.Open();
			Int64 PId = Convert.ToInt64(cmd.ExecuteScalar());
			//cmd.ExecuteNonQuery();
			if (FileUpload1.HasFile)
			{
				string SavePath = Server.MapPath("~/image/imgProduct/") + PId;
				if (!Directory.Exists(SavePath))
				{
					Directory.CreateDirectory(SavePath);
				}
				string Extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
				FileUpload1.SaveAs(SavePath + "\\" + TextBox1.Text.ToString().Trim() + "01" + Extention);

				SqlCommand cmd3 = new SqlCommand("insert into Imgtable values('" + PId + "','" + TextBox1.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
				cmd3.ExecuteNonQuery();
			}
			con.Close();
		}
		private void BindProductMar()
		{
			SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
			using (SqlCommand cmd = new SqlCommand("Select * From Product", con))
			{
				cmd.CommandType = CommandType.Text;
				using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
				{
					DataTable dtBrands = new DataTable();
					sda.Fill(dtBrands);
					rptrPro.DataSource = dtBrands;
					rptrPro.DataBind();
				}
			}
		}
	}
}