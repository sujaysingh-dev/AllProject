using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ACCOUNT : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\SchoolManagement.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();

        //Display dropdown from student id
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

        //Display dropdown from class id from class registration
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
            cmd.CommandText = "select cls_id from class_registration";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList2.Items.Add(da1.GetValue(0).ToString());
            }
        }
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
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //To check class id present in class registration or not
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select cls_id from class_registration";
        cmd.ExecuteNonQuery();
        SqlDataReader da1 = cmd.ExecuteReader();
        int c = 0;
        while (da1.Read())
        {
            if (TextBox3.Text == da1.GetValue(0).ToString())
            {
                c = 1; //class  id found in class registration
                break;
            }
        }
        conn.Close();
        conn.Open();

        //To check student id present in student admission or not
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select student_id from student_admission";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
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

        if (s==1 && c==1)
        {
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into Account values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
            SqlDataSource1.SelectCommand = "SELECT * FROM Account";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        else if(s == 0)
            Response.Write("<script>alert('Student id not exist ')</script>");
        else if (c == 0)
            Response.Write("<script>alert('Class id not exist ')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update ACCOUNT set Student_ID='" + TextBox2.Text + "',Cls_ID='" + TextBox3.Text + "',Cls_Name='" + TextBox4.Text + "',Exam_Type='" + TextBox5.Text + "',Fee_Type='" + TextBox6.Text + "',Category='" + TextBox7.Text + "',Amt='" + TextBox8.Text + "',Slip_No='" + TextBox3.Text + "' where A_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from ACCOUNT  where A_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM ACCOUNT";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from account where A_Date='" + TextBox1.Text + "'";
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
            SqlDataSource1.SelectCommand = "SELECT * FROM account";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}