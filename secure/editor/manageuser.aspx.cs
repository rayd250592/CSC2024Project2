using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class secure_editor_manageuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        



    }




    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        string strUserID = ((Label)GridView1.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("userid")).Text;
        Response.Redirect("edituser.aspx?user=" + strUserID); 

    }
}





       
    
   
    

