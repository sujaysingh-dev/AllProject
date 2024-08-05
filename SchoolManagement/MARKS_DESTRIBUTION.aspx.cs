using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MARKS_DESTRIBUTION : System.Web.UI.Page
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
            cmd.CommandText = "select t_id from teacher_information";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList5.Items.Add(da1.GetValue(0).ToString());
            }
        }
        conn.Close();
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
        conn.Close();
        conn.Open();
        //Display student id in drop down
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
        //Display student id in drop down
        if (!IsPostBack == true)
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select sub_code from subject_registration";
            cmd.ExecuteNonQuery();
            SqlDataReader da1 = cmd.ExecuteReader();
            while (da1.Read())
            {
                DropDownList4.Items.Add(da1.GetValue(0).ToString());
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
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        //FOREIGN KEY
        SqlCommand cmd = conn.CreateCommand();
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select t_id from teacher_information";
        cmd.ExecuteNonQuery();
        SqlDataReader da1 = cmd.ExecuteReader();
        int a = 0;
        while (da1.Read())
        {
            if (TextBox2.Text == da1.GetValue(0).ToString())
            {
                a = 1;
                break;
            }
        }

        conn.Close();
        conn.Open();

        //FOREIGN KEY
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select student_id from student_admission";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int b = 0;
        while (da1.Read())
        {
            if (TextBox3.Text == da1.GetValue(0).ToString())
            {
                b = 1;
                break;
            }
        }

        conn.Close();
        conn.Open();

        //FOREIGN KEY
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select cls_id from class_registration";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int c = 0;
        while (da1.Read())
        {
            if (TextBox4.Text == da1.GetValue(0).ToString())
            {
                c = 1;
                break;
            }
        }

        conn.Close();
        conn.Open();

        //FOREIGN KEY
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select cls_name from class_registration";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int d = 0;
        while (da1.Read())
        {
            if (TextBox5.Text == da1.GetValue(0).ToString())
            {
                d = 1;
                break;
            }
        }

        conn.Close();
        conn.Open();

        //FOREIGN KEY
        cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select sub_code from subject_registration";
        cmd.ExecuteNonQuery();
        da1 = cmd.ExecuteReader();
        int f = 0;
        while (da1.Read())
        {
            if (TextBox7.Text == da1.GetValue(0).ToString())
            {
                f = 1;
                break;
            }
        }

        conn.Close();
        conn.Open();


        if (a == 1 && b == 1 && c == 1 && d == 1 && f == 1)
        {
            //To save the record
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into MARKS_DESTRIBUTION values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Record Saved')</script>");
        }
        else if(a==0)
            Response.Write("<script> alert('Teacher id does not matched')</script>");
        else if (b == 0)
            Response.Write("<script> alert('Student id does not matched')</script>");
        else if (c == 0)
            Response.Write("<script> alert('Class id does not matched')</script>");
        else if (d == 0)
            Response.Write("<script> alert('Class name does not matched')</script>");
        else if (f == 0)
            Response.Write("<script> alert('Sub code does not matched')</script>");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        //To update the record 
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update MARKS_DESTRIBUTION set T_ID='" + TextBox2.Text + "',Student_ID='" + TextBox3.Text + "',Cls_ID='" + TextBox4.Text + "',Cls_Name='" + TextBox5.Text + "',Exam_Type='" + TextBox6.Text + "',Sub_Code='" + TextBox7.Text + "',Class_Test='" + TextBox8.Text + "',Mid='" + TextBox9.Text + "',Theory='" + TextBox10.Text + "',Obj='" + TextBox11.Text + "',Practical='" + TextBox12.Text + "',Total_Mark='" + TextBox13.Text + "' where M_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Updated')</script>");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        //To delete the record
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from MARKS_DESTRIBUTION  where M_Date='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Record Deleted')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM MARKS_DESTRIBUTION";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular Search
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from MARKS_DESTRIBUTION where M_Date='" + TextBox1.Text + "'";
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

            SqlDataSource1.SelectCommand = "SELECT * FROM MARKS_DESTRIBUTION";
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}