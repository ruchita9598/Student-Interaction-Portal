using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data.Sql;


public partial class Default5 : System.Web.UI.Page
{
    SqlConnection con;
  //  SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ruchita\\Documents\\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        con = new SqlConnection(mycon);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String query = "insert into login(user_id,password,name,contact,email_id) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("3_home.aspx");
          }
        catch (Exception e1)
        {
            Label6.Text = "User already exist";
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}