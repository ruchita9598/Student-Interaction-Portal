using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Default13 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    SqlCommand cmd;
    DataSet ds;
    
   

    protected void Page_Load(object sender, EventArgs e)
    {
        {
            //DropDownList2.Items.Add("Please Select Semester");
        }


        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ruchita\Documents\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
      
        if (con.State != ConnectionState.Open)
        {
            con.Open();

        }
        
    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("6_book_1_upload.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        //BindGrid();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ruchita\Documents\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        
        cmd = new SqlCommand("select img_url from view_book1 where sub='" + DropDownList2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string img_to_show;
            Image1.Dispose();
            img_to_show = dr["img_url"].ToString();
            Image1.ImageUrl = img_to_show;
           // Response.Write(img_to_show);
        }
        con.Close();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}