<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_article.aspx.cs" Inherits="Apple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<script runat="server">

   
</script>

<html>
<head>
<!--#include file="header.aspx"-->
<title>Raymond's Tech News</title>

<link rel="stylesheet" type="text/css" href="styles/css.css" />
<link rel="stylesheet" type="text/css" href="styles/tables.css" />
</head>
<body style="background-color:silver">
    <form id="form2" runat="server">
    <div id="wrapper">
        <div id="headerwrap">
     
                  


 </div>
       
        <div id="leftcolumnwrap">

       
<!--#include file="menu.aspx"-->

        </div>
        <div id="contentwrap">
        <div id="content">
     
		<h1 style="margin-left:10px; font-size:x-large;" > Create an Article </h1>

          
            <asp:FileUpload ID="fileupload" runat="server" />
            <br />
            <asp:Image ID="image1" runat="server" />
              <br />
              <br />
            <asp:Button ID="uploadbutton" runat="server" Text="Upload" OnClick="uploadbutton_Click" />
             <div id="rightcolumnwrap">
              
            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
            
        
        </div>
    </div>
    </form>
</body>
</html>
