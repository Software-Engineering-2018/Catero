<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>

</body>
</html>

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
String user=(String)session.getAttribute("user");

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
								<li><a href="cart.jsp">Cart</a></li>
			
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
table {
    border-collapse: collapse;
    width:100%;
}

table, td, th {
    border: 1px solid black;
}
</style>
<%@page import="java.util.ArrayList,bean.addproductbean" %>
<script>
	  function call(i) {
  		var qua = document.getElementById("quantity"+i).value;
  		var pp = document.getElementById("productprice"+i).value;
  		var gtt = document.getElementById("gtotal").value
  		var abc = qua * pp;
  		var gtotal = +abc + +gtt;
  		document.getElementById("total"+i).innerHTML = abc+" Rs.";
  		
  		document.getElementById("gtotal").innerHTML = gtotal+"Rs.";
  		}
	  </script>
<body>
<table border ="1">
<form>
  <tr>
   	<th><center>Image</center></th>
    <th><center>Product Name</center></th>
    <th><center>Price</center></th>
    <th><center>Quantity</center></th>
    <th><center>Remove</center></th>
    <th><center>Total</center></th>
  </tr><%!double total = 0;
	double gtotal=0; %>
  <%	ArrayList<addproductbean> list=(ArrayList<addproductbean>)request.getAttribute("data");
	if(list==null)
	{
		
	}
	else
	{	
		int x=1;
	 for(addproductbean e:list)
	    { 
		 
	%>
	
  		<% 
	  double price= e.getProductprice();
		int quan = e.getQuantity();
		 total = price * quan;
		gtotal=price * quan;
	
		%>
  <tr>
    <td><center><image src="imagesap/<%=e.getImage()%>" height="80" width="150"/></center></td>
    <td><center><h4 style="font-weight: bold"><%=e.getProductname()%></h4></center></td>
    <td><center><input  id="productprice<%=x%>" value="<%=e.getProductprice()%>" readonly />Rs.<br/></center></td>
    <td><center><input type="number" name="quantity" id="quantity<%=x%>" value="<%=e.getQuantity()%>" min="1" onchange="call(<%=x%>)"  /></center></td>
    <td><center><a href="RemoveFromCart?pid=<%=e.getPid()%>"   onClick="return confirm('Really you want to Remove Item')"">Remove </a></center></td>
    <td id="total<%=x%>" ><center><br/><%=total%> Rs.</center></br></td>
  </tr>
  <%
  x++;
		} 
	}	
%>
	</form>
</table>		
						<center>
							<form action="PlaceOrder?amount=<%=gtotal%>" method="post">
								</br>
							<center> Grand Total <input type="text" id="gtotal" name="gtotal" value="<%=gtotal %> " readonly/>Rs.</center> </br></br></br> 
								<input type="submit" class="btn btn-primary" value="Proceed To Payment" name="submit"/>									
							</form>
						</center>		
				<%
					gtotal=0;
				%>
				</a></div>
			</div>
		 </div>
	   </div>
	  </div>
	
	</form>
</body>	
</html>