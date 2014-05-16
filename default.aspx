<!DOCTYPE html>

<html>
<head>
<!--#include file="header.aspx"-->
<title>Raymond's Tech News</title>

<link rel="stylesheet" type="text/css" href="styles/css.css" />
<link rel="stylesheet" type="text/css" href="styles/tables.css" />
</head>
<body style="background-color:silver">
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="headerwrap">
                  


 </div>
       
        <div id="leftcolumnwrap">

       
<!--#include file="menu.aspx"-->

        </div>
        <div id="contentwrap">
        <div id="content">
     
		<h1 style="margin-left:10px; font-size:x-large;" > Home </h1>
         
		
             <div id="rightcolumnwrap">
                 
            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [tagline], [category], [datetime], [isapproved], [story] FROM [Article]"></asp:SqlDataSource>
    </form>
</body>
</html>
