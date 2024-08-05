using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class STUDENT_REGISTRATION : System.Web.UI.Page
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
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select student_id from student_admission";
        cmd1.ExecuteNonQuery();
        SqlDataReader da1 = cmd1.ExecuteReader();
        int f = 0;
        while (da1.Read())
        {
            if (TextBox4.Text == da1.GetValue(0).ToString())
            {
                f = 1;
                break;
            }
        }
        conn.Close();
        conn.Open();
        if (f == 0)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into student_admission values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if (f == 1)
            Response.Write("<script>alert('student id already exist')</script>");
     }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update STUDENT_ADMISSION set Enrroll_Date='" + TextBox2.Text + "',Class='" + TextBox3.Text + "',Student_ID='" + TextBox4.Text + "',Enrroll_Fee='" + TextBox5.Text + "',Full_Name='" + TextBox6.Text + "',Gender='" + TextBox7.Text + "',Father_Name='" + TextBox8.Text + "',Mother_Name='" + TextBox9.Text + "',P_Address='" + TextBox10.Text + "',Pre_Address='" + TextBox11.Text + "',Dist='" + TextBox12.Text + "',Dob='" + TextBox13.Text + "',Religion='" + TextBox14.Text + "',Email='" + TextBox15.Text + "',Mobile='" + TextBox16.Text + "' where Year='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from STUDENT_ADMISSION  where Year='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM STUDENT_ADMISSION";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from STUDENT_ADMISSION where Year='" + TextBox1.Text + "'";
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
            TextBox13.Text = da1.GetValue(12).ToString();
            TextBox14.Text = da1.GetValue(13).ToString();
            TextBox15.Text = da1.GetValue(14).ToString();
            TextBox16.Text = da1.GetValue(15).ToString();

            SqlDataSource1.SelectCommand = "SELECT * FROM STUDENT_ADMISSION";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}