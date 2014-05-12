<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Microsoft.aspx.cs" Inherits="Apple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
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
     
		<h1 style="margin-left:10px; font-size:x-large;" > Microsoft </h1>

            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [author], [datetime], [category], [story], [imagepath], [isapproved] FROM [Article]"></asp:SqlDataSource>
            <br />

             <div id="rightcolumnwrap">
              
            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [tagline], [category] FROM [Article]"></asp:SqlDataSource>
        
        </div>
    </div>
    </form>
</body>
</html>
