
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="903444980664-sd5hukg6e46pq4osjb9j5b6kkc2g6ed5.apps.googleusercontent.com">

     <script type="text/javascript">
			function onSignIn(googleUser) {
			
				  var profile = googleUser.getBasicProfile();
				  var imagurl=profile.getImageUrl();
				  var name=profile.getName();
				  var email=profile.getEmail();
				     document.getElementById("myImg").src = imagurl;
				  document.getElementById("name").innerHTML = name;

				  document.getElementById("myP").style.visibility = "hidden";
				  
 
				  document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=CustomerGmailLogin?email='+email+'&name='+name+'/>Continue with Google login</a></p>'			   
			 }
</script>
<script>
function myLogout() {
	gapi.auth2.getAuthInstance().disconnect();
    location.reload();
}
</script>
 </head>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	<li><a href="ShowProduct">Store</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="cart.jsp">Cart</a></li>
								<li><a href="login.jsp">Login/signup</a></li>
				      			<li><a href="admin.jsp">Admin</a></li>						
								<div class="clear"></div>
							</ul>
							<script type="text/javascript" src="js/responsive-nav.js"></script>
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
					<h4 class="title">New Customers</h4>
					
					<div class="button1">
					   <a href="register.jsp"><input type="submit" name="Submit" value="Create an Account"></a>
					 </div>
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h4 class="title">Registered Customers</h4>
					<div id="loginbox" class="loginbox">
						<form action="CustomerLogin" method="post" >
						  <fieldset class="input">
						    <p id="login-form-username">
						      <label for="modlgn_username">Email</label>
						      <input id="EmailId" type="email" name="EmailId" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="login-form-password">
						      <label for="modlgn_passwd">Password</label>
						      <input id="Password" type="password" name="Password" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <div class="remember">
							    
							    <input type="submit" name="Submit" class="button" value="Login"><div class="clear"></div>
							 </div>
							 <h4 class="title">Login With</h4>
							 		<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>


									<img id="myImg"><br>
									<p id="name"></p> 
  
									<div id="status">

									</div>
									<button onclick="myLogout()">Sign Out</button>
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