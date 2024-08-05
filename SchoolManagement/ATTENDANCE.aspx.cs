using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ATTENDANCE : System.Web.UI.Page
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

        //Display Class id in drop down
        if (!IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select cls_id from class_registration";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList2.Items.Add(da1.GetValue(0).ToString());
            }
        }
        conn.Close();
        conn.Open();

        //Display class name in drop down
        if (!IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select cls_name from class_registration";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList3.Items.Add(da1.GetValue(0).ToString());
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
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //To check student id present in student admission or not
        SqlCommand cmd = conn.CreateCommand();
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select student_id from student_admission";
        cmd.ExecuteNonQuery();
        SqlDataReader da1 = cmd.ExecuteReader();
        int s = 0;
        while (da1.Read())
        {
            if (TextBox1.Text == da1.GetValue(0).ToString())
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
            if (TextBox2.Text == da1.GetValue(0).ToString())
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
            if (TextBox3.Text == da1.GetValue(0).ToString())
            {
                b = 1; //Student id found in student admission
                break;
            }
        }
        conn.Close();
        conn.Open();
        if (a == 1 && s == 1 && b==1)
        {
            //To save the record
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into ATTENDANCE values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if(a==0)
            Response.Write("<script> alert('Class id does not found')</script>");
        else if (s == 0)
            Response.Write("<script> alert('Student id does not found')</script>");
        else if (b == 0)
            Response.Write("<script> alert('Class name does not found')</script>");

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update ATTENDANCE set Cls_ID='" + TextBox2.Text + "' ,Cls_Name='" + TextBox3.Text + "' , Cls_Typ='" + TextBox4.Text + "' ,Month='" + TextBox5.Text + "' ,Holiday='" + TextBox6.Text + "', Present='" + TextBox7.Text + "', Absent='" + TextBox8.Text + "' where Student_ID ='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from ATTENDANCE  where Student_ID='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM ATTENDANCE";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from ATTENDANCE where Student_ID ='" + TextBox1.Text + "'";
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
           
            SqlDataSource1.SelectCommand = "SELECT * FROM ATTENDANCE";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}