using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default15 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ruchita\Documents\s15cos124.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlDataAdapter adp = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM faq";
            adp.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adp.Fill(ds, "faq");
            rpFAQ.DataSource = ds;
            rpFAQ.DataMember = "faq";
            rpFAQ.DataBind();
        }
    }
}