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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [author], [datetime], [category], [story], [imagepath], [isapproved] FROM [Article] WHERE ([article_id] = @article_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="article_id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />


                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                            <AlternatingItemTemplate>
                                <span style="">article_id:
                                <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                                <br />
                                headline:
                                <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                                <br />
                                author:
                                <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                                <br />
                                datetime:
                                <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                <br />
                                category:
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                <br />
                                story:
                                <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                                <br />
                                imagepath:
                                <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
                                <br />
                                isapproved:
                                <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
                                <br />
<br /></span>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <span style="">article_id:
                                <asp:TextBox ID="article_idTextBox" runat="server" Text='<%# Bind("article_id") %>' />
                                <br />
                                headline:
                                <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                                <br />
                                author:
                                <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                                <br />
                                datetime:
                                <asp:TextBox ID="datetimeTextBox" runat="server" Text='<%# Bind("datetime") %>' />
                                <br />
                                category:
                                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                <br />
                                story:
                                <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                                <br />
                                imagepath:
                                <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
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
                                <span style="">article_id:
                                <asp:TextBox ID="article_idTextBox" runat="server" Text='<%# Bind("article_id") %>' />
                                <br />headline:
                                <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                                <br />author:
                                <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                                <br />datetime:
                                <asp:TextBox ID="datetimeTextBox" runat="server" Text='<%# Bind("datetime") %>' />
                                <br />category:
                                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                <br />story:
                                <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                                <br />imagepath:
                                <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                                <br />isapproved:
                                <asp:TextBox ID="isapprovedTextBox" runat="server" Text='<%# Bind("isapproved") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br /><br /></span>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <span style="">article_id:
                                <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                                <br />
                                headline:
                                <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                                <br />
                                author:
                                <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                                <br />
                                datetime:
                                <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                <br />
                                category:
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                <br />
                                story:
                                <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                                <br />
                                imagepath:
                                <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
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
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span style="">article_id:
                                <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                                <br />
                                headline:
                                <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                                <br />
                                author:
                                <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                                <br />
                                datetime:
                                <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                <br />
                                category:
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                <br />
                                story:
                                <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                                <br />
                                imagepath:
                                <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
                                <br />
                                isapproved:
                                <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
                                <br />
<br /></span>
                            </SelectedItemTemplate>
            </asp:ListView>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="sqlcat">
                <AlternatingItemTemplate>
                    <span style="">article_id:
                    <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                    <br />
                    headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
<br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">article_id:
                    <asp:TextBox ID="article_idTextBox" runat="server" Text='<%# Bind("article_id") %>' />
                    <br />
                    headline:
                    <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                    <br />
                    tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    story:
                    <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">article_id:
                    <asp:TextBox ID="article_idTextBox" runat="server" Text='<%# Bind("article_id") %>' />
                    <br />headline:
                    <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
                    <br />tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />story:
                    <asp:TextBox ID="storyTextBox" runat="server" Text='<%# Bind("story") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">article_id:
                    <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                    <br />
                    headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
<br />
                    <br />
                    </span>
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
                    <span style="">article_id:
                    <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                    <br />
                    headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
<br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>


            <asp:ListView ID="ListView3" runat="server" DataSourceID="sqlallapproved" >
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
                    <span style="">headline:
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                    <br />
                    story:
                    <asp:Label ID="storyLabel" runat="server" Text='<%# Eval("story") %>' />
                    <br />
                    imagepath:
                   
                   <asp:Image ID="artimage" runat="server" ImageUrl='<%# "secure/" + Eval("imagepath") %>' Width="200px" />    
                    
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    author:
                    <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
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

             <div id="rightcolumnwrap">
              
            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [tagline], [category] FROM [Article]"></asp:SqlDataSource>
        
            <asp:SqlDataSource ID="sqlcat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [tagline], [category], [story] FROM [Article] WHERE ([category] = @category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="category" QueryStringField="category" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        
            <asp:SqlDataSource ID="sqlallapproved" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [headline], [story], [imagepath], [category], [author] FROM [Article] WHERE ([isapproved] = @isapproved)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="isapproved" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        
        </div>
    </div>
    </form>
</body>
</html>
    </form>

