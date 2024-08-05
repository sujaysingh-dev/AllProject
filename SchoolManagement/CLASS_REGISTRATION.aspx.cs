using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CLASS_REGISTRATION : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\SchoolManagement.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
        //Display student id in drop down
        if (!IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select student_id from student_admission";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList1.Items.Add(da1.GetValue(0).ToString());
            }
        }
        conn.Close();
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
    }
        protected void Button3_Click1(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update CLASS_REGISTRATION set Sid='" + TextBox2.Text + "',Cls_ID='" + TextBox3.Text + "',Cls_Name='" + TextBox4.Text + "',Dept_Name='" + TextBox5.Text + "',Shift='" + TextBox6.Text + "' where Year='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //To check student id present in student admission or not
        SqlCommand cmd = conn.CreateCommand();
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select student_id from student_admission";
        cmd.ExecuteNonQuery();
        SqlDataReader da1=cmd.ExecuteReader();
        int s = 0;
        while (da1.Read())
        {
            if (TextBox2.Text == da1.GetValue(0).ToString())
            {
                s = 1; //Student id found in student admission
                break;
            }
        }
        conn.Close();
        conn.Open();
        
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select cls_id from class_registration";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int a = 0;
        while (da1.Read())
        {
            if (TextBox3.Text == da1.GetValue(0).ToString())
            {
                a = 1; //Student id found in student admission
                break;
            }
        }
        conn.Close();
        conn.Open();

        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select cls_name from class_registration";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int b = 0;
        while (da1.Read())
        {
            if (TextBox4.Text == da1.GetValue(0).ToString())
            {
                b = 1; //Student id found in student admission
                break;
            }
        }
        conn.Close();
        conn.Open();

        if (s == 1 && a == 0 && b == 0)
        {
            //To save the record
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into CLASS_REGISTRATION values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if(s == 0)
            Response.Write("<script> alert('Student id does not exist')</script>");
        else if (a == 1)
            Response.Write("<script> alert('Class id already exist')</script>");
        else if (b == 1)
            Response.Write("<script> alert('Class name already exist')</script>");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from CLASS_REGISTRATION  where Year='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM CLASS_REGISTRATION";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from CLASS_REGISTRATION where Year='" + TextBox1.Text + "'";
        cmd1.ExecuteNonQuery();
        SqlDataReader da1 = cmd1.ExecuteReader();
        while (da1.Read())
        {
            TextBox2.Text = da1.GetValue(1).ToString();
            TextBox3.Text = da1.GetValue(2).ToString();
            TextBox4.Text = da1.GetValue(3).ToString();
            TextBox5.Text = da1.GetValue(4).ToString();
            TextBox6.Text = da1.GetValue(5).ToString();
            SqlDataSource1.SelectCommand = "SELECT * FROM CLASS_REGISTRATION";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
    
}