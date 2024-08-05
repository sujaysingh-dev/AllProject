using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TEACHER_INFORMATION : System.Web.UI.Page
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //PRIMARY KEY
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select t_id from teacher_information";
        cmd.ExecuteNonQuery();
        SqlDataReader da1 = cmd.ExecuteReader();
        int c = 0;
        while (da1.Read())
        {
            if (TextBox3.Text == da1.GetValue(0).ToString())
            {
                c = 1; 
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
            cmd1.CommandText = "insert into TEACHER_INFORMATION values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if (c == 1)
            Response.Write("<script> alert('Teacher id already exist')</script>");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update TEACHER_INFORMATION set Year='" + TextBox2.Text + "',T_ID='" + TextBox3.Text + "',Full_Name='" + TextBox4.Text + "',Gender='" + TextBox5.Text + "',P_Address='" + TextBox6.Text + "',Pre_Address='" + TextBox7.Text + "',Dist='" + TextBox8.Text + "',Dob='" + TextBox9.Text + "',Religion='" + TextBox10.Text + "',Email='" + TextBox11.Text + "',Mobile='" + TextBox12.Text + "' where J_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from TEACHER_INFORMATION  where J_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM TEACHER_INFORMATION";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from TEACHER_INFORMATION where J_Date='" + TextBox1.Text + "'";
        cmd1.ExecuteNonQuery();
        SqlDataReader da1 = cmd1.ExecuteReader();
        while (da1.Read())
        {
            TextBox2.Text = da1.GetValue(1).ToString();
            TextBox3.Text = da1.GetValue(2).ToString();
            TextBox4.Text = da1.GetValue(3).ToString();
            TextBox5.Text = da1.GetValue(4).ToString();
            TextBox6.Text = da1.GetValue(5).ToString();
            TextBox7.Text = da1.GetValue(6).ToString();
            TextBox8.Text = da1.GetValue(7).ToString();
            TextBox9.Text = da1.GetValue(8).ToString();
            TextBox10.Text = da1.GetValue(9).ToString();
            TextBox11.Text = da1.GetValue(10).ToString();
            TextBox12.Text = da1.GetValue(11).ToString();

            SqlDataSource1.SelectCommand = "SELECT * FROM TEACHER_INFORMATION";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}