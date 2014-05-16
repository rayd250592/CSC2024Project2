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
            <br />
              <br />
            

                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand1">
                                <Columns>
                                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                                    <asp:BoundField DataField="story" HeaderText="story" SortExpression="story" />
                                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                            
                                  <asp:ButtonField ButtonType="Button" CommandName="view_article" 
         HeaderText="" Text="View Article" />

                                  
                                </Columns>


                            </asp:GridView>
               

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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringImage %>" SelectCommand="SELECT [headline], [story], [author], [isapproved] FROM [Article] WHERE ([isapproved] = @isapproved)">
          <SelectParameters>
              <asp:Parameter DefaultValue="0" Name="isapproved" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
