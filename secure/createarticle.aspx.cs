using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text.RegularExpressions;

public partial class secure_createarticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string replace(string s)
    {
        String result = Regex.Replace(s, @"<[^>]*>", String.Empty);
        return result;
    }

    protected void uploadbutton_Click(object sender, EventArgs e)
    {


        if (IsPostBack)
        {

            lblresponse.Visible = true;
            lblresponse.Text = "Thank you";

        }


        else
        {

            lblresponse.Visible = false;


        }

        String uPath = Server.MapPath("uploadedarticles");

        Random r = new Random();
        int rInt = r.Next(0, 10000);

        DateTime now = DateTime.Now;

      





        if (!Directory.Exists(uPath))
        {

            Directory.CreateDirectory(uPath);
            Response.Write("folder doesnt exist");


        }

        else
        {
            int imgSize = FileUpload1.PostedFile.ContentLength;
            string imgName = FileUpload1.FileName;
            string imgPath = "uploadedarticles/" + rInt + imgName;






            if (FileUpload1.PostedFile.ContentLength > 100000)
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
            }

            else
            {

                FileUpload1.SaveAs(Server.MapPath(imgPath));

            }

           // Response.Write("folder dpes exist");

            string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
            SqlConnection myconnection = new SqlConnection(connectionString);

            myconnection.Open();



            String title = replace(headline.Text);
            String tag = replace(Request.Form["tagline"]);
            String artice_story = replace(Request.Form["story"]);

            String category = cat.SelectedValue;
            String isapproved = "0";


            //Response.Write("COnnection made");
            //Response.Write(category);

            string query = "INSERT INTO Article(headline,tagline,story,imagepath,category, author,datetime,isapproved) VALUES ('" + title + "', '" + tag + "', '" + artice_story + "', '" + imgPath + "', '" + category + "', 'Raymond', '" + now + "', '" + isapproved + "')";

            SqlCommand insert = new SqlCommand(query, myconnection);

            insert.ExecuteNonQuery();

             myconnection.Close();


        }

        

   


      
    }
}