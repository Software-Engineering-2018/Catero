<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
</head>
<body>

</body>


<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/dropdown.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
						    	<ul class="nav" id="nav">
						    	<li><a href="ShowProduct">Store</a></li>
						    	
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="ShowCart">Cart</a></li>
								
								<% 
								if(Name !=null){
									%>
	<button onclick="myFunction()">Hii <% out.print(Name); %></button>
  
    
    <a href="InvalidateJava"  onclick="myLogout()">Logout</a>
  </div>
									<%
								}else{   %>

																<li><a href="login.jsp">Login/Signup</a></li>
												      			<li><a href="admin.jsp">Admin</a></li>
								<% 
								}
								%>			
															
								<div class="clear"></div>
							</ul>
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
			<div class="row shop_box-top">
			<style>
table,  td {
    border: 1px solid black;
    border-collapse: collapse;
}
 td {
    padding: 20px;
}

</style>
				
	  <%@page import="java.util.ArrayList,bean.addproductbean" %>
	<%	ArrayList<addproductbean> list=(ArrayList<addproductbean>)request.getAttribute("data");
	if(list.isEmpty())
	{response.sendRedirect("index.jsp");}
	else
	{	int a=0;
		%><table  style="width:100%"><%
    for(addproductbean e:list)
    {  	
    
			if(a%4==0)
			{
			out.println("<tr>");
		    %>
			<td>
			<form action="AddToCart" method="post">
						
				<center><h4 style="font-weight: bold"><%=e.getProductname()%></h4><br/></center>
				<center>Price  = <%=e.getProductprice()%> Rs.<br/></center>
				<center>Weight = <%=e.getWeight()%> gms.<br/></center>
				
				<input type="hidden"  value="<%=e.getProductprice()%>" name="price"/>
				<center><image src="imagesap/<%=e.getImage()%>" height="150" width="150"/><br/></center>
				<center><input type="hidden"  value="<%=e.getPid()%>" name="pid"/><br/></center>
				<!-- <center><input type="number" min="1" max="10" value="1" name="productquantity"/><br/></center> -->
				<center><input type="number" name="quantity" value="1" min="1" required/><br/></center><br/>
				<center><input type="submit" class="btn btn-primary" value="Add to cart" name="submit"  /><br/></center>
				
			</form>
			
						<center>
							<form action="ViewProductDescription" method="post">
								<input type="hidden" value="<%=e.getPid()%>" name="pid"/><br/>
								<input type="submit" class="btn btn-primary" value="View Details" name="submit"/>									
							</form>
						</center>
		</td>
	<%
			}else{
				%>
				<td>
					<form action="AddToCart" method="post">
								
						<center><h4 style="font-weight: bold"><%=e.getProductname()%></h4><br/></center>
						<center>Price  = <%=e.getProductprice()%> Rs.<br/></center>
						<center>Weight =<%=e.getWeight()%> gms.<br/></center>
						
						<input type="hidden"  value="<%=e.getProductprice()%>" name="price"/>
						<center><image src="imagesap/<%=e.getImage()%>" height="150" width="150"/><br/></center>
						<center><input type="hidden" id="pid" value="<%=e.getPid()%>" name="pid"/><br/></center>
						<center><input type="number" name="quantity" value="1" min="1" required/><br/></center><br/>
						<center><input type="submit" class="btn btn-primary" value="Add to cart" name="submit" /><br/></center>
					</form>
					<center>
							<form action="ViewProductDescription" method="post">
								<center><input type="hidden" value="<%=e.getPid()%>" name="pid"/><br/></center>
								<center><input type="submit" class="btn btn-primary" value="View Details" name="submit"/></center>								
							</form>
					</center>
				</td>
				
				<%
			if(a%4==3)
				out.println("</tr>");
			    	
		    }		
			a++;

		}
							
    
%>
		</table>				
	<%
}
	
%>
</center>
	
				</a></div>
			</div>
		 </div>
	   </div>
	  </div>
	
	 
</body>	
</html>