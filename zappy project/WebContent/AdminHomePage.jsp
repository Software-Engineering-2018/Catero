
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

</head>
<% String s=(String)session.getAttribute("user");
					if(s==null)
						response.sendRedirect("index.jsp");
						
				%>
				<% response.addHeader("pragma", "no-cache");
						response.addHeader("cache-control", "no-store");
						response.addHeader("expire", "0");
					%>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	<li><a href="addproduct.jsp">Add Product</a></li>
						    	<li><a href="ViewProduct">View All Product</a></li>
						    	
								<li><a href="OrderHistory">View All Order History</a></li>
								<li><a href="ViewAllRegisteredCustomer">View All Registered Customer</a></li>
								<li><a href="InvalidateJava">Logout</a></li>								
								<div class="clear"></div>
							</ul>
							<script type="text/javascript" src="js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clear"></div>
	    	    </div>
	            
		           <div class="clear"></div>
	       </div>
	      </div>
		 </div>
	    </div>
	</div>
                     <center>   <img src="images/food.jpg"> <center>
                             	
		<hr>
		<div class="main">
      <div class="shop_top">
		<div class="container">  
<div class="col-md-9">
<center><font color="black"><h3>What is Zappy?</h3>
<p class="para_bold" >Zappy is your kitchen convenience partner.</p>
<p>Zappy is an endeavor to bring you the convenience of preparing healthy food that tastes as good as home made.
</br> It is also the reason why 
you feel happy whenever you open a Zappy pack!</font></p></div><center>

      
</body>	
</html>