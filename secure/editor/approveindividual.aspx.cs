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


public partial class secure_approveindividual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnApprove_Click(object sender, EventArgs e)
    {


        foreach (ListViewItem item in ListView1.Items)
        {
            Label head = (Label)item.FindControl("headlineLabel");
            string headline = head.Text;


            string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
            SqlConnection myconnection = new SqlConnection(connectionString);

            myconnection.Open();

            string query = "UPDATE Article SET isapproved='1' WHERE headline='" + headline + "'";

            SqlCommand insert = new SqlCommand(query, myconnection);

            insert.ExecuteNonQuery();

            myconnection.Close();

            Response.Redirect("approvearticles.aspx");



        }
 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {





        foreach (ListViewItem item in ListView1.Items)
        {
            Label head = (Label)item.FindControl("headlineLabel");
            string headline = head.Text;


            string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionStringImage"].ConnectionString;
            SqlConnection myconnection = new SqlConnection(connectionString);

            myconnection.Open();

            string query = "DELETE FROM Article WHERE headline='" + headline + "'";

            SqlCommand insert = new SqlCommand(query, myconnection);

            insert.ExecuteNonQuery();

            myconnection.Close();

            Response.Redirect("approvearticles.aspx");



        }

    }
}