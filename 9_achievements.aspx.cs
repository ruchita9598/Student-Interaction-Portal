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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    string u_name;


    public void Page_Load(object sender, EventArgs e)
    {

        u_name = Session["user_id"].ToString();
 
        string mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ruchita\\Documents\\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        con = new SqlConnection(mycon);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String query = "insert into achievements(user_id,branch,event_category,event_name,secured_position,level,description) values('" + u_name + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + TextBox2.Text + "')";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        catch (Exception e1)
        {
            Label8.Text="Please Provide Necessary Details";            
        }

    }

  /*  protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }*/
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}