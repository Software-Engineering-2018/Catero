
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
						<a href="AdminHomePage.jsp"><img src="images/logo.png" alt=""/></a>
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
     <div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="col-md-6">
				 <div class="login-page">
					<h4 class="title">Add Product</h4>
					<%String m=(String)request.getAttribute("msg");
                if(m!=null){
                %>
                <script>alert("<%=m%>")</script>
                
                <%} %>
					
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h4 class="title">Product Details</h4>
					<div id="loginbox" class="loginbox">
						<form action="AddProduct" method="post" name="login" id="login-form" enctype="multipart/form-data">
						  <fieldset class="input">
						    <p id="login-form-username">
						      <label for="modlgn_username">Product Name</label>
						      <input id="pn" type="text" name="pn" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="pass">
						      <label for="modlgn_passwd">Category</label>
						      <input id="cat" type="text" name="cat" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="product-price">
						      <label for="modlgn_passwd">Product Price</label>
						      <input id="pp" type="Integer" name="pp" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="Weight">
						      <label for="modlgn_passwd">Weight</label>
						      <input id="wei" type="Integer" name="wei" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="Description">
						      <label for="modlgn_passwd">Description</label>
						      <input id="des" type="text" name="des" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="Image">
						      <label for="modlgn_passwd">Upload Image</label>
						      <input id="ima" type="file" name="ima" accept=".jpg" >
						    </p>
						   
						    <div class="remember">
							    <input type="submit" name="Submit" class="button" value="Submit"><div class="clear"></div>
							 </div>
						  </fieldset>
						 </form>
					</div>
			      </div>
				 <div class="clear"></div>
			  </div>
			</div>
		  </div>
	  </div>
	  
</body>	
</html>