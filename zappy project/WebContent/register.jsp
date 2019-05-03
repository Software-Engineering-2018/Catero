
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
 
 <script>       
        
        $(document).ready(function(){
        	
        	$("#EmailId").change(function(){
        	    
        		var email=$("#EmailId").val();
        		//alert(email);
        	var	data="id="+email;
        		$.ajax({
        			url:'CheckEmail',
        			data:data,
        			type:'post',
        			success:function(response){
        	//	alert(response.trim()==="<font color=red>Already Exist</font>");
        			if(response.trim()==="<font color=red>Already Exist</font>")
        				$("#EmailId").val("");
        				$("#msg").html(response);
        			}
        		 });
        		
        	});
        });
        
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
								<li><a href="login.jsp">Login</a></li>
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
						<form action="CustomerRegistration" method="post" > 
								<div class="register-top-grid">
										<h3>PERSONAL INFORMATION</h3>
										<div>
											<span>First Name<label>*</label></span>
											<input type="text" name="FirstName" required/> 
										</div>
										<div>
											<span>Last Name<label>*</label></span>
											<input type="text" name=LastName required/> 
										</div>
										<div>
											<span>Gender<label>*</label></span>
											<input type=radio name=Gender value="Male" >Male <input type=radio name=Gender value="Female" >Female </br> 
										</div>
										<div >
										
											<span>Email Address<label>*</label></span><p id="msg"></p>
											<input type="email" name="EmailId" id="EmailId" required/>  
										</div>
										
										<div>
											<span>Mobile No.<label>*</label></span>
											<input type="text" name="MobileNo"   maxLength="10"   required/> 
										</div>
										<div>
											<span>Password<label>*</label></span>
											<input type="password" name="Password" required/>
										</div>
										
								<div class="clear"> </div>
								<input type="submit" value="submit">
						</form>
					</div>
		   </div>
	  </div>
	  
</body>	
</html>