using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text.RegularExpressions;
using System.Web.Security;

public partial class secure_editaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey.ToString();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {


        foreach (ListViewItem item in ListView1.Items)
        {
            //Label auth = (Label)item.FindControl("Label1");
            // Response.Write(auth);
            string auth_id = Label1.Text;

            string firstname = ((TextBox)item.FindControl("firstnameLabel")).Text.ToString();
            string lastname = ((TextBox)item.FindControl("lastnameLabel")).Text.ToString();

            string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
            SqlConnection myconnection = new SqlConnection(connectionString);

            myconnection.Open();


            string query = "UPDATE Author SET firstname='" + firstname + "', lastname='" + lastname + "'WHERE author_id='" + auth_id + "'";

            SqlCommand insert = new SqlCommand(query, myconnection);

            insert.ExecuteNonQuery();

            myconnection.Close();

            Response.Redirect("authorhome.aspx");

        }


    }
    
}