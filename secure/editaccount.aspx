<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editaccount.aspx.cs" Inherits="secure_editaccount" %>

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
     
		
		
            <h1 style="margin-left:10px; font-size:x-large;" > Edit Account</h1>

            <br />
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>

            <form id="Form1" runat="server">

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <span style="">firstname:
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                        <br />
                        lastname:
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                        <br />
<br /></span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                        <br />
                        lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /><br /></span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                        <br />lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /><br /></span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">firstname:
                        <asp:Textbox ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                        <br />
                        lastname:
                        <asp:Textbox ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
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
                        <span style="">firstname:
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                        <br />
                        lastname:
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                        <br />
<br /></span>
                    </SelectedItemTemplate>
                </asp:ListView>

            <br />
            

           
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"/>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [firstname], [lastname] FROM [Author] WHERE ([author_id] = @author_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="author_id" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>