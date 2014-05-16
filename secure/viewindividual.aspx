<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewindividual.aspx.cs" Inherits="secure_viewindividual" %>

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

<h1 style="margin-left:10px; font-size:x-large;" > View Article </h1>
            <br />
            <br />
            <br />
         <form id="Form1" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                    <br />
                    imagepath:
                    <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    author:
                    <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">headline:
                    <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                    <br />
                    story:
                    <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                    <br />
                    imagepath:
                    <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">headline:
                    <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                    <br />story:
                    <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                    <br />imagepath:
                    <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>

                    <asp:Label ID="artid" runat="server" Text='<%# Eval("article_id") %>' />

                    <br />
                    <br />

                    <span style="">headline:
                    <asp:Textbox ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    story: &nbsp &nbsp
                    <asp:Textbox ID="storyLabel" runat="server"  Text='<%# Eval("story") %>'  />
                    <br />
                   

                                           <asp:Image ID="artimage" runat="server" ImageUrl='<%# Eval("imagepath") %>' width="200px" />

                        <br />
                        <br />
                        <asp:FileUpload ID="upload" runat="server" />

                    <br />
                    category:

                         

                    <asp:Textbox ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                   
                    <br />

                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />


<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                    <br />
                    imagepath:
                    <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    author:
                    <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
             
             </form>

            


            <br />

                    


          
                
             






                <div id="rightcolumnwrap">
                 

                   

            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
        </div>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [headline], [story], [imagepath], [category], [author], [article_id] FROM [Article] WHERE ([headline] = @headline)">
        <SelectParameters>
            <asp:QueryStringParameter Name="headline" QueryStringField="headline" Type="String" />
        </SelectParameters>
      </asp:SqlDataSource>