<script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
<script type="text/javascript">


    tinyMCE.init({
        selector: "textarea",
        mode: "textareas",
        theme: "simple",
        editor_selector: "mceSimple"
    });

    tinyMCE.init({
        mode: "textareas",
        theme: "advanced",
        editor_selector: "mceAdvanced"
    });

    </script>

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
     
		<h1 style="margin-left:10px; font-size:x-large;" > Add Article </h1>

            <br />
            <br />


		<form method="post">
		
            <asp:Label ID="lblTitle" runat="server" Text="Label">Title</asp:Label>
            <textarea name="content1" class="mceSimple" style="width:100%">
        </textarea>

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
