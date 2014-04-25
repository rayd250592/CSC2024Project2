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
     
		<h1 style="margin-left:10px; font-size:x-large;" > Microsoft </h1>
		
		
            <br />
            <br />

             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                 <AlternatingItemTemplate>
                     <span style="">Headline:
                     <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                     <br />
                     Tagline:
                     <asp:Label ID="TaglineLabel" runat="server" Text='<%# Eval("Tagline") %>' />
                     <br />
                     Story:
                     <asp:Label ID="StoryLabel" runat="server" Text='<%# Eval("Story") %>' />
                     <br />
                     ImagePath:
                     <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
                     <br />
                     Author:
                     <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                     <br />
                     DateTime:
                     <asp:Label ID="DateTimeLabel" runat="server" Text='<%# Eval("DateTime") %>' />
                     <br />
                     Category:
                     <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                     <br />
                     <br />
                     </span>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <span style="">Headline:
                     <asp:TextBox ID="HeadlineTextBox" runat="server" Text='<%# Bind("Headline") %>' />
                     <br />
                     Tagline:
                     <asp:TextBox ID="TaglineTextBox" runat="server" Text='<%# Bind("Tagline") %>' />
                     <br />
                     Story:
                     <asp:TextBox ID="StoryTextBox" runat="server" Text='<%# Bind("Story") %>' />
                     <br />
                     ImagePath:
                     <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                     <br />
                     Author:
                     <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                     <br />
                     DateTime:
                     <asp:TextBox ID="DateTimeTextBox" runat="server" Text='<%# Bind("DateTime") %>' />
                     <br />
                     Category:
                     <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                     <br />
                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     <br />
                     <br />
                     </span>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <span>No data was returned.</span>
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <span style="">Headline:
                     <asp:TextBox ID="HeadlineTextBox" runat="server" Text='<%# Bind("Headline") %>' />
                     <br />
                     Tagline:
                     <asp:TextBox ID="TaglineTextBox" runat="server" Text='<%# Bind("Tagline") %>' />
                     <br />
                     Story:
                     <asp:TextBox ID="StoryTextBox" runat="server" Text='<%# Bind("Story") %>' />
                     <br />
                     ImagePath:
                     <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                     <br />
                     Author:
                     <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                     <br />
                     DateTime:
                     <asp:TextBox ID="DateTimeTextBox" runat="server" Text='<%# Bind("DateTime") %>' />
                     <br />
                     Category:
                     <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                     <br />
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     <br />
                     <br />
                     </span>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <span style="">Headline:
                     <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                     <br />
                     Tagline:
                     <asp:Label ID="TaglineLabel" runat="server" Text='<%# Eval("Tagline") %>' />
                     <br />
                     Story:
                     <asp:Label ID="StoryLabel" runat="server" Text='<%# Eval("Story") %>' />
                     <br />
                     ImagePath:
                     <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
                     <br />
                     Author:
                     <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                     <br />
                     DateTime:
                     <asp:Label ID="DateTimeLabel" runat="server" Text='<%# Eval("DateTime") %>' />
                     <br />
                     Category:
                     <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
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
                     <span style="">Headline:
                     <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                     <br />
                     Tagline:
                     <asp:Label ID="TaglineLabel" runat="server" Text='<%# Eval("Tagline") %>' />
                     <br />
                     Story:
                     <asp:Label ID="StoryLabel" runat="server" Text='<%# Eval("Story") %>' />
                     <br />
                     ImagePath:
                     <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath")%>' />
                     <br />
                           <img src="images/news_images/facebook_logo.png" />
                     Author:
                     <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                     <br />
                     DateTime:
                     <asp:Label ID="DateTimeLabel" runat="server" Text='<%# Eval("DateTime") %>' />
                     <br />
                     Category:
                     <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                     <br />
                     <br />
                     </span>
                 </SelectedItemTemplate>
            </asp:ListView>
		
		


             <div id="rightcolumnwrap">
              
            <!--#include file="ads.aspx"-->

        
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [Headline], [Tagline], [Story], [ImagePath], [Author], [DateTime], [Category] FROM [News]"></asp:SqlDataSource>

      
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
    </form>
</body>
</html>
