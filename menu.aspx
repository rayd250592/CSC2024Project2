
<!DOCTYPE html>
<html>
<head>
	<link rel='stylesheet' type='text/css' href="menu_source/styles.css" />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script type='text/javascript' src="menu_source/menu_jquery.js"></script>
</head>
<body>
<div id='cssmenu'>
<ul>

<li class='active'><a href='login.aspx'><span>Login</span></a></li>
     <li class='active'><a href='signup.aspx'><span>Sign Up</span></a></li>
   <li class='active'><a href='default.aspx'><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>News</span></a>
      <ul>
       <li><a href='Microsoft.aspx'>Microsoft</a></li>
         <li><a href="Google.aspx">Google</a></li>
         <li class='last'><a href="Apple.aspx"><span>Apple</span></a></li>
      </ul>
   </li>
      <li class='last'><a href='products.php'><span>Products</span></a></li>
 
</ul>
</div>
</body>
</html>