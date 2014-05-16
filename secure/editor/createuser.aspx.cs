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

public partial class secure_editor_createuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        
        Roles.AddUserToRole(CreateUserWizard1.UserName, "Author");
        string authID = Membership.GetUser((sender as CreateUserWizard).UserName).ProviderUserKey.ToString();

        string firstName = txtFName.Text;
        string lastName = txtLName.Text;

          string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
            SqlConnection myconnection = new SqlConnection(connectionString);

            myconnection.Open();



        string query = "INSERT INTO Author (author_id, firstname,lastname) VALUES ('" + authID +"', '"+firstName+"', '"+lastName+"')";

        SqlCommand insert = new SqlCommand(query, myconnection);

        insert.ExecuteNonQuery();

        myconnection.Close();
    }
}