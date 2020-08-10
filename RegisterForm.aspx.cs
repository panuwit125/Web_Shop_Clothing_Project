using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class RegisterForm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void TextBox2_TextChanged(object sender, EventArgs e)
		{
			if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox5.Text == "") || (TextBox6.Text == ""))
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('กรุณาใส่ข้อมูลให้ครบ')</script>");
			}
			else {
				if (TextBox2.Text == TextBox7.Text)
				{
					SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
					SqlCommand cmd = new SqlCommand("Select Username From Login where Username=@Username",con);
					cmd.Parameters.AddWithValue("Username", TextBox1.Text);
					con.Open();
					SqlDataReader rd = cmd.ExecuteReader();
					if (rd.HasRows || TextBox1.Text == "")
					{
						Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ชื่อสมาชิกไม่สามารถใช้ได้')</script>");
					}
					else
					{
						con.Close();
						con.Open();
						SqlCommand cmcr = new SqlCommand("Insert into Login (Username,Password,Firstname,Lastname,Money)Values(@Username,@Password,@Firstname,@Lastname,0)", con);
						cmcr.Parameters.AddWithValue("Username", TextBox1.Text);
						cmcr.Parameters.AddWithValue("Password", TextBox2.Text);
						cmcr.Parameters.AddWithValue("Firstname", TextBox5.Text);
						cmcr.Parameters.AddWithValue("Lastname", TextBox6.Text);
						int k = cmcr.ExecuteNonQuery();
						if (k != 0)
						{
							Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('บันทึกข้อมูลเรียบร้อย')</script>");
						}
						con.Close();
					}
				}
				else {
					Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('รหัสผ่านไม่เหมือนกัน')</script>");
				}
			}		
		}
	}
}