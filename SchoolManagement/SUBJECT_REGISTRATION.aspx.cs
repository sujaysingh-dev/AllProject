using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SUBJECT_REGISTRATION : System.Web.UI.Page
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
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //PRIMARY KEY
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select sub_code from subject_registration";
        cmd.ExecuteNonQuery();
        SqlDataReader da1 = cmd.ExecuteReader();
        int c = 0;
        while (da1.Read())
        {
            if (TextBox1.Text == da1.GetValue(0).ToString())
            {
                c = 1; //class  id found in class registration
                break;
            }
        }
        conn.Close();
        conn.Open();
        if (c == 0)
        {
            //To save the record
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into subject_registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if (c == 1)
            Response.Write("<script> alert('Subject code already exist')</script>");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update subject_registration set cls_name='" + TextBox2.Text + "',sub_name='" + TextBox3.Text + "',sub_mark='" + TextBox4.Text + "' where sub_code='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from subject_registration  where sub_code='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM SUBJECT_REGISTRATION";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from subject_registration where sub_code='" + TextBox1.Text + "'";
        cmd1.ExecuteNonQuery();
        SqlDataReader da1 = cmd1.ExecuteReader();
        while (da1.Read())
        {
            TextBox2.Text = da1.GetValue(1).ToString();
            TextBox3.Text = da1.GetValue(2).ToString();
            TextBox4.Text = da1.GetValue(3).ToString();
            SqlDataSource1.SelectCommand = "SELECT * FROM Subject_registration";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}