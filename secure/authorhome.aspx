<%@ Page Language="C#" AutoEventWireup="true" CodeFile="authorhome.aspx.cs" Inherits="secure_authorhome" %>

<!DOCTYPE html>
<!--#include file="header.aspx"-->
<title>Raymond's Tech News</title>

<link rel="stylesheet" type="text/css" href="styles/css.css" />
<link rel="stylesheet" type="text/css" href="styles/tables.css" />
</head>
<body style="background-color:silver">
    <div id="wrapper">
        <div id="headerwrap">
     
                  


 </div>
       
        <div id="leftcolumnwrap">

       
<!--#include file="menu.aspx"-->

        </div>
        <div id="contentwrap">
        <div id="content">
     
		
		
            <h1 style="margin-left:10px; font-size:x-large;" > Author Home </h1>

            
            <br />
            <br />

            This is the administration page for registered authors. From the menu on the left, you can edit your details.

            <br />
            <br />

            You can also create articles (these will need to be approved by the editor)

             <br />
            <br />

            The final role of the editor is to view articles which have been submitted for approval.
            <form id="Form1" runat="server">

               
            <br />
            

           
         </form>

            <br />
         
                <br />
                <br />
                         <div id="rightcolumnwrap">
              
                          
              
            <!--#include file="ads.aspx"-->

        
        </div>
            
        



           </form>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [author_id], [firstname], [lastname] FROM [Author] WHERE ([author_id] = @author_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="author_id" QueryStringField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>