﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
	public partial class Admin : System.Web.UI.MasterPage
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
					TxtUsern.Text = reader["AdminUser"].ToString();
				}
				con.Close();
			}
			else
			{
				Response.RedirectPermanent("AdminLogin.apsx");
			}
		}
	}
}