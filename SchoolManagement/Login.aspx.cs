using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\SchoolManagement.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)

    {
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from LOGIN";
        cmd1.ExecuteNonQuery();
        SqlDataReader da1 = cmd1.ExecuteReader();
        int f = 0;
        while (da1.Read())
        {
            if (TextBox1.Text == da1.GetValue(0).ToString())
            {
                if (TextBox2.Text == da1.GetValue(1).ToString())
                {
                    f = 1;
                    break;
                }
            }
        }
        if (f == 1)
        {
            Response.Write("<script>window.open('Mymenu.aspx')</script>");
        }
        else
            Response.Write("Wrong ID");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}