using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt; 
    protected void Page_Load(object sender, EventArgs e)
    {
        show();
    }
    private void show()
    {
        dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("size", typeof(string));
        dt.Columns.Add("type", typeof(string));

        foreach (string filename in Directory.GetFiles(Server.MapPath("~/Data")))
        {
            FileInfo fi = new FileInfo(filename);

            dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtention(fi.Extension));
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string file_extension=Path.GetExtension(FileUpload1.FileName);

            if(file_extension.ToLower() != ".doc" &&  file_extension.ToLower() != ".docx" && file_extension.ToLower() != ".jpg" && file_extension.ToLower() != ".png")
            {
                Label1.Text="*Please select Word Document or Image file to upload";
            }

            else
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Label1.Text="File Uploaded Successfully !!!";
            }
        }

        show();
    }

        private string GetFileTypeByExtention(string extention)
        {
            switch(extention.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft  Word Document";
                case ".jpg":
                case ".png":
                case ".jpeg":
                    return "Image";
                default:
                    return "unknown";
            }
        }
        protected void  GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Download")
            {
                Response.Clear();
                Response.ContentType="application/octact-stream";
                Response.AppendHeader("content-disposition","filename="+e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/")+e.CommandArgument);
                Response.End();
            }

        }
}


