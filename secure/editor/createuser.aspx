<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createuser.aspx.cs" Inherits="secure_editor_createuser" %>

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
     
		
		
            <h1 style="margin-left:10px; font-size:x-large;" > Create Author </h1>

            <br />
            <br />
         
            <form id="Form1" runat="server">

                     <br />

                <asp:Label ID="lblFirst" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblLast" runat="server" Text="Last Name: "></asp:Label>
                  <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>

                <br />
                <br />
            
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>

           
            
            </form>
                         <div id="rightcolumnwrap">
              
            <!--#include file="ads.aspx"-->

        
        </div>
        </div>
        <div id="footerwrap">
        
    <!--#include file="footer.aspx"-->
        
        </div>
    </div>
</body>
</html>