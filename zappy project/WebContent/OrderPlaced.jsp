
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/dropdown.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

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
								<li><a href="cart.jsp">Cart</a></li>
																
								<% 
if(Name !=null){
	%>
	<button onclick="myFunction()">Hii <% out.print(Name); %></button>
  
    
    <a href="InvalidateJava"  onclick="myLogout()">Logout</a>
  </div> 
	<%
}else{   %>

								<li><a href="login.jsp">Login</a></li>
				      			<li><a href="admin.jsp">Admin</a></li>
<% 
}
%>									
													
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
	  <%@page import="java.util.ArrayList,bean.ordertable"%>
     <div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<cnter><p class="m_8">Your Order Has been Placed SuccessFully </p></cnter>
					 <%
	 ArrayList<ordertable> al= (ArrayList<ordertable>)request.getAttribute("data");
	 for(ordertable o: al){
	 %> 
  
					<div class="address">
				                <br><center>
  
   <b>Amount               :              <%=o.getAmount()%></b><br>
   

 
				   </div>
				</div>
			</div>
			 <%} %>
			
	     </div>
	   </div>
	  </div>
	 
</body>	
</html>