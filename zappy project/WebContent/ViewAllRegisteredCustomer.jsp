
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
								<li><a href="viewallregisteredcustomer">View All Registered Customer</a></li>
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
			
				<% String s=(String)session.getAttribute("user");
					if(s==null)
						response.sendRedirect("index.jsp");
						
				%>
				<% response.addHeader("pragma", "no-cache");
						response.addHeader("cache-control", "no-store");
						response.addHeader("expire", "0");
					%>
					<%String m=(String)request.getAttribute("msg");
                if(m!=null){
                %>
                <script>alert("<%=m%>")</script>
                
                <%} %>
				<div class="col-md-12">
	           		<h4 class="title">View All Registered Customer</h4>
					<table border="1.5">
						
					<%@page import="java.util.ArrayList,bean.customerbean" %>
					
	<center>				

<tr><th>First Name</th><th>Last Name</th><th>Gender</th><th>EmailId</th><th>Mobile NO.</th></tr>
<%
ArrayList<customerbean> list=(ArrayList<customerbean>)request.getAttribute("data");
    for(customerbean e:list)
    {  	
    %>
    
    <tr>	
         	
    	<td><center><%=e.getFirstname()%></center></td>
    	<td><center><%=e.getLastname()%></center></td>
    	<td><center><%=e.getGender()%></center></td>
    	<td><center><%=e.getEmailid()%></center></td>
    	<td><center><%=e.getMobileno()%></center></td>
    	
    	
    </tr>
     	
   <% 	
    }
%>
</center>
</table>
			      
				 <div class="clear"></div>
			  </div>
			</div>
		  </div>
	  </div>
	 
</body>	
</html>