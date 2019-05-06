using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default16 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    SqlCommand cmd;
    DataSet ds;
    SqlCommand cmd1;
    string u_name;

    public void Page_Load(object sender, EventArgs e)
    {
        u_name = Session["user_id"].ToString();

      //  Label2.Text = u_name;
    }

    public void Button1_Click1(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ruchita\Documents\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        sda = new SqlDataAdapter("select * from book", con);
        ds = new DataSet();
        sda.Fill(ds);

        string path;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "book_image/" + FileUpload1.FileName);
            
        }
        //Label2.Text = u_name;
        path = FileUpload1.PostedFile.FileName;
        
        con.Open();
        
        string selected_dropdown;
        selected_dropdown = DropDownList1.SelectedItem.ToString();
        long us_id = Convert.ToInt64(u_name);


        cmd = new SqlCommand("insert into book(user_id,sub_name,b_image) values(" + us_id + ", '" + selected_dropdown + "', '" + path + "')", con);
        cmd.ExecuteNonQuery();

        cmd1 = new SqlCommand("select b_image from book where sub_name='"+selected_dropdown+"' and user_id='"+us_id+"'" , con);
        SqlDataReader dr = cmd1.ExecuteReader();


     
        while (dr.Read())
        {
            string img_to_show;
            img_to_show = dr["b_image"].ToString();
            
            Label3.Text = u_name + "   uploaded image of :- " + selected_dropdown;
        }
        con.Close();
    }
}