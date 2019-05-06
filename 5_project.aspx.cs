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
    DataTable dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        show();
    }
    private void show()
    {
            dt1 = new DataTable();
            dt1.Columns.Add("Project", typeof(string));
            dt1.Columns.Add("size", typeof(string));
            dt1.Columns.Add("type", typeof(string));

            foreach (string projectname in Directory.GetFiles(Server.MapPath("~/Project")))
            {
                FileInfo project = new FileInfo(projectname);
            
                dt1.Rows.Add(project.Name, project.Length, GetFileTypeByExtention(project.Extension));
            }
            GridView1.DataSource=dt1;
            GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string file_extension=Path.GetExtension(FileUpload1.FileName);

           if(file_extension.ToLower() != ".jpg" && file_extension.ToLower() != ".png")
            {
                Label1.Text="*Please select Image realated to your project due to security reasons.";
            }

            else
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Project/") + FileUpload1.FileName);
                GridView1.DataSource=dt1;
                GridView1.DataBind();
                Label1.Text="File Uploaded Successfully !!!";
            }

           show();
        }
    }

        private string GetFileTypeByExtention(string extension)
        {
            switch(extension.ToLower())
            {
                case ".jpg":
                case ".png":
                case ".jpeg":
                    return "Image";
                default:
                    return "You can upload only Image file due to security reasons.";
            }
        }

    protected void  GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Download")
        {
            Response.Clear();
            Response.ContentType="application/octact-stream";
            Response.AppendHeader("content-disposition", "projectname="+e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Project/")+e.CommandArgument);
            Response.End();
        }
    }
}
   