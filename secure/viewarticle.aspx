<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewarticle.aspx.cs" Inherits="secure_viewarticle" %>


<!DOCTYPE html>
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
     
		
		
            <h1 style="margin-left:10px; font-size:x-large;" > View Articles</h1>

            <br />
            <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <br />

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                   
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                   
                      <asp:ButtonField ButtonType="Button" CommandName="view_article" 
         HeaderText="" Text="View Article" />
                </Columns>
            </asp:GridView>
            

           
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
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [headline], [tagline], [story], [imagepath], [category], [isapproved] FROM [Article] WHERE (([author] = @author) AND ([isapproved] = @isapproved))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="author" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="0" Name="isapproved" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
   
</body>
</html>