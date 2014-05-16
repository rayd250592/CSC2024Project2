using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Login1_LoggedIn1(object sender, EventArgs e)
    {


        if (Roles.IsUserInRole(Login1.UserName, "admin"))
            Response.Redirect("~/secure/editor/admin.aspx");
        else if (Roles.IsUserInRole(Login1.UserName, "Author"))
            Response.Redirect("~/secure/authorhome.aspx");
      
    }
}