
<!DOCTYPE HTML>
<html>
<head>
<title>Online Food Order</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


     <script>
function myLogout() {
	gapi.auth2.getAuthInstance().disconnect();
    location.reload();
    alert();
}
</script>
</head>
<% 
HttpSession session1 =request.getSession();
String Name=(String)session.getAttribute("FirstName");
%>

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
								<li><a href="ShowCart">Cart</a></li>
								
								<% 
if(Name !=null){
	%>
	 <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Welcome <% out.print(Name); %></button>
  <div id="myDropdown" class="dropdown-content">
    
    <a href="InvalidateJava"  onclick="myLogout()">Logout</a>
  </div>
</div> 
	<%
}else{   %>

								<li><a href="login.jsp">Login/Signup</a></li>
				      			<li><a href="admin.jsp">Admin</a></li>
<% 
}
%>					    
                        <img src="images/food.jpg">
                             	
		<hr>
		<div class="main">
      <div class="shop_top">
		<div class="container">  
<div class="col-md-9">
<font color="white"><h3>What is Zappy?</h3>
<p class="para_bold" >Zappy is your kitchen convenience partner.</p>
<p>Zappy is an endeavor to bring you the convenience of prepare food that tastes as good as home made.
</br> It is also the reason why 
you feel happy whenever you open a Zappy pack!</font></p></div>

</body>	
</html>