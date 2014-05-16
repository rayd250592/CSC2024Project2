<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="secure_editor_manageuser" %>

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
     
		
		
            <h1 style="margin-left:10px; font-size:x-large;" > Manage Authors </h1>

            <br />
            
            <form id="Form1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                     
                         <asp:TemplateField  HeaderText="" SortExpression="author_id">

                        <ItemTemplate>

        <asp:Label ID="userid" runat="server" Text='<%# Bind("author_id") %>' Visible="false"></asp:Label>

    </ItemTemplate>

                             </asp:TemplateField>


                           <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />

                          <asp:ButtonField ButtonType="Button" CommandName="edit_user" 
         HeaderText="" Text="Edit User" />

                          
                                             
                    </Columns>
                </asp:GridView>
            <br />
         
                <br />
                <br />
                         <div id="rightcolumnwrap">
              
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [firstname], [lastname], [author_id] FROM [Author]"></asp:SqlDataSource>
              
            <!--#include file="ads.aspx"-->

        
        </div>
            
        



           </form>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
</body>
</html>