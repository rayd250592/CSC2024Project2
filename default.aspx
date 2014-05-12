<!DOCTYPE html>
<script runat="server">

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub
</script>

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
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">article_id:
                    <asp:Label ID="article_idLabel" runat="server" Text='<%# Eval("article_id") %>' />
                    <br />
                    headline:
                        <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# "Microsoft.aspx?id=" + Convert.ToString(Eval("article_id"))%>' >

                       
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                             </asp:HyperLink>
                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    datetime:
                    <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
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
                    tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    datetime:
                    <asp:TextBox ID="datetimeTextBox" runat="server" Text='<%# Bind("datetime") %>' />
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
                    <br />tagline:
                    <asp:TextBox ID="taglineTextBox" runat="server" Text='<%# Bind("tagline") %>' />
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />datetime:
                    <asp:TextBox ID="datetimeTextBox" runat="server" Text='<%# Bind("datetime") %>' />
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
                         <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# "Microsoft.aspx?id=" + Convert.ToString(Eval("article_id"))%>' >
                    <asp:Label ID="headlineLabel" runat="server" Text='<%# Eval("headline") %>' />
                         </asp:HyperLink>

                    <br />
                    tagline:
                    <asp:Label ID="taglineLabel" runat="server" Text='<%# Eval("tagline") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    datetime:
                    <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
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
                    datetime:
                    <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                    <br />
                    isapproved:
                    <asp:Label ID="isapprovedLabel" runat="server" Text='<%# Eval("isapproved") %>' />
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
        
        </div>
    </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [article_id], [headline], [tagline], [category], [datetime], [isapproved] FROM [Article]"></asp:SqlDataSource>
    </form>
</body>
</html>
