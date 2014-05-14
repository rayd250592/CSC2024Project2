<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createarticle.aspx.cs" Inherits="secure_createarticle" %>

<script type="text/javascript" src="../js/tinymce/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector: "textarea",
        
    });

    tinymce.init({
        selector: "textarea",

    });
</script>


<!DOCTYPE html>

<html>
<head>
<!--#include file="header.aspx"-->
<title>Raymond's Tech News</title>

<link rel="stylesheet" type="text/css" href="../css/styles.css" />
<link rel="stylesheet" type="text/css" href="../css/styles/tables.css" />
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

<h1 style="margin-left:10px; font-size:x-large;" > Create Article </h1>

            <br />
              <br />
            
            <form runat="server">

                <asp:Label ID="lblheadline" runat="server" Text="Headline:">

                     

                </asp:Label> 
                
                <br />

                <asp:TextBox ID="headline" runat="server"></asp:TextBox>

                </br>
                </br>
                </br>

               <asp:Label ID="lblTagline" runat="server" Text="Tagline:"></asp:Label>   
                
                 <br />
                
                <textarea name="tagline" style="width:100%"></textarea>

                </br>
                </br>
                </br>


              <asp:Label ID="lblStory" runat="server" Text="Story:"></asp:Label>

                 <br />

                 <textarea name="story" style="width:100%"></textarea>

                <br />
                <br />

             <asp:FileUpload ID="FileUpload1" runat="server" />
                    </br>
                    <asp:Image ID="image1" runat="server" />
                    </br>
                    </br>
                    </br>

                <br />
                <br />

                 <asp:Label ID="lblcat" runat="server" Text="Category:"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="cat" runat="server">
                    <asp:ListItem>Microsoft</asp:ListItem>
                    <asp:ListItem>Google</asp:ListItem>
                    <asp:ListItem>Apple</asp:ListItem>
                </asp:DropDownList>

                  <br />
                <br />

                                    <asp:Button ID="uploadbutton" runat="server" Text="Upload" OnClick="uploadbutton_Click" />


                  <br />
                <br />

                                <asp:Label ID="lblresponse" runat="server" Text="Label" Visible="false"></asp:Label>

            </form>


          
                
             






                <div id="rightcolumnwrap">
                 

                   

            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
        </div>