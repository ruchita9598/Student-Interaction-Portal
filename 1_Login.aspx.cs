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


public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
  
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ruchita\\Documents\\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        con = new SqlConnection(mycon);
        if (con.State != ConnectionState.Open)
        {
            Session["user_id"] = TextBox1.Text;
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
       
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        string str = "select * from login where user_id='" + TextBox1.Text + "' and password='"+ TextBox2.Text+"'" ;
        cmd.CommandText = str;
        dr = cmd.ExecuteReader();

        /*
        {
            Label5.Text = "User already exist";
        }*/

        if (dr.Read()) 
        {
            Response.Redirect("3_home.aspx");
        }
        else
        {
            Label3.Text = "Invalid UserId or Password";
            TextBox1.Text = "";
            TextBox2.Text = "";
            // Response.Redirect("Default2.aspx");
        }
       
    }
   
}