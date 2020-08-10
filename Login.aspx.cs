using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Login Where Username='"+tbLUser.Text+"'and Password='"+tbLPass.Text+"'",con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["Username"] = reader["Username"].ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('เข้าสู่ระบบเรียบร้อย')</script>");
                Response.RedirectPermanent("Home.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('ไม่พบข้อมูล')</script>");
            }
            con.Close();
        }

        protected void BtRe_Click(object sender, EventArgs e)
        {
			SqlCommand cmcr = new SqlCommand("Insert into Login (Username,Password,Firstname,Lastname,Money)Values(@Username,@Password,@Firstname,@Lastname,0)",con);
			con.Open();
			cmcr.Parameters.AddWithValue("Username",tbRUser.Text);
			cmcr.Parameters.AddWithValue("Password",tbRPass.Text);
			cmcr.Parameters.AddWithValue("Firstname",tbRF.Text);
			cmcr.Parameters.AddWithValue("Lastname",tbRL.Text);
			int k = cmcr.ExecuteNonQuery();
			if (k != 0) {
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('บันทึกข้อมูลเรียบร้อย')</script>");
			}
			con.Close();
        }
    }
}