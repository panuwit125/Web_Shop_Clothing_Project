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
    public partial class Home : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-B1NVQHA5\\SQLEXPRESS;Initial Catalog=MyASPTutorialDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] != null)
            {
                LabelUser.Text = Session["Username"].ToString();
                SqlCommand se = new SqlCommand("Select Firstname,Lastname,Money From Login Where Username='" + Session["Username"] + "'", con);
                con.Open();
                SqlDataReader reader = se.ExecuteReader();
                if (reader.Read())
                {
                    LabelFN.Text = reader["Firstname"].ToString();
					LabelLN.Text = reader["Lastname"].ToString();
					LabelMoney.Text = reader["Money"].ToString();
                }
                con.Close();
            }
            else
            {
                //Response.RedirectPermanent("Login.apsx");
            }

        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand summn = new SqlCommand("Update Login Set Money=Money+"+ this.TextBoxMoney.Text + "Where Username='" + Session["Username"] + "'",con);
			con.Open();
			SqlDataReader reader1 = summn.ExecuteReader();
			if (reader1.Read())
			{
				Response.RedirectPermanent("Home.aspx");
			}
			con.Close();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			SqlCommand summn = new SqlCommand("Update Login Set Money=Money-" + this.TextBoxMoney.Text + "Where Username='" + Session["Username"] + "'", con);
			con.Open();
			SqlDataReader reader1 = summn.ExecuteReader();
			if (reader1.Read())
			{
				Response.RedirectPermanent("Home.aspx");
			}
			con.Close();
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			con.Open();
			SqlCommand check = new SqlCommand("Select Money From Login Where Username='" + Session["Username"] + "'", con);
			int count = (int)check.ExecuteScalar();
			if (count > 0)
			{
				SqlCommand summn1 = new SqlCommand("Update Login Set Money=Money+" + this.TextBoxMoney.Text + "Where Username=@Username Update Login Set Money=Money-" + this.TextBoxMoney.Text + "Where Username='" + Session["Username"] + "'", con);
				summn1.Parameters.AddWithValue("Money", TextBoxMoney.Text);
				summn1.Parameters.AddWithValue("Username", TextBoxUser.Text);
				int k = summn1.ExecuteNonQuery();
				if (k != 0)
				{
					Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('โอนเงินเรียบร้อย')</script>");
				}
			}
			else {
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('จำนวนเงินไม่พอสำหรับการโอน')</script>");
			}
			con.Close();
		}
	}
}