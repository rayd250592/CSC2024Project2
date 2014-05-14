<%@ Page Language="C#" AutoEventWireup="true" CodeFile="approvearticles.aspx.cs" Inherits="secure_approvearticles" %>


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

<h1 style="margin-left:10px; font-size:x-large;" > Approve Articles </h1>

            <br />

                        <form id="Form1" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
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
                    isapproved:
                    <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">headline:
                    <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                    <br />
                    tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
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
                    isapproved:
                    <asp:TextBox ID="isapprovedTextBox" runat="server" Text='<%# Bind("isapproved") %>' />
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
                    <br />tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
                    <br />story:
                    <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                    <br />imagepath:
                    <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />isapproved:
                    <asp:TextBox ID="isapprovedTextBox" runat="server" Text='<%# Bind("isapproved") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
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
                    isapproved:
                    <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
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
                    isapproved:
                    <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
              <br />
            


               

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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [headline], [tagline], [story], [imagepath], [category], [author], [isapproved] FROM [Article] WHERE ([isapproved] = @isapproved)">
          <SelectParameters>
              <asp:Parameter DefaultValue="0" Name="isapproved" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
