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
using System.Web.Security;

public partial class secure_viewindividual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        foreach (ListViewItem item in ListView1.Items)
        {

            Label articleid = (Label)item.FindControl("artid");

            string id = articleid.Text;

            TextBox tb = ((TextBox)(item.FindControl("headlineLabel")));
            
            //  tex headline = ListView1.FindControl("headlinelabel").ToString();
            // Response.Write(auth);
            string head = tb.Text;

            string user_id = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey.ToString();

            TextBox story = (TextBox)item.FindControl("storyLabel");
            string artstory = story.Text;
          //  Label imagepath = (Label)item.FindControl("artimage");
           // string art_image = imagepath.Text;

            TextBox cat = (TextBox)item.FindControl("categoryLabel");
            string category = cat.Text;
            String uPath = Server.MapPath("uploadedarticles");

            Random r = new Random();
            int rInt = r.Next(0, 10000);

            DateTime now = DateTime.Now;

            FileUpload up = (FileUpload)item.FindControl("upload");


            if (!Directory.Exists(uPath))
            {

                Directory.CreateDirectory(uPath);
                Response.Write("folder doesnt exist");


            }

            else
            {

                int imgSize = up.PostedFile.ContentLength;
                string imgName = up.FileName;
                string imgPath = "uploadedarticles/" + rInt + imgName;

                if (up.PostedFile.ContentLength > 100000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                }

                else
                {

                    up.SaveAs(Server.MapPath(imgPath));

                }




                string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
                SqlConnection myconnection = new SqlConnection(connectionString);

                myconnection.Open();


                string query = "UPDATE Article SET headline='" + head + "', story='" + story+ "', imagepath='" + imgPath + "', category='" +  cat + "' WHERE article_id='" + articleid + "'";

                SqlCommand insert = new SqlCommand(query, myconnection);

                insert.ExecuteNonQuery();

                myconnection.Close();

               Response.Redirect("viewarticle.aspx");






            }


      
        }

    }
}