using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class secure_viewarticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey.ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int index = Convert.ToInt32(e.CommandArgument);

        GridViewRow row = GridView1.Rows[index];
        string headline = GridView1.Rows[index].Cells[0].Text;

        Response.Redirect("viewindividual.aspx?headline=" + headline);  

    }
}