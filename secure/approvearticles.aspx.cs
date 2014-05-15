using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class secure_approvearticles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


   protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
   {


       int index = Convert.ToInt32(e.CommandArgument);

       GridViewRow row = GridView1.Rows[index];
       string headline = GridView1.Rows[index].Cells[0].Text;
       Response.Write(headline);

       Response.Redirect("approveindividual.aspx?headline=" + headline);  

   }
}